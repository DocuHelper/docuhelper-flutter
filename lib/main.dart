import 'package:docuhelper_flutter/FirstApp/FirstAppState.dart';
import 'package:docuhelper_flutter/FirstApp/MyHomePage.dart';
import 'package:docuhelper_flutter/docuhelper/DocuhelperAppState.dart';
import 'package:docuhelper_flutter/docuhelper/HomePage.dart';
import 'package:docuhelper_flutter/docuhelper/MainScene.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => DocuhelperAppState(),
      child: MaterialApp(
        title: 'Namer App',
        theme: ThemeData(
          useMaterial3: true,
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        ),
        home: SafeArea(child: MainScene()),
      ),
    );
  }
}



