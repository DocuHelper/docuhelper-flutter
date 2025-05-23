import 'dart:convert';

import 'package:docuhelper_flutter/docuhelper/DocuhelperPage.dart';
import 'package:docuhelper_flutter/docuhelper/dto/Document.dart';
import 'package:docuhelper_flutter/docuhelper/graphql/GraphqlTestQuery.dart';
import 'package:docuhelper_flutter/docuhelper/oauth/Oauth.dart';
import 'package:docuhelper_flutter/docuhelper/queries/chat.graphql.dart';
import 'package:docuhelper_flutter/docuhelper/queries/document.graphql.dart';
import 'package:docuhelper_flutter/docuhelper/queries/schema.graphql.dart';
import 'package:docuhelper_flutter/docuhelper/queries/sub.graphql.dart';
import 'package:docuhelper_flutter/docuhelper/queries/test.graphql.dart';
import 'package:docuhelper_flutter/main.dart';
import 'package:flutter/widgets.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:docuhelper_flutter/docuhelper/queries/user.graphql.dart';

// 인증 상태를 나타내는 enum 추가
enum AuthStatus { loading, authenticated, unauthenticated }

class DocuhelperAppState extends ChangeNotifier {
  var client = GraphQLProvider.of(navigatorKey.currentContext!).value;
  DocuhelperPage currentPage = DocuhelperPage.HOME;
  AuthStatus authStatus = AuthStatus.loading;
  List<Query$FindDocument$findDocument> userDocuments = [];
  Query$FindDocument$findDocument? selectedDocument = null;
  List<Query$FindChat$findChat> userChatHistory = [];

  int subTestValue = 0;

  DocuhelperAppState() {
    checkAuth();
    loadDocument();
    loadChatHistory();
    subTest();
    subUserNotice();
  }

  void subUserNotice() async {
    final response =
        client.subscribe$SubNotice(Options$Subscription$SubNotice());
    response.listen(
      (event) {
        final parseData = event.data?["subNotice"];

        if (parseData == null) return;
        final parseEvent = jsonDecode(parseData.toString());
        parseEvent["__typename"] = "";

        print(parseEvent);

        switch (parseEvent["noticeType"]) {
          case "Chat":
            final chat = Query$FindChat$findChat.fromJson(parseEvent);
            final index = userChatHistory.indexWhere(
              (element) => chat.uuid == element.uuid,
            );
            if (index == -1) {
              userChatHistory.add(chat);
            } else {
              userChatHistory[index] = chat;
            }
            break;
          case 'ChatAnswerChunk':
            final chatUid = parseEvent["chat"];
            final chunk = parseEvent["chunk"];

            final index = userChatHistory.indexWhere(
              (element) => chatUid == element.uuid,
            );

            if (index != -1) {
              final originalChat = userChatHistory[index];
              String mergeResult = '${originalChat.result ?? ""} + $chunk';

              userChatHistory[index] = Query$FindChat$findChat(
                  document: originalChat.document,
                  state: originalChat.state,
                  userAsk: originalChat.userAsk,
                  result: mergeResult,
                  uuid: originalChat.uuid);
            }

            break;
          case 'Document':
            final document =
                Query$FindDocument$findDocument.fromJson(parseEvent);

            final documentUid = document.uuid;

            final index = userDocuments.indexWhere(
              (element) => element.uuid == documentUid,
            );

            if (index == -1) {
              userDocuments.add(document);
            } else {
              userDocuments[index] = document;
            }
            break;
          case 'DocumentDelete':
            final documentUid = parseEvent["uuid"];

            final index = userDocuments.indexWhere(
              (element) => element.uuid == documentUid,
            );

            userDocuments.removeAt(index);
            break;
        }
        notifyListeners();
      },
    );
  }

  void subTest() async {
    final response = client.subscribe(Options$Subscription$TestSubscription());
    response.listen(
      (event) {
        subTestValue = event.parsedData?.counter.value ?? -1;

        notifyListeners();
      },
    );
  }

  void selectDocument(Query$FindDocument$findDocument document) {
    this.selectedDocument = document;
    notifyListeners();
  }

  void loadChatHistory() async {
    final response = await client.query(
      Options$Query$FindChat(
        variables: Variables$Query$FindChat(
          query: Input$ChatQueryRequestInput(),
        ),
      ),
    );

    final chatHistory = response.parsedData?.findChat ?? [];

    userChatHistory = chatHistory;

    notifyListeners();
  }

  void loadDocument() async {
    final response = await client.query(
      Options$Query$FindDocument(
        variables: Variables$Query$FindDocument(
          query: Input$DocumentQueryRequestInput(),
        ),
      ),
    );
    userDocuments = response.parsedData?.findDocument ?? [];

    notifyListeners();
  }

  void changePage(DocuhelperPage page) {
    currentPage = page;
  }

  // notifyListeners();

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
