import 'package:docuhelper_flutter/docuhelper/DocuhelperAppState.dart';
import 'package:docuhelper_flutter/docuhelper/DocuhelperPage.dart';
import 'package:docuhelper_flutter/docuhelper/HomePage.dart';
import 'package:docuhelper_flutter/docuhelper/oauth/LoginPage.dart';
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

    if (appState.authStatus == AuthStatus.loading) {
      return const Center(child: CircularProgressIndicator());
    }

    switch (appState.currentPage) {
      case DocuhelperPage.HOME:
        return HomePage();
      case DocuhelperPage.LOGIN:
        return LoginPage();
    }
  }
}
