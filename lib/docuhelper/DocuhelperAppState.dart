import 'package:docuhelper_flutter/docuhelper/DocuhelperPage.dart';
import 'package:docuhelper_flutter/docuhelper/oauth/Oauth.dart';
import 'package:flutter/widgets.dart';

// 인증 상태를 나타내는 enum 추가
enum AuthStatus { loading, authenticated, unauthenticated }

class DocuhelperAppState extends ChangeNotifier {
  DocuhelperPage currentPage = DocuhelperPage.HOME;
  AuthStatus authStatus = AuthStatus.loading;

  DocuhelperAppState() {
    checkAuth();
  }

  void changePage(DocuhelperPage page) {
    currentPage = page;
    notifyListeners();
  }

  Future<void> checkAuth() async {
    authStatus = AuthStatus.loading;
    notifyListeners();

    final jwt = await getJwt();
    if (jwt == null) {
      authStatus = AuthStatus.unauthenticated;
      currentPage = DocuhelperPage.LOGIN;
    } else {
      final valid = await verifyDocuhelperToken(jwt);
      if (valid) {
        authStatus = AuthStatus.authenticated;
        currentPage = DocuhelperPage.HOME;
      } else {
        authStatus = AuthStatus.unauthenticated;
        currentPage = DocuhelperPage.LOGIN;
      }
    }
    notifyListeners();
  }

  Future<void> logout() async {
    await signOut();
    await checkAuth();
  }
}
