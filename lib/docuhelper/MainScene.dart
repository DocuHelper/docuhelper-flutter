import 'package:docuhelper_flutter/docuhelper/DocuhelperAppState.dart';
import 'package:docuhelper_flutter/docuhelper/DocuhelperPage.dart';
import 'package:docuhelper_flutter/docuhelper/HomePage.dart';
import 'package:docuhelper_flutter/docuhelper/oauth/LoginPage.dart';
import 'package:docuhelper_flutter/docuhelper/oauth/Oauth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MainScene extends StatefulWidget {
  const MainScene({super.key});

  @override
  State<MainScene> createState() => _MainScene();
}

class _MainScene extends State<MainScene> {
  @override
  Widget build(BuildContext context) {
    var appState = context.watch<DocuhelperAppState>();

    getJwt().then((value) {
      if (value == null) {
        appState.changePage(DocuhelperPage.LOGIN);
      } else {
        verifyDocuhelperToken(value).then((value) {
          if (!value) {
            appState.changePage(DocuhelperPage.LOGIN);
          }
        });
      }
    });

    Widget page;

    switch (appState.currentPage) {
      case DocuhelperPage.HOME:
        page = HomePage();
        break;
      case DocuhelperPage.LOGIN:
        page = LoginPage();
        break;
    }

    return page;
  }
}
