import 'package:docuhelper_flutter/docuhelper/oauth/Oauth.dart';
import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:provider/provider.dart';
import 'package:docuhelper_flutter/docuhelper/DocuhelperAppState.dart';
import 'package:docuhelper_flutter/docuhelper/MainScene.dart';
import 'package:web_socket_channel/io.dart';
import 'package:stream_channel/stream_channel.dart';

final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

final DOCUHELPER_API_HOST = '192.168.0.77:8080';
final DOCUHELPER_AUTH_HOST = '192.168.0.77:8081';

final DOCUHELPER_API_ENDPOINT = 'http://$DOCUHELPER_API_HOST/graphql';
final DOCUHELPER_API_SUBSCRIPTION_ENDPOINT = 'ws://$DOCUHELPER_API_HOST/subscriptions';

final DOCUHELPER_AUTH_ENDPOINT = 'http://$DOCUHELPER_AUTH_HOST';

void main() async {
  // 1) Flutter 바인딩 초기화
  // WidgetsFlutterBinding.ensureInitialized();

  // 2) Hive 초기화 (캐시 저장용)
  await initHiveForFlutter();

  // 3) GraphQL 링크 설정 (예: HTTP 엔드포인트)
  final httpLink = HttpLink(DOCUHELPER_API_ENDPOINT);

  final docuhelperApiToken = await getJwt();

  final AuthLink authLink = AuthLink(
    getToken: () async => 'Bearer $docuhelperApiToken',
  );

  final wsLink = WebSocketLink(
    DOCUHELPER_API_SUBSCRIPTION_ENDPOINT,
    subProtocol: GraphQLProtocol.graphqlTransportWs,
    config: SocketClientConfig(
      headers: {'authorization' : 'Bearer $docuhelperApiToken'},
      autoReconnect: true,
      // inactivityTimeout: Duration(minutes: 5),
    ),
  );

  final link = Link.split(
    (request) => request.isSubscription, // isSubscription인 경우 WS 사용
    wsLink,
    // httpLink,
    authLink.concat(httpLink),
  );

  // 4) GraphQLClient 생성 (캐시는 HiveStore 사용)
  final client = GraphQLClient(
    link: link,
    cache: GraphQLCache(store: null),
    alwaysRebroadcast: true,
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
        navigatorKey: navigatorKey,
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
