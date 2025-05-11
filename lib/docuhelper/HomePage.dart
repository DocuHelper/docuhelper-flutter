import 'package:docuhelper_flutter/docuhelper/ChatLog.dart';
import 'package:docuhelper_flutter/docuhelper/ChatSendArea.dart';
import 'package:docuhelper_flutter/docuhelper/DocuhelperAppState.dart';
import 'package:docuhelper_flutter/docuhelper/DocuhelperPage.dart';
import 'package:docuhelper_flutter/docuhelper/oauth/LoginPage.dart';
import 'package:docuhelper_flutter/docuhelper/oauth/Oauth.dart';
import 'package:docuhelper_flutter/main.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // DocuhelperPage currentPage = DocuhelperPage.HOME;

  @override
  Widget build(BuildContext context) {
    var appState = context.watch<DocuhelperAppState>();

    return Scaffold(
      appBar: AppBar(
        title: Text("Docuhelper"),
        leading: Icon(Icons.settings),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: ChatLog(),
      ),
      bottomNavigationBar: ChatSendArea(),
      // bottomNavigationBar: ElevatedButton(
      //     onPressed: () {
      //       setState(() {
      //         appState.changePage(DocuhelperPage.LOGIN);
      //       });
      //     },
      //     child: Icon(Icons.add)),
    );
  }
}
