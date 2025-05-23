import 'dart:async';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;

class Variables$Subscription$TestSubscription {
  factory Variables$Subscription$TestSubscription({int? limit}) =>
      Variables$Subscription$TestSubscription._({
        if (limit != null) r'limit': limit,
      });

  Variables$Subscription$TestSubscription._(this._$data);

  factory Variables$Subscription$TestSubscription.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('limit')) {
      final l$limit = data['limit'];
      result$data['limit'] = (l$limit as int?);
    }
    return Variables$Subscription$TestSubscription._(result$data);
  }

  Map<String, dynamic> _$data;

  int? get limit => (_$data['limit'] as int?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('limit')) {
      final l$limit = limit;
      result$data['limit'] = l$limit;
    }
    return result$data;
  }

  CopyWith$Variables$Subscription$TestSubscription<
          Variables$Subscription$TestSubscription>
      get copyWith => CopyWith$Variables$Subscription$TestSubscription(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Subscription$TestSubscription ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$limit = limit;
    final lOther$limit = other.limit;
    if (_$data.containsKey('limit') != other._$data.containsKey('limit')) {
      return false;
    }
    if (l$limit != lOther$limit) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$limit = limit;
    return Object.hashAll([_$data.containsKey('limit') ? l$limit : const {}]);
  }
}

abstract class CopyWith$Variables$Subscription$TestSubscription<TRes> {
  factory CopyWith$Variables$Subscription$TestSubscription(
    Variables$Subscription$TestSubscription instance,
    TRes Function(Variables$Subscription$TestSubscription) then,
  ) = _CopyWithImpl$Variables$Subscription$TestSubscription;

  factory CopyWith$Variables$Subscription$TestSubscription.stub(TRes res) =
      _CopyWithStubImpl$Variables$Subscription$TestSubscription;

  TRes call({int? limit});
}

class _CopyWithImpl$Variables$Subscription$TestSubscription<TRes>
    implements CopyWith$Variables$Subscription$TestSubscription<TRes> {
  _CopyWithImpl$Variables$Subscription$TestSubscription(
    this._instance,
    this._then,
  );

  final Variables$Subscription$TestSubscription _instance;

  final TRes Function(Variables$Subscription$TestSubscription) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? limit = _undefined}) =>
      _then(Variables$Subscription$TestSubscription._({
        ..._instance._$data,
        if (limit != _undefined) 'limit': (limit as int?),
      }));
}

class _CopyWithStubImpl$Variables$Subscription$TestSubscription<TRes>
    implements CopyWith$Variables$Subscription$TestSubscription<TRes> {
  _CopyWithStubImpl$Variables$Subscription$TestSubscription(this._res);

  TRes _res;

  call({int? limit}) => _res;
}

class Subscription$TestSubscription {
  Subscription$TestSubscription({required this.counter});

  factory Subscription$TestSubscription.fromJson(Map<String, dynamic> json) {
    final l$counter = json['counter'];
    return Subscription$TestSubscription(
        counter: Subscription$TestSubscription$counter.fromJson(
            (l$counter as Map<String, dynamic>)));
  }

  final Subscription$TestSubscription$counter counter;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$counter = counter;
    _resultData['counter'] = l$counter.toJson();
    return _resultData;
  }

  @override
  int get hashCode {
    final l$counter = counter;
    return Object.hashAll([l$counter]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Subscription$TestSubscription ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$counter = counter;
    final lOther$counter = other.counter;
    if (l$counter != lOther$counter) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Subscription$TestSubscription
    on Subscription$TestSubscription {
  CopyWith$Subscription$TestSubscription<Subscription$TestSubscription>
      get copyWith => CopyWith$Subscription$TestSubscription(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Subscription$TestSubscription<TRes> {
  factory CopyWith$Subscription$TestSubscription(
    Subscription$TestSubscription instance,
    TRes Function(Subscription$TestSubscription) then,
  ) = _CopyWithImpl$Subscription$TestSubscription;

  factory CopyWith$Subscription$TestSubscription.stub(TRes res) =
      _CopyWithStubImpl$Subscription$TestSubscription;

  TRes call({Subscription$TestSubscription$counter? counter});
  CopyWith$Subscription$TestSubscription$counter<TRes> get counter;
}

class _CopyWithImpl$Subscription$TestSubscription<TRes>
    implements CopyWith$Subscription$TestSubscription<TRes> {
  _CopyWithImpl$Subscription$TestSubscription(
    this._instance,
    this._then,
  );

  final Subscription$TestSubscription _instance;

  final TRes Function(Subscription$TestSubscription) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? counter = _undefined}) =>
      _then(Subscription$TestSubscription(
          counter: counter == _undefined || counter == null
              ? _instance.counter
              : (counter as Subscription$TestSubscription$counter)));

  CopyWith$Subscription$TestSubscription$counter<TRes> get counter {
    final local$counter = _instance.counter;
    return CopyWith$Subscription$TestSubscription$counter(
        local$counter, (e) => call(counter: e));
  }
}

class _CopyWithStubImpl$Subscription$TestSubscription<TRes>
    implements CopyWith$Subscription$TestSubscription<TRes> {
  _CopyWithStubImpl$Subscription$TestSubscription(this._res);

  TRes _res;

  call({Subscription$TestSubscription$counter? counter}) => _res;

  CopyWith$Subscription$TestSubscription$counter<TRes> get counter =>
      CopyWith$Subscription$TestSubscription$counter.stub(_res);
}

const documentNodeSubscriptionTestSubscription = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.subscription,
    name: NameNode(value: 'TestSubscription'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'limit')),
        type: NamedTypeNode(
          name: NameNode(value: 'Int'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'counter'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'limit'),
            value: VariableNode(name: NameNode(value: 'limit')),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'value'),
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
      )
    ]),
  ),
]);
Subscription$TestSubscription _parserFn$Subscription$TestSubscription(
        Map<String, dynamic> data) =>
    Subscription$TestSubscription.fromJson(data);

class Options$Subscription$TestSubscription
    extends graphql.SubscriptionOptions<Subscription$TestSubscription> {
  Options$Subscription$TestSubscription({
    String? operationName,
    Variables$Subscription$TestSubscription? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Subscription$TestSubscription? typedOptimisticResult,
    graphql.Context? context,
  }) : super(
          variables: variables?.toJson() ?? {},
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          document: documentNodeSubscriptionTestSubscription,
          parserFn: _parserFn$Subscription$TestSubscription,
        );
}

class WatchOptions$Subscription$TestSubscription
    extends graphql.WatchQueryOptions<Subscription$TestSubscription> {
  WatchOptions$Subscription$TestSubscription({
    String? operationName,
    Variables$Subscription$TestSubscription? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Subscription$TestSubscription? typedOptimisticResult,
    graphql.Context? context,
    Duration? pollInterval,
    bool? eagerlyFetchResults,
    bool carryForwardDataOnException = true,
    bool fetchResults = false,
  }) : super(
          variables: variables?.toJson() ?? {},
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          document: documentNodeSubscriptionTestSubscription,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Subscription$TestSubscription,
        );
}

class FetchMoreOptions$Subscription$TestSubscription
    extends graphql.FetchMoreOptions {
  FetchMoreOptions$Subscription$TestSubscription({
    required graphql.UpdateQuery updateQuery,
    Variables$Subscription$TestSubscription? variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables?.toJson() ?? {},
          document: documentNodeSubscriptionTestSubscription,
        );
}

extension ClientExtension$Subscription$TestSubscription
    on graphql.GraphQLClient {
  Stream<graphql.QueryResult<Subscription$TestSubscription>>
      subscribe$TestSubscription(
              [Options$Subscription$TestSubscription? options]) =>
          this.subscribe(options ?? Options$Subscription$TestSubscription());
  graphql.ObservableQuery<
      Subscription$TestSubscription> watchSubscription$TestSubscription(
          [WatchOptions$Subscription$TestSubscription? options]) =>
      this.watchQuery(options ?? WatchOptions$Subscription$TestSubscription());
}

graphql.QueryResult<Subscription$TestSubscription>
    useSubscription$TestSubscription(
            Options$Subscription$TestSubscription options) =>
        graphql_flutter.useSubscription(options);

class Subscription$TestSubscription$Widget
    extends graphql_flutter.Subscription<Subscription$TestSubscription> {
  Subscription$TestSubscription$Widget({
    widgets.Key? key,
    Options$Subscription$TestSubscription? options,
    required graphql_flutter.SubscriptionBuilder<Subscription$TestSubscription>
        builder,
    graphql_flutter.OnSubscriptionResult<Subscription$TestSubscription>?
        onSubscriptionResult,
  }) : super(
          key: key,
          options: options ?? Options$Subscription$TestSubscription(),
          builder: builder,
          onSubscriptionResult: onSubscriptionResult,
        );
}

class Subscription$TestSubscription$counter {
  Subscription$TestSubscription$counter({
    required this.value,
    this.$__typename = 'CounterResponse',
  });

  factory Subscription$TestSubscription$counter.fromJson(
      Map<String, dynamic> json) {
    final l$value = json['value'];
    final l$$__typename = json['__typename'];
    return Subscription$TestSubscription$counter(
      value: (l$value as int),
      $__typename: (l$$__typename as String),
    );
  }

  final int value;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$value = value;
    _resultData['value'] = l$value;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$value = value;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$value,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Subscription$TestSubscription$counter ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$value = value;
    final lOther$value = other.value;
    if (l$value != lOther$value) {
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

extension UtilityExtension$Subscription$TestSubscription$counter
    on Subscription$TestSubscription$counter {
  CopyWith$Subscription$TestSubscription$counter<
          Subscription$TestSubscription$counter>
      get copyWith => CopyWith$Subscription$TestSubscription$counter(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Subscription$TestSubscription$counter<TRes> {
  factory CopyWith$Subscription$TestSubscription$counter(
    Subscription$TestSubscription$counter instance,
    TRes Function(Subscription$TestSubscription$counter) then,
  ) = _CopyWithImpl$Subscription$TestSubscription$counter;

  factory CopyWith$Subscription$TestSubscription$counter.stub(TRes res) =
      _CopyWithStubImpl$Subscription$TestSubscription$counter;

  TRes call({
    int? value,
    String? $__typename,
  });
}

class _CopyWithImpl$Subscription$TestSubscription$counter<TRes>
    implements CopyWith$Subscription$TestSubscription$counter<TRes> {
  _CopyWithImpl$Subscription$TestSubscription$counter(
    this._instance,
    this._then,
  );

  final Subscription$TestSubscription$counter _instance;

  final TRes Function(Subscription$TestSubscription$counter) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? value = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Subscription$TestSubscription$counter(
        value: value == _undefined || value == null
            ? _instance.value
            : (value as int),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Subscription$TestSubscription$counter<TRes>
    implements CopyWith$Subscription$TestSubscription$counter<TRes> {
  _CopyWithStubImpl$Subscription$TestSubscription$counter(this._res);

  TRes _res;

  call({
    int? value,
    String? $__typename,
  }) =>
      _res;
}
