import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:provider/provider.dart';
import 'package:docuhelper_flutter/docuhelper/DocuhelperAppState.dart';
import 'package:docuhelper_flutter/docuhelper/MainScene.dart';

void main() async {
  // 1) Flutter 바인딩 초기화
  // WidgetsFlutterBinding.ensureInitialized();

  // 2) Hive 초기화 (캐시 저장용)
  await initHiveForFlutter();

  // 3) GraphQL 링크 설정 (예: HTTP 엔드포인트)
  final httpLink = HttpLink('http://192.168.0.77:8080/graphql');

  // 4) GraphQLClient 생성 (캐시는 HiveStore 사용)
  final client = GraphQLClient(
    link: httpLink,
    cache: GraphQLCache(store: HiveStore()),
  );

  // 5) 앱 실행 — GraphQLProvider로 감싸기
  runApp(
    GraphQLProvider(
      client: ValueNotifier(client),
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => DocuhelperAppState(),
      child: MaterialApp(
        title: 'Docuhelper',
        theme: ThemeData(
          useMaterial3: true,
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        ),
        home: SafeArea(child: MainScene()),
      ),
    );
  }
}