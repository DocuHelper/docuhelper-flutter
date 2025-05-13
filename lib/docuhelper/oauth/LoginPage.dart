import 'package:docuhelper_flutter/docuhelper/DocuhelperAppState.dart';
import 'package:docuhelper_flutter/docuhelper/DocuhelperPage.dart';
import 'package:docuhelper_flutter/docuhelper/oauth/Oauth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _isLoggedIn = false;

  @override
  Widget build(BuildContext context) {
    var appState = context.watch<DocuhelperAppState>();

    return Scaffold(
      appBar: AppBar(
        title: const Text('로그인 페이지'),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ElevatedButton(
              onPressed: () async {
                try {
                  await signInWithGoogle();
                  await appState.checkAuth();

                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('로그인 성공')),
                  );
                } catch (_) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('로그인 실패')),
                  );
                }
              },
              child: const Text('Google 로그인'),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () async {
                await appState.logout();
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('로그아웃 완료')),
                );
              },
              child: const Text('로그아웃'),
            ),
          ],
        ),
      ),
    );
  }
}
