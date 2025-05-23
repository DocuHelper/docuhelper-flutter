import 'package:docuhelper_flutter/docuhelper/DocuhelperAppState.dart';
import 'package:docuhelper_flutter/docuhelper/oauth/Oauth.dart';
import 'package:docuhelper_flutter/docuhelper/queries/sub.graphql.dart';
import 'package:docuhelper_flutter/docuhelper/queries/test.graphql.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:provider/provider.dart';

class Graphqltest extends HookWidget {
  const Graphqltest({super.key});

  @override
  Widget build(BuildContext context) {
    final state = context.watch<DocuhelperAppState>();
    print("Graphqltest");
    return Text(state.subTestValue.toString());
  }

// @override
// Widget build(BuildContext context) {
//   return Query(
//     options: QueryOptions(document: gql(loginUser)),
//     builder: (result, {fetchMore, refetch}) {
//       print(result.data);
//       if(result.isLoading) {
//         return Center(child: CircularProgressIndicator(),);
//       }
//       return Text("data");
//     },
//   );
// }
}
