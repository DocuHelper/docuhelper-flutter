import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

String loginUser = """
query LoginState {
    loginState {
        email
        role
        uuid
    }
}
""";

class Graphqltest extends StatelessWidget {
  const Graphqltest({super.key});

  @override
  Widget build(BuildContext context) {
    return Query(
      options: QueryOptions(document: gql(loginUser)),
      builder: (result, {fetchMore, refetch}) {
        print(result.data);
        if(!result.isLoading) {
          return Center(child: CircularProgressIndicator(),);
        }
        return Text("data");
      },
    );
  }
}
