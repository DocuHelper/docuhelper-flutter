import 'dart:async';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;
import 'schema.graphql.dart';

class Variables$Mutation$SendChat {
  factory Variables$Mutation$SendChat(
          {required Input$ChatSendRequestInput query}) =>
      Variables$Mutation$SendChat._({
        r'query': query,
      });

  Variables$Mutation$SendChat._(this._$data);

  factory Variables$Mutation$SendChat.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$query = data['query'];
    result$data['query'] =
        Input$ChatSendRequestInput.fromJson((l$query as Map<String, dynamic>));
    return Variables$Mutation$SendChat._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$ChatSendRequestInput get query =>
      (_$data['query'] as Input$ChatSendRequestInput);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$query = query;
    result$data['query'] = l$query.toJson();
    return result$data;
  }

  CopyWith$Variables$Mutation$SendChat<Variables$Mutation$SendChat>
      get copyWith => CopyWith$Variables$Mutation$SendChat(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$SendChat ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$query = query;
    final lOther$query = other.query;
    if (l$query != lOther$query) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$query = query;
    return Object.hashAll([l$query]);
  }
}

abstract class CopyWith$Variables$Mutation$SendChat<TRes> {
  factory CopyWith$Variables$Mutation$SendChat(
    Variables$Mutation$SendChat instance,
    TRes Function(Variables$Mutation$SendChat) then,
  ) = _CopyWithImpl$Variables$Mutation$SendChat;

  factory CopyWith$Variables$Mutation$SendChat.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$SendChat;

  TRes call({Input$ChatSendRequestInput? query});
}

class _CopyWithImpl$Variables$Mutation$SendChat<TRes>
    implements CopyWith$Variables$Mutation$SendChat<TRes> {
  _CopyWithImpl$Variables$Mutation$SendChat(
    this._instance,
    this._then,
  );

  final Variables$Mutation$SendChat _instance;

  final TRes Function(Variables$Mutation$SendChat) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? query = _undefined}) =>
      _then(Variables$Mutation$SendChat._({
        ..._instance._$data,
        if (query != _undefined && query != null)
          'query': (query as Input$ChatSendRequestInput),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$SendChat<TRes>
    implements CopyWith$Variables$Mutation$SendChat<TRes> {
  _CopyWithStubImpl$Variables$Mutation$SendChat(this._res);

  TRes _res;

  call({Input$ChatSendRequestInput? query}) => _res;
}

class Mutation$SendChat {
  Mutation$SendChat({
    required this.send,
    this.$__typename = 'Mutation',
  });

  factory Mutation$SendChat.fromJson(Map<String, dynamic> json) {
    final l$send = json['send'];
    final l$$__typename = json['__typename'];
    return Mutation$SendChat(
      send: Mutation$SendChat$send.fromJson((l$send as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$SendChat$send send;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$send = send;
    _resultData['send'] = l$send.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$send = send;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$send,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$SendChat || runtimeType != other.runtimeType) {
      return false;
    }
    final l$send = send;
    final lOther$send = other.send;
    if (l$send != lOther$send) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$SendChat on Mutation$SendChat {
  CopyWith$Mutation$SendChat<Mutation$SendChat> get copyWith =>
      CopyWith$Mutation$SendChat(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$SendChat<TRes> {
  factory CopyWith$Mutation$SendChat(
    Mutation$SendChat instance,
    TRes Function(Mutation$SendChat) then,
  ) = _CopyWithImpl$Mutation$SendChat;

  factory CopyWith$Mutation$SendChat.stub(TRes res) =
      _CopyWithStubImpl$Mutation$SendChat;

  TRes call({
    Mutation$SendChat$send? send,
    String? $__typename,
  });
  CopyWith$Mutation$SendChat$send<TRes> get send;
}

class _CopyWithImpl$Mutation$SendChat<TRes>
    implements CopyWith$Mutation$SendChat<TRes> {
  _CopyWithImpl$Mutation$SendChat(
    this._instance,
    this._then,
  );

  final Mutation$SendChat _instance;

  final TRes Function(Mutation$SendChat) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? send = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$SendChat(
        send: send == _undefined || send == null
            ? _instance.send
            : (send as Mutation$SendChat$send),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Mutation$SendChat$send<TRes> get send {
    final local$send = _instance.send;
    return CopyWith$Mutation$SendChat$send(local$send, (e) => call(send: e));
  }
}

class _CopyWithStubImpl$Mutation$SendChat<TRes>
    implements CopyWith$Mutation$SendChat<TRes> {
  _CopyWithStubImpl$Mutation$SendChat(this._res);

  TRes _res;

  call({
    Mutation$SendChat$send? send,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Mutation$SendChat$send<TRes> get send =>
      CopyWith$Mutation$SendChat$send.stub(_res);
}

const documentNodeMutationSendChat = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'SendChat'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'query')),
        type: NamedTypeNode(
          name: NameNode(value: 'ChatSendRequestInput'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'send'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'request'),
            value: VariableNode(name: NameNode(value: 'query')),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'uuid'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'state'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'document'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'userAsk'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'result'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: '__typename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
        ]),
      ),
      FieldNode(
        name: NameNode(value: '__typename'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
    ]),
  ),
]);
Mutation$SendChat _parserFn$Mutation$SendChat(Map<String, dynamic> data) =>
    Mutation$SendChat.fromJson(data);
typedef OnMutationCompleted$Mutation$SendChat = FutureOr<void> Function(
  Map<String, dynamic>?,
  Mutation$SendChat?,
);

class Options$Mutation$SendChat
    extends graphql.MutationOptions<Mutation$SendChat> {
  Options$Mutation$SendChat({
    String? operationName,
    required Variables$Mutation$SendChat variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$SendChat? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$SendChat? onCompleted,
    graphql.OnMutationUpdate<Mutation$SendChat>? update,
    graphql.OnError? onError,
  })  : onCompletedWithParsed = onCompleted,
        super(
          variables: variables.toJson(),
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          onCompleted: onCompleted == null
              ? null
              : (data) => onCompleted(
                    data,
                    data == null ? null : _parserFn$Mutation$SendChat(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationSendChat,
          parserFn: _parserFn$Mutation$SendChat,
        );

  final OnMutationCompleted$Mutation$SendChat? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$SendChat
    extends graphql.WatchQueryOptions<Mutation$SendChat> {
  WatchOptions$Mutation$SendChat({
    String? operationName,
    required Variables$Mutation$SendChat variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$SendChat? typedOptimisticResult,
    graphql.Context? context,
    Duration? pollInterval,
    bool? eagerlyFetchResults,
    bool carryForwardDataOnException = true,
    bool fetchResults = false,
  }) : super(
          variables: variables.toJson(),
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          document: documentNodeMutationSendChat,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$SendChat,
        );
}

extension ClientExtension$Mutation$SendChat on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$SendChat>> mutate$SendChat(
          Options$Mutation$SendChat options) async =>
      await this.mutate(options);
  graphql.ObservableQuery<Mutation$SendChat> watchMutation$SendChat(
          WatchOptions$Mutation$SendChat options) =>
      this.watchMutation(options);
}

class Mutation$SendChat$HookResult {
  Mutation$SendChat$HookResult(
    this.runMutation,
    this.result,
  );

  final RunMutation$Mutation$SendChat runMutation;

  final graphql.QueryResult<Mutation$SendChat> result;
}

Mutation$SendChat$HookResult useMutation$SendChat(
    [WidgetOptions$Mutation$SendChat? options]) {
  final result =
      graphql_flutter.useMutation(options ?? WidgetOptions$Mutation$SendChat());
  return Mutation$SendChat$HookResult(
    (variables, {optimisticResult, typedOptimisticResult}) =>
        result.runMutation(
      variables.toJson(),
      optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
    ),
    result.result,
  );
}

graphql.ObservableQuery<Mutation$SendChat> useWatchMutation$SendChat(
        WatchOptions$Mutation$SendChat options) =>
    graphql_flutter.useWatchMutation(options);

class WidgetOptions$Mutation$SendChat
    extends graphql.MutationOptions<Mutation$SendChat> {
  WidgetOptions$Mutation$SendChat({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$SendChat? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$SendChat? onCompleted,
    graphql.OnMutationUpdate<Mutation$SendChat>? update,
    graphql.OnError? onError,
  })  : onCompletedWithParsed = onCompleted,
        super(
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          onCompleted: onCompleted == null
              ? null
              : (data) => onCompleted(
                    data,
                    data == null ? null : _parserFn$Mutation$SendChat(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationSendChat,
          parserFn: _parserFn$Mutation$SendChat,
        );

  final OnMutationCompleted$Mutation$SendChat? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

typedef RunMutation$Mutation$SendChat
    = graphql.MultiSourceResult<Mutation$SendChat> Function(
  Variables$Mutation$SendChat, {
  Object? optimisticResult,
  Mutation$SendChat? typedOptimisticResult,
});
typedef Builder$Mutation$SendChat = widgets.Widget Function(
  RunMutation$Mutation$SendChat,
  graphql.QueryResult<Mutation$SendChat>?,
);

class Mutation$SendChat$Widget
    extends graphql_flutter.Mutation<Mutation$SendChat> {
  Mutation$SendChat$Widget({
    widgets.Key? key,
    WidgetOptions$Mutation$SendChat? options,
    required Builder$Mutation$SendChat builder,
  }) : super(
          key: key,
          options: options ?? WidgetOptions$Mutation$SendChat(),
          builder: (
            run,
            result,
          ) =>
              builder(
            (
              variables, {
              optimisticResult,
              typedOptimisticResult,
            }) =>
                run(
              variables.toJson(),
              optimisticResult:
                  optimisticResult ?? typedOptimisticResult?.toJson(),
            ),
            result,
          ),
        );
}

class Mutation$SendChat$send {
  Mutation$SendChat$send({
    this.uuid,
    required this.state,
    required this.document,
    required this.userAsk,
    this.result,
    this.$__typename = 'Chat',
  });

  factory Mutation$SendChat$send.fromJson(Map<String, dynamic> json) {
    final l$uuid = json['uuid'];
    final l$state = json['state'];
    final l$document = json['document'];
    final l$userAsk = json['userAsk'];
    final l$result = json['result'];
    final l$$__typename = json['__typename'];
    return Mutation$SendChat$send(
      uuid: (l$uuid as String?),
      state: fromJson$Enum$ChatState((l$state as String)),
      document: (l$document as String),
      userAsk: (l$userAsk as String),
      result: (l$result as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String? uuid;

  final Enum$ChatState state;

  final String document;

  final String userAsk;

  final String? result;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$uuid = uuid;
    _resultData['uuid'] = l$uuid;
    final l$state = state;
    _resultData['state'] = toJson$Enum$ChatState(l$state);
    final l$document = document;
    _resultData['document'] = l$document;
    final l$userAsk = userAsk;
    _resultData['userAsk'] = l$userAsk;
    final l$result = result;
    _resultData['result'] = l$result;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$uuid = uuid;
    final l$state = state;
    final l$document = document;
    final l$userAsk = userAsk;
    final l$result = result;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$uuid,
      l$state,
      l$document,
      l$userAsk,
      l$result,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$SendChat$send || runtimeType != other.runtimeType) {
      return false;
    }
    final l$uuid = uuid;
    final lOther$uuid = other.uuid;
    if (l$uuid != lOther$uuid) {
      return false;
    }
    final l$state = state;
    final lOther$state = other.state;
    if (l$state != lOther$state) {
      return false;
    }
    final l$document = document;
    final lOther$document = other.document;
    if (l$document != lOther$document) {
      return false;
    }
    final l$userAsk = userAsk;
    final lOther$userAsk = other.userAsk;
    if (l$userAsk != lOther$userAsk) {
      return false;
    }
    final l$result = result;
    final lOther$result = other.result;
    if (l$result != lOther$result) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$SendChat$send on Mutation$SendChat$send {
  CopyWith$Mutation$SendChat$send<Mutation$SendChat$send> get copyWith =>
      CopyWith$Mutation$SendChat$send(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$SendChat$send<TRes> {
  factory CopyWith$Mutation$SendChat$send(
    Mutation$SendChat$send instance,
    TRes Function(Mutation$SendChat$send) then,
  ) = _CopyWithImpl$Mutation$SendChat$send;

  factory CopyWith$Mutation$SendChat$send.stub(TRes res) =
      _CopyWithStubImpl$Mutation$SendChat$send;

  TRes call({
    String? uuid,
    Enum$ChatState? state,
    String? document,
    String? userAsk,
    String? result,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$SendChat$send<TRes>
    implements CopyWith$Mutation$SendChat$send<TRes> {
  _CopyWithImpl$Mutation$SendChat$send(
    this._instance,
    this._then,
  );

  final Mutation$SendChat$send _instance;

  final TRes Function(Mutation$SendChat$send) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? uuid = _undefined,
    Object? state = _undefined,
    Object? document = _undefined,
    Object? userAsk = _undefined,
    Object? result = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$SendChat$send(
        uuid: uuid == _undefined ? _instance.uuid : (uuid as String?),
        state: state == _undefined || state == null
            ? _instance.state
            : (state as Enum$ChatState),
        document: document == _undefined || document == null
            ? _instance.document
            : (document as String),
        userAsk: userAsk == _undefined || userAsk == null
            ? _instance.userAsk
            : (userAsk as String),
        result: result == _undefined ? _instance.result : (result as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$SendChat$send<TRes>
    implements CopyWith$Mutation$SendChat$send<TRes> {
  _CopyWithStubImpl$Mutation$SendChat$send(this._res);

  TRes _res;

  call({
    String? uuid,
    Enum$ChatState? state,
    String? document,
    String? userAsk,
    String? result,
    String? $__typename,
  }) =>
      _res;
}

class Variables$Query$FindChat {
  factory Variables$Query$FindChat(
          {required Input$ChatQueryRequestInput query}) =>
      Variables$Query$FindChat._({
        r'query': query,
      });

  Variables$Query$FindChat._(this._$data);

  factory Variables$Query$FindChat.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$query = data['query'];
    result$data['query'] =
        Input$ChatQueryRequestInput.fromJson((l$query as Map<String, dynamic>));
    return Variables$Query$FindChat._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$ChatQueryRequestInput get query =>
      (_$data['query'] as Input$ChatQueryRequestInput);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$query = query;
    result$data['query'] = l$query.toJson();
    return result$data;
  }

  CopyWith$Variables$Query$FindChat<Variables$Query$FindChat> get copyWith =>
      CopyWith$Variables$Query$FindChat(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$FindChat ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$query = query;
    final lOther$query = other.query;
    if (l$query != lOther$query) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$query = query;
    return Object.hashAll([l$query]);
  }
}

abstract class CopyWith$Variables$Query$FindChat<TRes> {
  factory CopyWith$Variables$Query$FindChat(
    Variables$Query$FindChat instance,
    TRes Function(Variables$Query$FindChat) then,
  ) = _CopyWithImpl$Variables$Query$FindChat;

  factory CopyWith$Variables$Query$FindChat.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$FindChat;

  TRes call({Input$ChatQueryRequestInput? query});
}

class _CopyWithImpl$Variables$Query$FindChat<TRes>
    implements CopyWith$Variables$Query$FindChat<TRes> {
  _CopyWithImpl$Variables$Query$FindChat(
    this._instance,
    this._then,
  );

  final Variables$Query$FindChat _instance;

  final TRes Function(Variables$Query$FindChat) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? query = _undefined}) => _then(Variables$Query$FindChat._({
        ..._instance._$data,
        if (query != _undefined && query != null)
          'query': (query as Input$ChatQueryRequestInput),
      }));
}

class _CopyWithStubImpl$Variables$Query$FindChat<TRes>
    implements CopyWith$Variables$Query$FindChat<TRes> {
  _CopyWithStubImpl$Variables$Query$FindChat(this._res);

  TRes _res;

  call({Input$ChatQueryRequestInput? query}) => _res;
}

class Query$FindChat {
  Query$FindChat({
    required this.findChat,
    this.$__typename = 'Query',
  });

  factory Query$FindChat.fromJson(Map<String, dynamic> json) {
    final l$findChat = json['findChat'];
    final l$$__typename = json['__typename'];
    return Query$FindChat(
      findChat: (l$findChat as List<dynamic>)
          .map((e) =>
              Query$FindChat$findChat.fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$FindChat$findChat> findChat;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$findChat = findChat;
    _resultData['findChat'] = l$findChat.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$findChat = findChat;
    final l$$__typename = $__typename;
    return Object.hashAll([
      Object.hashAll(l$findChat.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$FindChat || runtimeType != other.runtimeType) {
      return false;
    }
    final l$findChat = findChat;
    final lOther$findChat = other.findChat;
    if (l$findChat.length != lOther$findChat.length) {
      return false;
    }
    for (int i = 0; i < l$findChat.length; i++) {
      final l$findChat$entry = l$findChat[i];
      final lOther$findChat$entry = lOther$findChat[i];
      if (l$findChat$entry != lOther$findChat$entry) {
        return false;
      }
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$FindChat on Query$FindChat {
  CopyWith$Query$FindChat<Query$FindChat> get copyWith =>
      CopyWith$Query$FindChat(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$FindChat<TRes> {
  factory CopyWith$Query$FindChat(
    Query$FindChat instance,
    TRes Function(Query$FindChat) then,
  ) = _CopyWithImpl$Query$FindChat;

  factory CopyWith$Query$FindChat.stub(TRes res) =
      _CopyWithStubImpl$Query$FindChat;

  TRes call({
    List<Query$FindChat$findChat>? findChat,
    String? $__typename,
  });
  TRes findChat(
      Iterable<Query$FindChat$findChat> Function(
              Iterable<
                  CopyWith$Query$FindChat$findChat<Query$FindChat$findChat>>)
          _fn);
}

class _CopyWithImpl$Query$FindChat<TRes>
    implements CopyWith$Query$FindChat<TRes> {
  _CopyWithImpl$Query$FindChat(
    this._instance,
    this._then,
  );

  final Query$FindChat _instance;

  final TRes Function(Query$FindChat) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? findChat = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$FindChat(
        findChat: findChat == _undefined || findChat == null
            ? _instance.findChat
            : (findChat as List<Query$FindChat$findChat>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes findChat(
          Iterable<Query$FindChat$findChat> Function(
                  Iterable<
                      CopyWith$Query$FindChat$findChat<
                          Query$FindChat$findChat>>)
              _fn) =>
      call(
          findChat: _fn(
              _instance.findChat.map((e) => CopyWith$Query$FindChat$findChat(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Query$FindChat<TRes>
    implements CopyWith$Query$FindChat<TRes> {
  _CopyWithStubImpl$Query$FindChat(this._res);

  TRes _res;

  call({
    List<Query$FindChat$findChat>? findChat,
    String? $__typename,
  }) =>
      _res;

  findChat(_fn) => _res;
}

const documentNodeQueryFindChat = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'FindChat'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'query')),
        type: NamedTypeNode(
          name: NameNode(value: 'ChatQueryRequestInput'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'findChat'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'queryRequest'),
            value: VariableNode(name: NameNode(value: 'query')),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'uuid'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'userAsk'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'result'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'document'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'state'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: '__typename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
        ]),
      ),
      FieldNode(
        name: NameNode(value: '__typename'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
    ]),
  ),
]);
Query$FindChat _parserFn$Query$FindChat(Map<String, dynamic> data) =>
    Query$FindChat.fromJson(data);
typedef OnQueryComplete$Query$FindChat = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$FindChat?,
);

class Options$Query$FindChat extends graphql.QueryOptions<Query$FindChat> {
  Options$Query$FindChat({
    String? operationName,
    required Variables$Query$FindChat variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$FindChat? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$FindChat? onComplete,
    graphql.OnQueryError? onError,
  })  : onCompleteWithParsed = onComplete,
        super(
          variables: variables.toJson(),
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          pollInterval: pollInterval,
          context: context,
          onComplete: onComplete == null
              ? null
              : (data) => onComplete(
                    data,
                    data == null ? null : _parserFn$Query$FindChat(data),
                  ),
          onError: onError,
          document: documentNodeQueryFindChat,
          parserFn: _parserFn$Query$FindChat,
        );

  final OnQueryComplete$Query$FindChat? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$FindChat
    extends graphql.WatchQueryOptions<Query$FindChat> {
  WatchOptions$Query$FindChat({
    String? operationName,
    required Variables$Query$FindChat variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$FindChat? typedOptimisticResult,
    graphql.Context? context,
    Duration? pollInterval,
    bool? eagerlyFetchResults,
    bool carryForwardDataOnException = true,
    bool fetchResults = false,
  }) : super(
          variables: variables.toJson(),
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          document: documentNodeQueryFindChat,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$FindChat,
        );
}

class FetchMoreOptions$Query$FindChat extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$FindChat({
    required graphql.UpdateQuery updateQuery,
    required Variables$Query$FindChat variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables.toJson(),
          document: documentNodeQueryFindChat,
        );
}

extension ClientExtension$Query$FindChat on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$FindChat>> query$FindChat(
          Options$Query$FindChat options) async =>
      await this.query(options);
  graphql.ObservableQuery<Query$FindChat> watchQuery$FindChat(
          WatchOptions$Query$FindChat options) =>
      this.watchQuery(options);
  void writeQuery$FindChat({
    required Query$FindChat data,
    required Variables$Query$FindChat variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation: graphql.Operation(document: documentNodeQueryFindChat),
          variables: variables.toJson(),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$FindChat? readQuery$FindChat({
    required Variables$Query$FindChat variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(document: documentNodeQueryFindChat),
        variables: variables.toJson(),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$FindChat.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$FindChat> useQuery$FindChat(
        Options$Query$FindChat options) =>
    graphql_flutter.useQuery(options);
graphql.ObservableQuery<Query$FindChat> useWatchQuery$FindChat(
        WatchOptions$Query$FindChat options) =>
    graphql_flutter.useWatchQuery(options);

class Query$FindChat$Widget extends graphql_flutter.Query<Query$FindChat> {
  Query$FindChat$Widget({
    widgets.Key? key,
    required Options$Query$FindChat options,
    required graphql_flutter.QueryBuilder<Query$FindChat> builder,
  }) : super(
          key: key,
          options: options,
          builder: builder,
        );
}

class Query$FindChat$findChat {
  Query$FindChat$findChat({
    this.uuid,
    required this.userAsk,
    this.result,
    required this.document,
    required this.state,
    this.$__typename = 'Chat',
  });

  factory Query$FindChat$findChat.fromJson(Map<String, dynamic> json) {
    final l$uuid = json['uuid'];
    final l$userAsk = json['userAsk'];
    final l$result = json['result'];
    final l$document = json['document'];
    final l$state = json['state'];
    final l$$__typename = json['__typename'];
    return Query$FindChat$findChat(
      uuid: (l$uuid as String?),
      userAsk: (l$userAsk as String),
      result: (l$result as String?),
      document: (l$document as String),
      state: fromJson$Enum$ChatState((l$state as String)),
      $__typename: (l$$__typename as String),
    );
  }

  final String? uuid;

  final String userAsk;

  final String? result;

  final String document;

  final Enum$ChatState state;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$uuid = uuid;
    _resultData['uuid'] = l$uuid;
    final l$userAsk = userAsk;
    _resultData['userAsk'] = l$userAsk;
    final l$result = result;
    _resultData['result'] = l$result;
    final l$document = document;
    _resultData['document'] = l$document;
    final l$state = state;
    _resultData['state'] = toJson$Enum$ChatState(l$state);
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$uuid = uuid;
    final l$userAsk = userAsk;
    final l$result = result;
    final l$document = document;
    final l$state = state;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$uuid,
      l$userAsk,
      l$result,
      l$document,
      l$state,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$FindChat$findChat || runtimeType != other.runtimeType) {
      return false;
    }
    final l$uuid = uuid;
    final lOther$uuid = other.uuid;
    if (l$uuid != lOther$uuid) {
      return false;
    }
    final l$userAsk = userAsk;
    final lOther$userAsk = other.userAsk;
    if (l$userAsk != lOther$userAsk) {
      return false;
    }
    final l$result = result;
    final lOther$result = other.result;
    if (l$result != lOther$result) {
      return false;
    }
    final l$document = document;
    final lOther$document = other.document;
    if (l$document != lOther$document) {
      return false;
    }
    final l$state = state;
    final lOther$state = other.state;
    if (l$state != lOther$state) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$FindChat$findChat on Query$FindChat$findChat {
  CopyWith$Query$FindChat$findChat<Query$FindChat$findChat> get copyWith =>
      CopyWith$Query$FindChat$findChat(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$FindChat$findChat<TRes> {
  factory CopyWith$Query$FindChat$findChat(
    Query$FindChat$findChat instance,
    TRes Function(Query$FindChat$findChat) then,
  ) = _CopyWithImpl$Query$FindChat$findChat;

  factory CopyWith$Query$FindChat$findChat.stub(TRes res) =
      _CopyWithStubImpl$Query$FindChat$findChat;

  TRes call({
    String? uuid,
    String? userAsk,
    String? result,
    String? document,
    Enum$ChatState? state,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$FindChat$findChat<TRes>
    implements CopyWith$Query$FindChat$findChat<TRes> {
  _CopyWithImpl$Query$FindChat$findChat(
    this._instance,
    this._then,
  );

  final Query$FindChat$findChat _instance;

  final TRes Function(Query$FindChat$findChat) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? uuid = _undefined,
    Object? userAsk = _undefined,
    Object? result = _undefined,
    Object? document = _undefined,
    Object? state = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$FindChat$findChat(
        uuid: uuid == _undefined ? _instance.uuid : (uuid as String?),
        userAsk: userAsk == _undefined || userAsk == null
            ? _instance.userAsk
            : (userAsk as String),
        result: result == _undefined ? _instance.result : (result as String?),
        document: document == _undefined || document == null
            ? _instance.document
            : (document as String),
        state: state == _undefined || state == null
            ? _instance.state
            : (state as Enum$ChatState),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$FindChat$findChat<TRes>
    implements CopyWith$Query$FindChat$findChat<TRes> {
  _CopyWithStubImpl$Query$FindChat$findChat(this._res);

  TRes _res;

  call({
    String? uuid,
    String? userAsk,
    String? result,
    String? document,
    Enum$ChatState? state,
    String? $__typename,
  }) =>
      _res;
}

class Variables$Query$FindChatAnswerRef {
  factory Variables$Query$FindChatAnswerRef(
          {required Input$AnswerRefQueryRequestInput query}) =>
      Variables$Query$FindChatAnswerRef._({
        r'query': query,
      });

  Variables$Query$FindChatAnswerRef._(this._$data);

  factory Variables$Query$FindChatAnswerRef.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$query = data['query'];
    result$data['query'] = Input$AnswerRefQueryRequestInput.fromJson(
        (l$query as Map<String, dynamic>));
    return Variables$Query$FindChatAnswerRef._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$AnswerRefQueryRequestInput get query =>
      (_$data['query'] as Input$AnswerRefQueryRequestInput);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$query = query;
    result$data['query'] = l$query.toJson();
    return result$data;
  }

  CopyWith$Variables$Query$FindChatAnswerRef<Variables$Query$FindChatAnswerRef>
      get copyWith => CopyWith$Variables$Query$FindChatAnswerRef(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$FindChatAnswerRef ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$query = query;
    final lOther$query = other.query;
    if (l$query != lOther$query) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$query = query;
    return Object.hashAll([l$query]);
  }
}

abstract class CopyWith$Variables$Query$FindChatAnswerRef<TRes> {
  factory CopyWith$Variables$Query$FindChatAnswerRef(
    Variables$Query$FindChatAnswerRef instance,
    TRes Function(Variables$Query$FindChatAnswerRef) then,
  ) = _CopyWithImpl$Variables$Query$FindChatAnswerRef;

  factory CopyWith$Variables$Query$FindChatAnswerRef.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$FindChatAnswerRef;

  TRes call({Input$AnswerRefQueryRequestInput? query});
}

class _CopyWithImpl$Variables$Query$FindChatAnswerRef<TRes>
    implements CopyWith$Variables$Query$FindChatAnswerRef<TRes> {
  _CopyWithImpl$Variables$Query$FindChatAnswerRef(
    this._instance,
    this._then,
  );

  final Variables$Query$FindChatAnswerRef _instance;

  final TRes Function(Variables$Query$FindChatAnswerRef) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? query = _undefined}) =>
      _then(Variables$Query$FindChatAnswerRef._({
        ..._instance._$data,
        if (query != _undefined && query != null)
          'query': (query as Input$AnswerRefQueryRequestInput),
      }));
}

class _CopyWithStubImpl$Variables$Query$FindChatAnswerRef<TRes>
    implements CopyWith$Variables$Query$FindChatAnswerRef<TRes> {
  _CopyWithStubImpl$Variables$Query$FindChatAnswerRef(this._res);

  TRes _res;

  call({Input$AnswerRefQueryRequestInput? query}) => _res;
}

class Query$FindChatAnswerRef {
  Query$FindChatAnswerRef({
    required this.findAnswerRefWithChunk,
    this.$__typename = 'Query',
  });

  factory Query$FindChatAnswerRef.fromJson(Map<String, dynamic> json) {
    final l$findAnswerRefWithChunk = json['findAnswerRefWithChunk'];
    final l$$__typename = json['__typename'];
    return Query$FindChatAnswerRef(
      findAnswerRefWithChunk: (l$findAnswerRefWithChunk as List<dynamic>)
          .map((e) => Query$FindChatAnswerRef$findAnswerRefWithChunk.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$FindChatAnswerRef$findAnswerRefWithChunk>
      findAnswerRefWithChunk;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$findAnswerRefWithChunk = findAnswerRefWithChunk;
    _resultData['findAnswerRefWithChunk'] =
        l$findAnswerRefWithChunk.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$findAnswerRefWithChunk = findAnswerRefWithChunk;
    final l$$__typename = $__typename;
    return Object.hashAll([
      Object.hashAll(l$findAnswerRefWithChunk.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$FindChatAnswerRef || runtimeType != other.runtimeType) {
      return false;
    }
    final l$findAnswerRefWithChunk = findAnswerRefWithChunk;
    final lOther$findAnswerRefWithChunk = other.findAnswerRefWithChunk;
    if (l$findAnswerRefWithChunk.length !=
        lOther$findAnswerRefWithChunk.length) {
      return false;
    }
    for (int i = 0; i < l$findAnswerRefWithChunk.length; i++) {
      final l$findAnswerRefWithChunk$entry = l$findAnswerRefWithChunk[i];
      final lOther$findAnswerRefWithChunk$entry =
          lOther$findAnswerRefWithChunk[i];
      if (l$findAnswerRefWithChunk$entry !=
          lOther$findAnswerRefWithChunk$entry) {
        return false;
      }
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$FindChatAnswerRef on Query$FindChatAnswerRef {
  CopyWith$Query$FindChatAnswerRef<Query$FindChatAnswerRef> get copyWith =>
      CopyWith$Query$FindChatAnswerRef(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$FindChatAnswerRef<TRes> {
  factory CopyWith$Query$FindChatAnswerRef(
    Query$FindChatAnswerRef instance,
    TRes Function(Query$FindChatAnswerRef) then,
  ) = _CopyWithImpl$Query$FindChatAnswerRef;

  factory CopyWith$Query$FindChatAnswerRef.stub(TRes res) =
      _CopyWithStubImpl$Query$FindChatAnswerRef;

  TRes call({
    List<Query$FindChatAnswerRef$findAnswerRefWithChunk>?
        findAnswerRefWithChunk,
    String? $__typename,
  });
  TRes findAnswerRefWithChunk(
      Iterable<Query$FindChatAnswerRef$findAnswerRefWithChunk> Function(
              Iterable<
                  CopyWith$Query$FindChatAnswerRef$findAnswerRefWithChunk<
                      Query$FindChatAnswerRef$findAnswerRefWithChunk>>)
          _fn);
}

class _CopyWithImpl$Query$FindChatAnswerRef<TRes>
    implements CopyWith$Query$FindChatAnswerRef<TRes> {
  _CopyWithImpl$Query$FindChatAnswerRef(
    this._instance,
    this._then,
  );

  final Query$FindChatAnswerRef _instance;

  final TRes Function(Query$FindChatAnswerRef) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? findAnswerRefWithChunk = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$FindChatAnswerRef(
        findAnswerRefWithChunk: findAnswerRefWithChunk == _undefined ||
                findAnswerRefWithChunk == null
            ? _instance.findAnswerRefWithChunk
            : (findAnswerRefWithChunk
                as List<Query$FindChatAnswerRef$findAnswerRefWithChunk>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes findAnswerRefWithChunk(
          Iterable<Query$FindChatAnswerRef$findAnswerRefWithChunk> Function(
                  Iterable<
                      CopyWith$Query$FindChatAnswerRef$findAnswerRefWithChunk<
                          Query$FindChatAnswerRef$findAnswerRefWithChunk>>)
              _fn) =>
      call(
          findAnswerRefWithChunk: _fn(_instance.findAnswerRefWithChunk.map(
              (e) => CopyWith$Query$FindChatAnswerRef$findAnswerRefWithChunk(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Query$FindChatAnswerRef<TRes>
    implements CopyWith$Query$FindChatAnswerRef<TRes> {
  _CopyWithStubImpl$Query$FindChatAnswerRef(this._res);

  TRes _res;

  call({
    List<Query$FindChatAnswerRef$findAnswerRefWithChunk>?
        findAnswerRefWithChunk,
    String? $__typename,
  }) =>
      _res;

  findAnswerRefWithChunk(_fn) => _res;
}

const documentNodeQueryFindChatAnswerRef = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'FindChatAnswerRef'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'query')),
        type: NamedTypeNode(
          name: NameNode(value: 'AnswerRefQueryRequestInput'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'findAnswerRefWithChunk'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'request'),
            value: VariableNode(name: NameNode(value: 'query')),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'answerRef'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'similarity'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: '__typename'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
            ]),
          ),
          FieldNode(
            name: NameNode(value: 'chunk'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'content'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'page'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'num'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: '__typename'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
            ]),
          ),
          FieldNode(
            name: NameNode(value: '__typename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
        ]),
      ),
      FieldNode(
        name: NameNode(value: '__typename'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
    ]),
  ),
]);
Query$FindChatAnswerRef _parserFn$Query$FindChatAnswerRef(
        Map<String, dynamic> data) =>
    Query$FindChatAnswerRef.fromJson(data);
typedef OnQueryComplete$Query$FindChatAnswerRef = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$FindChatAnswerRef?,
);

class Options$Query$FindChatAnswerRef
    extends graphql.QueryOptions<Query$FindChatAnswerRef> {
  Options$Query$FindChatAnswerRef({
    String? operationName,
    required Variables$Query$FindChatAnswerRef variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$FindChatAnswerRef? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$FindChatAnswerRef? onComplete,
    graphql.OnQueryError? onError,
  })  : onCompleteWithParsed = onComplete,
        super(
          variables: variables.toJson(),
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          pollInterval: pollInterval,
          context: context,
          onComplete: onComplete == null
              ? null
              : (data) => onComplete(
                    data,
                    data == null
                        ? null
                        : _parserFn$Query$FindChatAnswerRef(data),
                  ),
          onError: onError,
          document: documentNodeQueryFindChatAnswerRef,
          parserFn: _parserFn$Query$FindChatAnswerRef,
        );

  final OnQueryComplete$Query$FindChatAnswerRef? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$FindChatAnswerRef
    extends graphql.WatchQueryOptions<Query$FindChatAnswerRef> {
  WatchOptions$Query$FindChatAnswerRef({
    String? operationName,
    required Variables$Query$FindChatAnswerRef variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$FindChatAnswerRef? typedOptimisticResult,
    graphql.Context? context,
    Duration? pollInterval,
    bool? eagerlyFetchResults,
    bool carryForwardDataOnException = true,
    bool fetchResults = false,
  }) : super(
          variables: variables.toJson(),
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          document: documentNodeQueryFindChatAnswerRef,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$FindChatAnswerRef,
        );
}

class FetchMoreOptions$Query$FindChatAnswerRef
    extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$FindChatAnswerRef({
    required graphql.UpdateQuery updateQuery,
    required Variables$Query$FindChatAnswerRef variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables.toJson(),
          document: documentNodeQueryFindChatAnswerRef,
        );
}

extension ClientExtension$Query$FindChatAnswerRef on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$FindChatAnswerRef>> query$FindChatAnswerRef(
          Options$Query$FindChatAnswerRef options) async =>
      await this.query(options);
  graphql.ObservableQuery<Query$FindChatAnswerRef> watchQuery$FindChatAnswerRef(
          WatchOptions$Query$FindChatAnswerRef options) =>
      this.watchQuery(options);
  void writeQuery$FindChatAnswerRef({
    required Query$FindChatAnswerRef data,
    required Variables$Query$FindChatAnswerRef variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation:
              graphql.Operation(document: documentNodeQueryFindChatAnswerRef),
          variables: variables.toJson(),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$FindChatAnswerRef? readQuery$FindChatAnswerRef({
    required Variables$Query$FindChatAnswerRef variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation:
            graphql.Operation(document: documentNodeQueryFindChatAnswerRef),
        variables: variables.toJson(),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$FindChatAnswerRef.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$FindChatAnswerRef>
    useQuery$FindChatAnswerRef(Options$Query$FindChatAnswerRef options) =>
        graphql_flutter.useQuery(options);
graphql.ObservableQuery<Query$FindChatAnswerRef>
    useWatchQuery$FindChatAnswerRef(
            WatchOptions$Query$FindChatAnswerRef options) =>
        graphql_flutter.useWatchQuery(options);

class Query$FindChatAnswerRef$Widget
    extends graphql_flutter.Query<Query$FindChatAnswerRef> {
  Query$FindChatAnswerRef$Widget({
    widgets.Key? key,
    required Options$Query$FindChatAnswerRef options,
    required graphql_flutter.QueryBuilder<Query$FindChatAnswerRef> builder,
  }) : super(
          key: key,
          options: options,
          builder: builder,
        );
}

class Query$FindChatAnswerRef$findAnswerRefWithChunk {
  Query$FindChatAnswerRef$findAnswerRefWithChunk({
    required this.answerRef,
    required this.chunk,
    this.$__typename = 'AnswerRefWithChunk',
  });

  factory Query$FindChatAnswerRef$findAnswerRefWithChunk.fromJson(
      Map<String, dynamic> json) {
    final l$answerRef = json['answerRef'];
    final l$chunk = json['chunk'];
    final l$$__typename = json['__typename'];
    return Query$FindChatAnswerRef$findAnswerRefWithChunk(
      answerRef:
          Query$FindChatAnswerRef$findAnswerRefWithChunk$answerRef.fromJson(
              (l$answerRef as Map<String, dynamic>)),
      chunk: Query$FindChatAnswerRef$findAnswerRefWithChunk$chunk.fromJson(
          (l$chunk as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$FindChatAnswerRef$findAnswerRefWithChunk$answerRef answerRef;

  final Query$FindChatAnswerRef$findAnswerRefWithChunk$chunk chunk;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$answerRef = answerRef;
    _resultData['answerRef'] = l$answerRef.toJson();
    final l$chunk = chunk;
    _resultData['chunk'] = l$chunk.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$answerRef = answerRef;
    final l$chunk = chunk;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$answerRef,
      l$chunk,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$FindChatAnswerRef$findAnswerRefWithChunk ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$answerRef = answerRef;
    final lOther$answerRef = other.answerRef;
    if (l$answerRef != lOther$answerRef) {
      return false;
    }
    final l$chunk = chunk;
    final lOther$chunk = other.chunk;
    if (l$chunk != lOther$chunk) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$FindChatAnswerRef$findAnswerRefWithChunk
    on Query$FindChatAnswerRef$findAnswerRefWithChunk {
  CopyWith$Query$FindChatAnswerRef$findAnswerRefWithChunk<
          Query$FindChatAnswerRef$findAnswerRefWithChunk>
      get copyWith => CopyWith$Query$FindChatAnswerRef$findAnswerRefWithChunk(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$FindChatAnswerRef$findAnswerRefWithChunk<TRes> {
  factory CopyWith$Query$FindChatAnswerRef$findAnswerRefWithChunk(
    Query$FindChatAnswerRef$findAnswerRefWithChunk instance,
    TRes Function(Query$FindChatAnswerRef$findAnswerRefWithChunk) then,
  ) = _CopyWithImpl$Query$FindChatAnswerRef$findAnswerRefWithChunk;

  factory CopyWith$Query$FindChatAnswerRef$findAnswerRefWithChunk.stub(
          TRes res) =
      _CopyWithStubImpl$Query$FindChatAnswerRef$findAnswerRefWithChunk;

  TRes call({
    Query$FindChatAnswerRef$findAnswerRefWithChunk$answerRef? answerRef,
    Query$FindChatAnswerRef$findAnswerRefWithChunk$chunk? chunk,
    String? $__typename,
  });
  CopyWith$Query$FindChatAnswerRef$findAnswerRefWithChunk$answerRef<TRes>
      get answerRef;
  CopyWith$Query$FindChatAnswerRef$findAnswerRefWithChunk$chunk<TRes> get chunk;
}

class _CopyWithImpl$Query$FindChatAnswerRef$findAnswerRefWithChunk<TRes>
    implements CopyWith$Query$FindChatAnswerRef$findAnswerRefWithChunk<TRes> {
  _CopyWithImpl$Query$FindChatAnswerRef$findAnswerRefWithChunk(
    this._instance,
    this._then,
  );

  final Query$FindChatAnswerRef$findAnswerRefWithChunk _instance;

  final TRes Function(Query$FindChatAnswerRef$findAnswerRefWithChunk) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? answerRef = _undefined,
    Object? chunk = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$FindChatAnswerRef$findAnswerRefWithChunk(
        answerRef: answerRef == _undefined || answerRef == null
            ? _instance.answerRef
            : (answerRef
                as Query$FindChatAnswerRef$findAnswerRefWithChunk$answerRef),
        chunk: chunk == _undefined || chunk == null
            ? _instance.chunk
            : (chunk as Query$FindChatAnswerRef$findAnswerRefWithChunk$chunk),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$FindChatAnswerRef$findAnswerRefWithChunk$answerRef<TRes>
      get answerRef {
    final local$answerRef = _instance.answerRef;
    return CopyWith$Query$FindChatAnswerRef$findAnswerRefWithChunk$answerRef(
        local$answerRef, (e) => call(answerRef: e));
  }

  CopyWith$Query$FindChatAnswerRef$findAnswerRefWithChunk$chunk<TRes>
      get chunk {
    final local$chunk = _instance.chunk;
    return CopyWith$Query$FindChatAnswerRef$findAnswerRefWithChunk$chunk(
        local$chunk, (e) => call(chunk: e));
  }
}

class _CopyWithStubImpl$Query$FindChatAnswerRef$findAnswerRefWithChunk<TRes>
    implements CopyWith$Query$FindChatAnswerRef$findAnswerRefWithChunk<TRes> {
  _CopyWithStubImpl$Query$FindChatAnswerRef$findAnswerRefWithChunk(this._res);

  TRes _res;

  call({
    Query$FindChatAnswerRef$findAnswerRefWithChunk$answerRef? answerRef,
    Query$FindChatAnswerRef$findAnswerRefWithChunk$chunk? chunk,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$FindChatAnswerRef$findAnswerRefWithChunk$answerRef<TRes>
      get answerRef =>
          CopyWith$Query$FindChatAnswerRef$findAnswerRefWithChunk$answerRef
              .stub(_res);

  CopyWith$Query$FindChatAnswerRef$findAnswerRefWithChunk$chunk<TRes>
      get chunk =>
          CopyWith$Query$FindChatAnswerRef$findAnswerRefWithChunk$chunk.stub(
              _res);
}

class Query$FindChatAnswerRef$findAnswerRefWithChunk$answerRef {
  Query$FindChatAnswerRef$findAnswerRefWithChunk$answerRef({
    required this.similarity,
    this.$__typename = 'ChatAnswerRef',
  });

  factory Query$FindChatAnswerRef$findAnswerRefWithChunk$answerRef.fromJson(
      Map<String, dynamic> json) {
    final l$similarity = json['similarity'];
    final l$$__typename = json['__typename'];
    return Query$FindChatAnswerRef$findAnswerRefWithChunk$answerRef(
      similarity: (l$similarity as num).toDouble(),
      $__typename: (l$$__typename as String),
    );
  }

  final double similarity;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$similarity = similarity;
    _resultData['similarity'] = l$similarity;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$similarity = similarity;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$similarity,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$FindChatAnswerRef$findAnswerRefWithChunk$answerRef ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$similarity = similarity;
    final lOther$similarity = other.similarity;
    if (l$similarity != lOther$similarity) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$FindChatAnswerRef$findAnswerRefWithChunk$answerRef
    on Query$FindChatAnswerRef$findAnswerRefWithChunk$answerRef {
  CopyWith$Query$FindChatAnswerRef$findAnswerRefWithChunk$answerRef<
          Query$FindChatAnswerRef$findAnswerRefWithChunk$answerRef>
      get copyWith =>
          CopyWith$Query$FindChatAnswerRef$findAnswerRefWithChunk$answerRef(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$FindChatAnswerRef$findAnswerRefWithChunk$answerRef<
    TRes> {
  factory CopyWith$Query$FindChatAnswerRef$findAnswerRefWithChunk$answerRef(
    Query$FindChatAnswerRef$findAnswerRefWithChunk$answerRef instance,
    TRes Function(Query$FindChatAnswerRef$findAnswerRefWithChunk$answerRef)
        then,
  ) = _CopyWithImpl$Query$FindChatAnswerRef$findAnswerRefWithChunk$answerRef;

  factory CopyWith$Query$FindChatAnswerRef$findAnswerRefWithChunk$answerRef.stub(
          TRes res) =
      _CopyWithStubImpl$Query$FindChatAnswerRef$findAnswerRefWithChunk$answerRef;

  TRes call({
    double? similarity,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$FindChatAnswerRef$findAnswerRefWithChunk$answerRef<
        TRes>
    implements
        CopyWith$Query$FindChatAnswerRef$findAnswerRefWithChunk$answerRef<
            TRes> {
  _CopyWithImpl$Query$FindChatAnswerRef$findAnswerRefWithChunk$answerRef(
    this._instance,
    this._then,
  );

  final Query$FindChatAnswerRef$findAnswerRefWithChunk$answerRef _instance;

  final TRes Function(Query$FindChatAnswerRef$findAnswerRefWithChunk$answerRef)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? similarity = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$FindChatAnswerRef$findAnswerRefWithChunk$answerRef(
        similarity: similarity == _undefined || similarity == null
            ? _instance.similarity
            : (similarity as double),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$FindChatAnswerRef$findAnswerRefWithChunk$answerRef<
        TRes>
    implements
        CopyWith$Query$FindChatAnswerRef$findAnswerRefWithChunk$answerRef<
            TRes> {
  _CopyWithStubImpl$Query$FindChatAnswerRef$findAnswerRefWithChunk$answerRef(
      this._res);

  TRes _res;

  call({
    double? similarity,
    String? $__typename,
  }) =>
      _res;
}

class Query$FindChatAnswerRef$findAnswerRefWithChunk$chunk {
  Query$FindChatAnswerRef$findAnswerRefWithChunk$chunk({
    required this.content,
    required this.page,
    required this.$num,
    this.$__typename = 'Chunk',
  });

  factory Query$FindChatAnswerRef$findAnswerRefWithChunk$chunk.fromJson(
      Map<String, dynamic> json) {
    final l$content = json['content'];
    final l$page = json['page'];
    final l$$num = json['num'];
    final l$$__typename = json['__typename'];
    return Query$FindChatAnswerRef$findAnswerRefWithChunk$chunk(
      content: (l$content as String),
      page: (l$page as int),
      $num: (l$$num as int),
      $__typename: (l$$__typename as String),
    );
  }

  final String content;

  final int page;

  final int $num;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$content = content;
    _resultData['content'] = l$content;
    final l$page = page;
    _resultData['page'] = l$page;
    final l$$num = $num;
    _resultData['num'] = l$$num;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$content = content;
    final l$page = page;
    final l$$num = $num;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$content,
      l$page,
      l$$num,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$FindChatAnswerRef$findAnswerRefWithChunk$chunk ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$content = content;
    final lOther$content = other.content;
    if (l$content != lOther$content) {
      return false;
    }
    final l$page = page;
    final lOther$page = other.page;
    if (l$page != lOther$page) {
      return false;
    }
    final l$$num = $num;
    final lOther$$num = other.$num;
    if (l$$num != lOther$$num) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$FindChatAnswerRef$findAnswerRefWithChunk$chunk
    on Query$FindChatAnswerRef$findAnswerRefWithChunk$chunk {
  CopyWith$Query$FindChatAnswerRef$findAnswerRefWithChunk$chunk<
          Query$FindChatAnswerRef$findAnswerRefWithChunk$chunk>
      get copyWith =>
          CopyWith$Query$FindChatAnswerRef$findAnswerRefWithChunk$chunk(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$FindChatAnswerRef$findAnswerRefWithChunk$chunk<
    TRes> {
  factory CopyWith$Query$FindChatAnswerRef$findAnswerRefWithChunk$chunk(
    Query$FindChatAnswerRef$findAnswerRefWithChunk$chunk instance,
    TRes Function(Query$FindChatAnswerRef$findAnswerRefWithChunk$chunk) then,
  ) = _CopyWithImpl$Query$FindChatAnswerRef$findAnswerRefWithChunk$chunk;

  factory CopyWith$Query$FindChatAnswerRef$findAnswerRefWithChunk$chunk.stub(
          TRes res) =
      _CopyWithStubImpl$Query$FindChatAnswerRef$findAnswerRefWithChunk$chunk;

  TRes call({
    String? content,
    int? page,
    int? $num,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$FindChatAnswerRef$findAnswerRefWithChunk$chunk<TRes>
    implements
        CopyWith$Query$FindChatAnswerRef$findAnswerRefWithChunk$chunk<TRes> {
  _CopyWithImpl$Query$FindChatAnswerRef$findAnswerRefWithChunk$chunk(
    this._instance,
    this._then,
  );

  final Query$FindChatAnswerRef$findAnswerRefWithChunk$chunk _instance;

  final TRes Function(Query$FindChatAnswerRef$findAnswerRefWithChunk$chunk)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? content = _undefined,
    Object? page = _undefined,
    Object? $num = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$FindChatAnswerRef$findAnswerRefWithChunk$chunk(
        content: content == _undefined || content == null
            ? _instance.content
            : (content as String),
        page:
            page == _undefined || page == null ? _instance.page : (page as int),
        $num:
            $num == _undefined || $num == null ? _instance.$num : ($num as int),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$FindChatAnswerRef$findAnswerRefWithChunk$chunk<
        TRes>
    implements
        CopyWith$Query$FindChatAnswerRef$findAnswerRefWithChunk$chunk<TRes> {
  _CopyWithStubImpl$Query$FindChatAnswerRef$findAnswerRefWithChunk$chunk(
      this._res);

  TRes _res;

  call({
    String? content,
    int? page,
    int? $num,
    String? $__typename,
  }) =>
      _res;
}
