import 'dart:async';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;
import 'schema.graphql.dart';

class Variables$Mutation$UploadFileUrl {
  factory Variables$Mutation$UploadFileUrl(
          {required Input$CreateUploadUrlRequestInput fileInfo}) =>
      Variables$Mutation$UploadFileUrl._({
        r'fileInfo': fileInfo,
      });

  Variables$Mutation$UploadFileUrl._(this._$data);

  factory Variables$Mutation$UploadFileUrl.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$fileInfo = data['fileInfo'];
    result$data['fileInfo'] = Input$CreateUploadUrlRequestInput.fromJson(
        (l$fileInfo as Map<String, dynamic>));
    return Variables$Mutation$UploadFileUrl._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$CreateUploadUrlRequestInput get fileInfo =>
      (_$data['fileInfo'] as Input$CreateUploadUrlRequestInput);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$fileInfo = fileInfo;
    result$data['fileInfo'] = l$fileInfo.toJson();
    return result$data;
  }

  CopyWith$Variables$Mutation$UploadFileUrl<Variables$Mutation$UploadFileUrl>
      get copyWith => CopyWith$Variables$Mutation$UploadFileUrl(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$UploadFileUrl ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$fileInfo = fileInfo;
    final lOther$fileInfo = other.fileInfo;
    if (l$fileInfo != lOther$fileInfo) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$fileInfo = fileInfo;
    return Object.hashAll([l$fileInfo]);
  }
}

abstract class CopyWith$Variables$Mutation$UploadFileUrl<TRes> {
  factory CopyWith$Variables$Mutation$UploadFileUrl(
    Variables$Mutation$UploadFileUrl instance,
    TRes Function(Variables$Mutation$UploadFileUrl) then,
  ) = _CopyWithImpl$Variables$Mutation$UploadFileUrl;

  factory CopyWith$Variables$Mutation$UploadFileUrl.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$UploadFileUrl;

  TRes call({Input$CreateUploadUrlRequestInput? fileInfo});
}

class _CopyWithImpl$Variables$Mutation$UploadFileUrl<TRes>
    implements CopyWith$Variables$Mutation$UploadFileUrl<TRes> {
  _CopyWithImpl$Variables$Mutation$UploadFileUrl(
    this._instance,
    this._then,
  );

  final Variables$Mutation$UploadFileUrl _instance;

  final TRes Function(Variables$Mutation$UploadFileUrl) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? fileInfo = _undefined}) =>
      _then(Variables$Mutation$UploadFileUrl._({
        ..._instance._$data,
        if (fileInfo != _undefined && fileInfo != null)
          'fileInfo': (fileInfo as Input$CreateUploadUrlRequestInput),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$UploadFileUrl<TRes>
    implements CopyWith$Variables$Mutation$UploadFileUrl<TRes> {
  _CopyWithStubImpl$Variables$Mutation$UploadFileUrl(this._res);

  TRes _res;

  call({Input$CreateUploadUrlRequestInput? fileInfo}) => _res;
}

class Mutation$UploadFileUrl {
  Mutation$UploadFileUrl({
    required this.uploadFileUrl,
    this.$__typename = 'Mutation',
  });

  factory Mutation$UploadFileUrl.fromJson(Map<String, dynamic> json) {
    final l$uploadFileUrl = json['uploadFileUrl'];
    final l$$__typename = json['__typename'];
    return Mutation$UploadFileUrl(
      uploadFileUrl: Mutation$UploadFileUrl$uploadFileUrl.fromJson(
          (l$uploadFileUrl as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$UploadFileUrl$uploadFileUrl uploadFileUrl;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$uploadFileUrl = uploadFileUrl;
    _resultData['uploadFileUrl'] = l$uploadFileUrl.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$uploadFileUrl = uploadFileUrl;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$uploadFileUrl,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$UploadFileUrl || runtimeType != other.runtimeType) {
      return false;
    }
    final l$uploadFileUrl = uploadFileUrl;
    final lOther$uploadFileUrl = other.uploadFileUrl;
    if (l$uploadFileUrl != lOther$uploadFileUrl) {
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

extension UtilityExtension$Mutation$UploadFileUrl on Mutation$UploadFileUrl {
  CopyWith$Mutation$UploadFileUrl<Mutation$UploadFileUrl> get copyWith =>
      CopyWith$Mutation$UploadFileUrl(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$UploadFileUrl<TRes> {
  factory CopyWith$Mutation$UploadFileUrl(
    Mutation$UploadFileUrl instance,
    TRes Function(Mutation$UploadFileUrl) then,
  ) = _CopyWithImpl$Mutation$UploadFileUrl;

  factory CopyWith$Mutation$UploadFileUrl.stub(TRes res) =
      _CopyWithStubImpl$Mutation$UploadFileUrl;

  TRes call({
    Mutation$UploadFileUrl$uploadFileUrl? uploadFileUrl,
    String? $__typename,
  });
  CopyWith$Mutation$UploadFileUrl$uploadFileUrl<TRes> get uploadFileUrl;
}

class _CopyWithImpl$Mutation$UploadFileUrl<TRes>
    implements CopyWith$Mutation$UploadFileUrl<TRes> {
  _CopyWithImpl$Mutation$UploadFileUrl(
    this._instance,
    this._then,
  );

  final Mutation$UploadFileUrl _instance;

  final TRes Function(Mutation$UploadFileUrl) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? uploadFileUrl = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$UploadFileUrl(
        uploadFileUrl: uploadFileUrl == _undefined || uploadFileUrl == null
            ? _instance.uploadFileUrl
            : (uploadFileUrl as Mutation$UploadFileUrl$uploadFileUrl),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Mutation$UploadFileUrl$uploadFileUrl<TRes> get uploadFileUrl {
    final local$uploadFileUrl = _instance.uploadFileUrl;
    return CopyWith$Mutation$UploadFileUrl$uploadFileUrl(
        local$uploadFileUrl, (e) => call(uploadFileUrl: e));
  }
}

class _CopyWithStubImpl$Mutation$UploadFileUrl<TRes>
    implements CopyWith$Mutation$UploadFileUrl<TRes> {
  _CopyWithStubImpl$Mutation$UploadFileUrl(this._res);

  TRes _res;

  call({
    Mutation$UploadFileUrl$uploadFileUrl? uploadFileUrl,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Mutation$UploadFileUrl$uploadFileUrl<TRes> get uploadFileUrl =>
      CopyWith$Mutation$UploadFileUrl$uploadFileUrl.stub(_res);
}

const documentNodeMutationUploadFileUrl = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'UploadFileUrl'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'fileInfo')),
        type: NamedTypeNode(
          name: NameNode(value: 'CreateUploadUrlRequestInput'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'uploadFileUrl'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'fileInfo'),
            value: VariableNode(name: NameNode(value: 'fileInfo')),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'url'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'uuid'),
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
Mutation$UploadFileUrl _parserFn$Mutation$UploadFileUrl(
        Map<String, dynamic> data) =>
    Mutation$UploadFileUrl.fromJson(data);
typedef OnMutationCompleted$Mutation$UploadFileUrl = FutureOr<void> Function(
  Map<String, dynamic>?,
  Mutation$UploadFileUrl?,
);

class Options$Mutation$UploadFileUrl
    extends graphql.MutationOptions<Mutation$UploadFileUrl> {
  Options$Mutation$UploadFileUrl({
    String? operationName,
    required Variables$Mutation$UploadFileUrl variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$UploadFileUrl? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$UploadFileUrl? onCompleted,
    graphql.OnMutationUpdate<Mutation$UploadFileUrl>? update,
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
                    data == null
                        ? null
                        : _parserFn$Mutation$UploadFileUrl(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationUploadFileUrl,
          parserFn: _parserFn$Mutation$UploadFileUrl,
        );

  final OnMutationCompleted$Mutation$UploadFileUrl? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$UploadFileUrl
    extends graphql.WatchQueryOptions<Mutation$UploadFileUrl> {
  WatchOptions$Mutation$UploadFileUrl({
    String? operationName,
    required Variables$Mutation$UploadFileUrl variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$UploadFileUrl? typedOptimisticResult,
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
          document: documentNodeMutationUploadFileUrl,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$UploadFileUrl,
        );
}

extension ClientExtension$Mutation$UploadFileUrl on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$UploadFileUrl>> mutate$UploadFileUrl(
          Options$Mutation$UploadFileUrl options) async =>
      await this.mutate(options);
  graphql.ObservableQuery<Mutation$UploadFileUrl> watchMutation$UploadFileUrl(
          WatchOptions$Mutation$UploadFileUrl options) =>
      this.watchMutation(options);
}

class Mutation$UploadFileUrl$HookResult {
  Mutation$UploadFileUrl$HookResult(
    this.runMutation,
    this.result,
  );

  final RunMutation$Mutation$UploadFileUrl runMutation;

  final graphql.QueryResult<Mutation$UploadFileUrl> result;
}

Mutation$UploadFileUrl$HookResult useMutation$UploadFileUrl(
    [WidgetOptions$Mutation$UploadFileUrl? options]) {
  final result = graphql_flutter
      .useMutation(options ?? WidgetOptions$Mutation$UploadFileUrl());
  return Mutation$UploadFileUrl$HookResult(
    (variables, {optimisticResult, typedOptimisticResult}) =>
        result.runMutation(
      variables.toJson(),
      optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
    ),
    result.result,
  );
}

graphql.ObservableQuery<Mutation$UploadFileUrl> useWatchMutation$UploadFileUrl(
        WatchOptions$Mutation$UploadFileUrl options) =>
    graphql_flutter.useWatchMutation(options);

class WidgetOptions$Mutation$UploadFileUrl
    extends graphql.MutationOptions<Mutation$UploadFileUrl> {
  WidgetOptions$Mutation$UploadFileUrl({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$UploadFileUrl? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$UploadFileUrl? onCompleted,
    graphql.OnMutationUpdate<Mutation$UploadFileUrl>? update,
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
                    data == null
                        ? null
                        : _parserFn$Mutation$UploadFileUrl(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationUploadFileUrl,
          parserFn: _parserFn$Mutation$UploadFileUrl,
        );

  final OnMutationCompleted$Mutation$UploadFileUrl? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

typedef RunMutation$Mutation$UploadFileUrl
    = graphql.MultiSourceResult<Mutation$UploadFileUrl> Function(
  Variables$Mutation$UploadFileUrl, {
  Object? optimisticResult,
  Mutation$UploadFileUrl? typedOptimisticResult,
});
typedef Builder$Mutation$UploadFileUrl = widgets.Widget Function(
  RunMutation$Mutation$UploadFileUrl,
  graphql.QueryResult<Mutation$UploadFileUrl>?,
);

class Mutation$UploadFileUrl$Widget
    extends graphql_flutter.Mutation<Mutation$UploadFileUrl> {
  Mutation$UploadFileUrl$Widget({
    widgets.Key? key,
    WidgetOptions$Mutation$UploadFileUrl? options,
    required Builder$Mutation$UploadFileUrl builder,
  }) : super(
          key: key,
          options: options ?? WidgetOptions$Mutation$UploadFileUrl(),
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

class Mutation$UploadFileUrl$uploadFileUrl {
  Mutation$UploadFileUrl$uploadFileUrl({
    required this.url,
    required this.uuid,
    this.$__typename = 'UploadUrl',
  });

  factory Mutation$UploadFileUrl$uploadFileUrl.fromJson(
      Map<String, dynamic> json) {
    final l$url = json['url'];
    final l$uuid = json['uuid'];
    final l$$__typename = json['__typename'];
    return Mutation$UploadFileUrl$uploadFileUrl(
      url: (l$url as String),
      uuid: (l$uuid as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String url;

  final String uuid;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$url = url;
    _resultData['url'] = l$url;
    final l$uuid = uuid;
    _resultData['uuid'] = l$uuid;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$url = url;
    final l$uuid = uuid;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$url,
      l$uuid,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$UploadFileUrl$uploadFileUrl ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$url = url;
    final lOther$url = other.url;
    if (l$url != lOther$url) {
      return false;
    }
    final l$uuid = uuid;
    final lOther$uuid = other.uuid;
    if (l$uuid != lOther$uuid) {
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

extension UtilityExtension$Mutation$UploadFileUrl$uploadFileUrl
    on Mutation$UploadFileUrl$uploadFileUrl {
  CopyWith$Mutation$UploadFileUrl$uploadFileUrl<
          Mutation$UploadFileUrl$uploadFileUrl>
      get copyWith => CopyWith$Mutation$UploadFileUrl$uploadFileUrl(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$UploadFileUrl$uploadFileUrl<TRes> {
  factory CopyWith$Mutation$UploadFileUrl$uploadFileUrl(
    Mutation$UploadFileUrl$uploadFileUrl instance,
    TRes Function(Mutation$UploadFileUrl$uploadFileUrl) then,
  ) = _CopyWithImpl$Mutation$UploadFileUrl$uploadFileUrl;

  factory CopyWith$Mutation$UploadFileUrl$uploadFileUrl.stub(TRes res) =
      _CopyWithStubImpl$Mutation$UploadFileUrl$uploadFileUrl;

  TRes call({
    String? url,
    String? uuid,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$UploadFileUrl$uploadFileUrl<TRes>
    implements CopyWith$Mutation$UploadFileUrl$uploadFileUrl<TRes> {
  _CopyWithImpl$Mutation$UploadFileUrl$uploadFileUrl(
    this._instance,
    this._then,
  );

  final Mutation$UploadFileUrl$uploadFileUrl _instance;

  final TRes Function(Mutation$UploadFileUrl$uploadFileUrl) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? url = _undefined,
    Object? uuid = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$UploadFileUrl$uploadFileUrl(
        url: url == _undefined || url == null ? _instance.url : (url as String),
        uuid: uuid == _undefined || uuid == null
            ? _instance.uuid
            : (uuid as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$UploadFileUrl$uploadFileUrl<TRes>
    implements CopyWith$Mutation$UploadFileUrl$uploadFileUrl<TRes> {
  _CopyWithStubImpl$Mutation$UploadFileUrl$uploadFileUrl(this._res);

  TRes _res;

  call({
    String? url,
    String? uuid,
    String? $__typename,
  }) =>
      _res;
}
