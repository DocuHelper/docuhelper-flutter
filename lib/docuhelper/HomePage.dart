import 'package:docuhelper_flutter/docuhelper/ChatLog.dart';
import 'package:docuhelper_flutter/docuhelper/ChatSendArea.dart';
import 'package:docuhelper_flutter/docuhelper/DocuhelperAppState.dart';
import 'package:docuhelper_flutter/docuhelper/graphql/GraphqlTestQuery.dart';
import 'package:docuhelper_flutter/docuhelper/oauth/Oauth.dart';
import 'package:docuhelper_flutter/docuhelper/queries/document.graphql.dart';
import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    var appState = context.watch<DocuhelperAppState>();
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: DropdownButton<Query$FindDocument$findDocument>(
            value: appState.selectedDocument,
            hint: const Text(
              'Docuhelper',
              style: TextStyle(color: Colors.black, fontSize: 18),
            ),
            icon: const Icon(Icons.arrow_drop_down, color: Colors.black),
            underline: SizedBox(),
            dropdownColor: Colors.white,
            style: const TextStyle(color: Colors.white, fontSize: 18),
            onChanged: (value) {
              if (value != null) {
                appState.selectDocument(value);
              }
            },
            items: appState.userDocuments.map((doc) {
              return DropdownMenuItem<Query$FindDocument$findDocument>(
                value: doc,
                child: Text(
                  doc.name,
                  style: const TextStyle(color: Colors.black),
                ),
              );
            }).toList(),
          ),
        ),
        leading: Icon(Icons.settings),
      ),
      // body: Graphqltest(),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: ChatLog(),
      ),
      bottomNavigationBar: ChatSendArea(),
    );
  }
}
