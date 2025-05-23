import 'dart:async';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;

class Query$LoginState {
  Query$LoginState({
    this.loginState,
    this.$__typename = 'Query',
  });

  factory Query$LoginState.fromJson(Map<String, dynamic> json) {
    final l$loginState = json['loginState'];
    final l$$__typename = json['__typename'];
    return Query$LoginState(
      loginState: l$loginState == null
          ? null
          : Query$LoginState$loginState.fromJson(
              (l$loginState as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$LoginState$loginState? loginState;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$loginState = loginState;
    _resultData['loginState'] = l$loginState?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$loginState = loginState;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$loginState,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$LoginState || runtimeType != other.runtimeType) {
      return false;
    }
    final l$loginState = loginState;
    final lOther$loginState = other.loginState;
    if (l$loginState != lOther$loginState) {
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

extension UtilityExtension$Query$LoginState on Query$LoginState {
  CopyWith$Query$LoginState<Query$LoginState> get copyWith =>
      CopyWith$Query$LoginState(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$LoginState<TRes> {
  factory CopyWith$Query$LoginState(
    Query$LoginState instance,
    TRes Function(Query$LoginState) then,
  ) = _CopyWithImpl$Query$LoginState;

  factory CopyWith$Query$LoginState.stub(TRes res) =
      _CopyWithStubImpl$Query$LoginState;

  TRes call({
    Query$LoginState$loginState? loginState,
    String? $__typename,
  });
  CopyWith$Query$LoginState$loginState<TRes> get loginState;
}

class _CopyWithImpl$Query$LoginState<TRes>
    implements CopyWith$Query$LoginState<TRes> {
  _CopyWithImpl$Query$LoginState(
    this._instance,
    this._then,
  );

  final Query$LoginState _instance;

  final TRes Function(Query$LoginState) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? loginState = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$LoginState(
        loginState: loginState == _undefined
            ? _instance.loginState
            : (loginState as Query$LoginState$loginState?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$LoginState$loginState<TRes> get loginState {
    final local$loginState = _instance.loginState;
    return local$loginState == null
        ? CopyWith$Query$LoginState$loginState.stub(_then(_instance))
        : CopyWith$Query$LoginState$loginState(
            local$loginState, (e) => call(loginState: e));
  }
}

class _CopyWithStubImpl$Query$LoginState<TRes>
    implements CopyWith$Query$LoginState<TRes> {
  _CopyWithStubImpl$Query$LoginState(this._res);

  TRes _res;

  call({
    Query$LoginState$loginState? loginState,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$LoginState$loginState<TRes> get loginState =>
      CopyWith$Query$LoginState$loginState.stub(_res);
}

const documentNodeQueryLoginState = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'LoginState'),
    variableDefinitions: [],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'loginState'),
        alias: null,
        arguments: [],
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
            name: NameNode(value: 'email'),
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
Query$LoginState _parserFn$Query$LoginState(Map<String, dynamic> data) =>
    Query$LoginState.fromJson(data);
typedef OnQueryComplete$Query$LoginState = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$LoginState?,
);

class Options$Query$LoginState extends graphql.QueryOptions<Query$LoginState> {
  Options$Query$LoginState({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$LoginState? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$LoginState? onComplete,
    graphql.OnQueryError? onError,
  })  : onCompleteWithParsed = onComplete,
        super(
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
                    data == null ? null : _parserFn$Query$LoginState(data),
                  ),
          onError: onError,
          document: documentNodeQueryLoginState,
          parserFn: _parserFn$Query$LoginState,
        );

  final OnQueryComplete$Query$LoginState? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$LoginState
    extends graphql.WatchQueryOptions<Query$LoginState> {
  WatchOptions$Query$LoginState({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$LoginState? typedOptimisticResult,
    graphql.Context? context,
    Duration? pollInterval,
    bool? eagerlyFetchResults,
    bool carryForwardDataOnException = true,
    bool fetchResults = false,
  }) : super(
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          document: documentNodeQueryLoginState,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$LoginState,
        );
}

class FetchMoreOptions$Query$LoginState extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$LoginState({required graphql.UpdateQuery updateQuery})
      : super(
          updateQuery: updateQuery,
          document: documentNodeQueryLoginState,
        );
}

extension ClientExtension$Query$LoginState on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$LoginState>> query$LoginState(
          [Options$Query$LoginState? options]) async =>
      await this.query(options ?? Options$Query$LoginState());
  graphql.ObservableQuery<Query$LoginState> watchQuery$LoginState(
          [WatchOptions$Query$LoginState? options]) =>
      this.watchQuery(options ?? WatchOptions$Query$LoginState());
  void writeQuery$LoginState({
    required Query$LoginState data,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
            operation:
                graphql.Operation(document: documentNodeQueryLoginState)),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$LoginState? readQuery$LoginState({bool optimistic = true}) {
    final result = this.readQuery(
      graphql.Request(
          operation: graphql.Operation(document: documentNodeQueryLoginState)),
      optimistic: optimistic,
    );
    return result == null ? null : Query$LoginState.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$LoginState> useQuery$LoginState(
        [Options$Query$LoginState? options]) =>
    graphql_flutter.useQuery(options ?? Options$Query$LoginState());
graphql.ObservableQuery<Query$LoginState> useWatchQuery$LoginState(
        [WatchOptions$Query$LoginState? options]) =>
    graphql_flutter.useWatchQuery(options ?? WatchOptions$Query$LoginState());

class Query$LoginState$Widget extends graphql_flutter.Query<Query$LoginState> {
  Query$LoginState$Widget({
    widgets.Key? key,
    Options$Query$LoginState? options,
    required graphql_flutter.QueryBuilder<Query$LoginState> builder,
  }) : super(
          key: key,
          options: options ?? Options$Query$LoginState(),
          builder: builder,
        );
}

class Query$LoginState$loginState {
  Query$LoginState$loginState({
    required this.uuid,
    required this.email,
    this.$__typename = 'User',
  });

  factory Query$LoginState$loginState.fromJson(Map<String, dynamic> json) {
    final l$uuid = json['uuid'];
    final l$email = json['email'];
    final l$$__typename = json['__typename'];
    return Query$LoginState$loginState(
      uuid: (l$uuid as String),
      email: (l$email as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String uuid;

  final String email;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$uuid = uuid;
    _resultData['uuid'] = l$uuid;
    final l$email = email;
    _resultData['email'] = l$email;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$uuid = uuid;
    final l$email = email;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$uuid,
      l$email,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$LoginState$loginState ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$uuid = uuid;
    final lOther$uuid = other.uuid;
    if (l$uuid != lOther$uuid) {
      return false;
    }
    final l$email = email;
    final lOther$email = other.email;
    if (l$email != lOther$email) {
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

extension UtilityExtension$Query$LoginState$loginState
    on Query$LoginState$loginState {
  CopyWith$Query$LoginState$loginState<Query$LoginState$loginState>
      get copyWith => CopyWith$Query$LoginState$loginState(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$LoginState$loginState<TRes> {
  factory CopyWith$Query$LoginState$loginState(
    Query$LoginState$loginState instance,
    TRes Function(Query$LoginState$loginState) then,
  ) = _CopyWithImpl$Query$LoginState$loginState;

  factory CopyWith$Query$LoginState$loginState.stub(TRes res) =
      _CopyWithStubImpl$Query$LoginState$loginState;

  TRes call({
    String? uuid,
    String? email,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$LoginState$loginState<TRes>
    implements CopyWith$Query$LoginState$loginState<TRes> {
  _CopyWithImpl$Query$LoginState$loginState(
    this._instance,
    this._then,
  );

  final Query$LoginState$loginState _instance;

  final TRes Function(Query$LoginState$loginState) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? uuid = _undefined,
    Object? email = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$LoginState$loginState(
        uuid: uuid == _undefined || uuid == null
            ? _instance.uuid
            : (uuid as String),
        email: email == _undefined || email == null
            ? _instance.email
            : (email as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$LoginState$loginState<TRes>
    implements CopyWith$Query$LoginState$loginState<TRes> {
  _CopyWithStubImpl$Query$LoginState$loginState(this._res);

  TRes _res;

  call({
    String? uuid,
    String? email,
    String? $__typename,
  }) =>
      _res;
}
