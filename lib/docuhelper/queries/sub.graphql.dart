import 'dart:async';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;

class Subscription$SubNotice {
  Subscription$SubNotice({required this.subNotice});

  factory Subscription$SubNotice.fromJson(Map<String, dynamic> json) {
    final l$subNotice = json['subNotice'];
    return Subscription$SubNotice(subNotice: (l$subNotice as String));
  }

  final String subNotice;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$subNotice = subNotice;
    _resultData['subNotice'] = l$subNotice;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$subNotice = subNotice;
    return Object.hashAll([l$subNotice]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Subscription$SubNotice || runtimeType != other.runtimeType) {
      return false;
    }
    final l$subNotice = subNotice;
    final lOther$subNotice = other.subNotice;
    if (l$subNotice != lOther$subNotice) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Subscription$SubNotice on Subscription$SubNotice {
  CopyWith$Subscription$SubNotice<Subscription$SubNotice> get copyWith =>
      CopyWith$Subscription$SubNotice(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Subscription$SubNotice<TRes> {
  factory CopyWith$Subscription$SubNotice(
    Subscription$SubNotice instance,
    TRes Function(Subscription$SubNotice) then,
  ) = _CopyWithImpl$Subscription$SubNotice;

  factory CopyWith$Subscription$SubNotice.stub(TRes res) =
      _CopyWithStubImpl$Subscription$SubNotice;

  TRes call({String? subNotice});
}

class _CopyWithImpl$Subscription$SubNotice<TRes>
    implements CopyWith$Subscription$SubNotice<TRes> {
  _CopyWithImpl$Subscription$SubNotice(
    this._instance,
    this._then,
  );

  final Subscription$SubNotice _instance;

  final TRes Function(Subscription$SubNotice) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? subNotice = _undefined}) => _then(Subscription$SubNotice(
      subNotice: subNotice == _undefined || subNotice == null
          ? _instance.subNotice
          : (subNotice as String)));
}

class _CopyWithStubImpl$Subscription$SubNotice<TRes>
    implements CopyWith$Subscription$SubNotice<TRes> {
  _CopyWithStubImpl$Subscription$SubNotice(this._res);

  TRes _res;

  call({String? subNotice}) => _res;
}

const documentNodeSubscriptionSubNotice = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.subscription,
    name: NameNode(value: 'SubNotice'),
    variableDefinitions: [],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'subNotice'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      )
    ]),
  ),
]);
Subscription$SubNotice _parserFn$Subscription$SubNotice(
        Map<String, dynamic> data) =>
    Subscription$SubNotice.fromJson(data);

class Options$Subscription$SubNotice
    extends graphql.SubscriptionOptions<Subscription$SubNotice> {
  Options$Subscription$SubNotice({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Subscription$SubNotice? typedOptimisticResult,
    graphql.Context? context,
  }) : super(
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          document: documentNodeSubscriptionSubNotice,
          parserFn: _parserFn$Subscription$SubNotice,
        );
}

class WatchOptions$Subscription$SubNotice
    extends graphql.WatchQueryOptions<Subscription$SubNotice> {
  WatchOptions$Subscription$SubNotice({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Subscription$SubNotice? typedOptimisticResult,
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
          document: documentNodeSubscriptionSubNotice,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Subscription$SubNotice,
        );
}

class FetchMoreOptions$Subscription$SubNotice extends graphql.FetchMoreOptions {
  FetchMoreOptions$Subscription$SubNotice(
      {required graphql.UpdateQuery updateQuery})
      : super(
          updateQuery: updateQuery,
          document: documentNodeSubscriptionSubNotice,
        );
}

extension ClientExtension$Subscription$SubNotice on graphql.GraphQLClient {
  Stream<graphql.QueryResult<Subscription$SubNotice>> subscribe$SubNotice(
          [Options$Subscription$SubNotice? options]) =>
      this.subscribe(options ?? Options$Subscription$SubNotice());
  graphql.ObservableQuery<Subscription$SubNotice> watchSubscription$SubNotice(
          [WatchOptions$Subscription$SubNotice? options]) =>
      this.watchQuery(options ?? WatchOptions$Subscription$SubNotice());
}

graphql.QueryResult<Subscription$SubNotice> useSubscription$SubNotice(
        Options$Subscription$SubNotice options) =>
    graphql_flutter.useSubscription(options);

class Subscription$SubNotice$Widget
    extends graphql_flutter.Subscription<Subscription$SubNotice> {
  Subscription$SubNotice$Widget({
    widgets.Key? key,
    Options$Subscription$SubNotice? options,
    required graphql_flutter.SubscriptionBuilder<Subscription$SubNotice>
        builder,
    graphql_flutter.OnSubscriptionResult<Subscription$SubNotice>?
        onSubscriptionResult,
  }) : super(
          key: key,
          options: options ?? Options$Subscription$SubNotice(),
          builder: builder,
          onSubscriptionResult: onSubscriptionResult,
        );
}
