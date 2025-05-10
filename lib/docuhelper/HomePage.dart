import 'package:docuhelper_flutter/docuhelper/ChatLog.dart';
import 'package:docuhelper_flutter/docuhelper/ChatSendArea.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
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
    );
  }
}
