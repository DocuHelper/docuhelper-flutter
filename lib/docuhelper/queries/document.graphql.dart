import 'dart:async';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;
import 'schema.graphql.dart';

class Variables$Mutation$CreateDocument {
  factory Variables$Mutation$CreateDocument(
          {required Input$CreateDocumentRequestInput request}) =>
      Variables$Mutation$CreateDocument._({
        r'request': request,
      });

  Variables$Mutation$CreateDocument._(this._$data);

  factory Variables$Mutation$CreateDocument.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$request = data['request'];
    result$data['request'] = Input$CreateDocumentRequestInput.fromJson(
        (l$request as Map<String, dynamic>));
    return Variables$Mutation$CreateDocument._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$CreateDocumentRequestInput get request =>
      (_$data['request'] as Input$CreateDocumentRequestInput);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$request = request;
    result$data['request'] = l$request.toJson();
    return result$data;
  }

  CopyWith$Variables$Mutation$CreateDocument<Variables$Mutation$CreateDocument>
      get copyWith => CopyWith$Variables$Mutation$CreateDocument(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$CreateDocument ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$request = request;
    final lOther$request = other.request;
    if (l$request != lOther$request) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$request = request;
    return Object.hashAll([l$request]);
  }
}

abstract class CopyWith$Variables$Mutation$CreateDocument<TRes> {
  factory CopyWith$Variables$Mutation$CreateDocument(
    Variables$Mutation$CreateDocument instance,
    TRes Function(Variables$Mutation$CreateDocument) then,
  ) = _CopyWithImpl$Variables$Mutation$CreateDocument;

  factory CopyWith$Variables$Mutation$CreateDocument.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$CreateDocument;

  TRes call({Input$CreateDocumentRequestInput? request});
}

class _CopyWithImpl$Variables$Mutation$CreateDocument<TRes>
    implements CopyWith$Variables$Mutation$CreateDocument<TRes> {
  _CopyWithImpl$Variables$Mutation$CreateDocument(
    this._instance,
    this._then,
  );

  final Variables$Mutation$CreateDocument _instance;

  final TRes Function(Variables$Mutation$CreateDocument) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? request = _undefined}) =>
      _then(Variables$Mutation$CreateDocument._({
        ..._instance._$data,
        if (request != _undefined && request != null)
          'request': (request as Input$CreateDocumentRequestInput),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$CreateDocument<TRes>
    implements CopyWith$Variables$Mutation$CreateDocument<TRes> {
  _CopyWithStubImpl$Variables$Mutation$CreateDocument(this._res);

  TRes _res;

  call({Input$CreateDocumentRequestInput? request}) => _res;
}

class Mutation$CreateDocument {
  Mutation$CreateDocument({
    required this.createDocument,
    this.$__typename = 'Mutation',
  });

  factory Mutation$CreateDocument.fromJson(Map<String, dynamic> json) {
    final l$createDocument = json['createDocument'];
    final l$$__typename = json['__typename'];
    return Mutation$CreateDocument(
      createDocument: Mutation$CreateDocument$createDocument.fromJson(
          (l$createDocument as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$CreateDocument$createDocument createDocument;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$createDocument = createDocument;
    _resultData['createDocument'] = l$createDocument.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$createDocument = createDocument;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$createDocument,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$CreateDocument || runtimeType != other.runtimeType) {
      return false;
    }
    final l$createDocument = createDocument;
    final lOther$createDocument = other.createDocument;
    if (l$createDocument != lOther$createDocument) {
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

extension UtilityExtension$Mutation$CreateDocument on Mutation$CreateDocument {
  CopyWith$Mutation$CreateDocument<Mutation$CreateDocument> get copyWith =>
      CopyWith$Mutation$CreateDocument(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$CreateDocument<TRes> {
  factory CopyWith$Mutation$CreateDocument(
    Mutation$CreateDocument instance,
    TRes Function(Mutation$CreateDocument) then,
  ) = _CopyWithImpl$Mutation$CreateDocument;

  factory CopyWith$Mutation$CreateDocument.stub(TRes res) =
      _CopyWithStubImpl$Mutation$CreateDocument;

  TRes call({
    Mutation$CreateDocument$createDocument? createDocument,
    String? $__typename,
  });
  CopyWith$Mutation$CreateDocument$createDocument<TRes> get createDocument;
}

class _CopyWithImpl$Mutation$CreateDocument<TRes>
    implements CopyWith$Mutation$CreateDocument<TRes> {
  _CopyWithImpl$Mutation$CreateDocument(
    this._instance,
    this._then,
  );

  final Mutation$CreateDocument _instance;

  final TRes Function(Mutation$CreateDocument) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? createDocument = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$CreateDocument(
        createDocument: createDocument == _undefined || createDocument == null
            ? _instance.createDocument
            : (createDocument as Mutation$CreateDocument$createDocument),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Mutation$CreateDocument$createDocument<TRes> get createDocument {
    final local$createDocument = _instance.createDocument;
    return CopyWith$Mutation$CreateDocument$createDocument(
        local$createDocument, (e) => call(createDocument: e));
  }
}

class _CopyWithStubImpl$Mutation$CreateDocument<TRes>
    implements CopyWith$Mutation$CreateDocument<TRes> {
  _CopyWithStubImpl$Mutation$CreateDocument(this._res);

  TRes _res;

  call({
    Mutation$CreateDocument$createDocument? createDocument,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Mutation$CreateDocument$createDocument<TRes> get createDocument =>
      CopyWith$Mutation$CreateDocument$createDocument.stub(_res);
}

const documentNodeMutationCreateDocument = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'CreateDocument'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'request')),
        type: NamedTypeNode(
          name: NameNode(value: 'CreateDocumentRequestInput'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'createDocument'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'request'),
            value: VariableNode(name: NameNode(value: 'request')),
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
            name: NameNode(value: 'name'),
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
            name: NameNode(value: 'owner'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'file'),
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
Mutation$CreateDocument _parserFn$Mutation$CreateDocument(
        Map<String, dynamic> data) =>
    Mutation$CreateDocument.fromJson(data);
typedef OnMutationCompleted$Mutation$CreateDocument = FutureOr<void> Function(
  Map<String, dynamic>?,
  Mutation$CreateDocument?,
);

class Options$Mutation$CreateDocument
    extends graphql.MutationOptions<Mutation$CreateDocument> {
  Options$Mutation$CreateDocument({
    String? operationName,
    required Variables$Mutation$CreateDocument variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$CreateDocument? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$CreateDocument? onCompleted,
    graphql.OnMutationUpdate<Mutation$CreateDocument>? update,
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
                        : _parserFn$Mutation$CreateDocument(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationCreateDocument,
          parserFn: _parserFn$Mutation$CreateDocument,
        );

  final OnMutationCompleted$Mutation$CreateDocument? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$CreateDocument
    extends graphql.WatchQueryOptions<Mutation$CreateDocument> {
  WatchOptions$Mutation$CreateDocument({
    String? operationName,
    required Variables$Mutation$CreateDocument variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$CreateDocument? typedOptimisticResult,
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
          document: documentNodeMutationCreateDocument,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$CreateDocument,
        );
}

extension ClientExtension$Mutation$CreateDocument on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$CreateDocument>> mutate$CreateDocument(
          Options$Mutation$CreateDocument options) async =>
      await this.mutate(options);
  graphql.ObservableQuery<Mutation$CreateDocument> watchMutation$CreateDocument(
          WatchOptions$Mutation$CreateDocument options) =>
      this.watchMutation(options);
}

class Mutation$CreateDocument$HookResult {
  Mutation$CreateDocument$HookResult(
    this.runMutation,
    this.result,
  );

  final RunMutation$Mutation$CreateDocument runMutation;

  final graphql.QueryResult<Mutation$CreateDocument> result;
}

Mutation$CreateDocument$HookResult useMutation$CreateDocument(
    [WidgetOptions$Mutation$CreateDocument? options]) {
  final result = graphql_flutter
      .useMutation(options ?? WidgetOptions$Mutation$CreateDocument());
  return Mutation$CreateDocument$HookResult(
    (variables, {optimisticResult, typedOptimisticResult}) =>
        result.runMutation(
      variables.toJson(),
      optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
    ),
    result.result,
  );
}

graphql.ObservableQuery<Mutation$CreateDocument>
    useWatchMutation$CreateDocument(
            WatchOptions$Mutation$CreateDocument options) =>
        graphql_flutter.useWatchMutation(options);

class WidgetOptions$Mutation$CreateDocument
    extends graphql.MutationOptions<Mutation$CreateDocument> {
  WidgetOptions$Mutation$CreateDocument({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$CreateDocument? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$CreateDocument? onCompleted,
    graphql.OnMutationUpdate<Mutation$CreateDocument>? update,
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
                        : _parserFn$Mutation$CreateDocument(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationCreateDocument,
          parserFn: _parserFn$Mutation$CreateDocument,
        );

  final OnMutationCompleted$Mutation$CreateDocument? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

typedef RunMutation$Mutation$CreateDocument
    = graphql.MultiSourceResult<Mutation$CreateDocument> Function(
  Variables$Mutation$CreateDocument, {
  Object? optimisticResult,
  Mutation$CreateDocument? typedOptimisticResult,
});
typedef Builder$Mutation$CreateDocument = widgets.Widget Function(
  RunMutation$Mutation$CreateDocument,
  graphql.QueryResult<Mutation$CreateDocument>?,
);

class Mutation$CreateDocument$Widget
    extends graphql_flutter.Mutation<Mutation$CreateDocument> {
  Mutation$CreateDocument$Widget({
    widgets.Key? key,
    WidgetOptions$Mutation$CreateDocument? options,
    required Builder$Mutation$CreateDocument builder,
  }) : super(
          key: key,
          options: options ?? WidgetOptions$Mutation$CreateDocument(),
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

class Mutation$CreateDocument$createDocument {
  Mutation$CreateDocument$createDocument({
    this.uuid,
    required this.name,
    required this.state,
    required this.owner,
    required this.file,
    this.$__typename = 'Document',
  });

  factory Mutation$CreateDocument$createDocument.fromJson(
      Map<String, dynamic> json) {
    final l$uuid = json['uuid'];
    final l$name = json['name'];
    final l$state = json['state'];
    final l$owner = json['owner'];
    final l$file = json['file'];
    final l$$__typename = json['__typename'];
    return Mutation$CreateDocument$createDocument(
      uuid: (l$uuid as String?),
      name: (l$name as String),
      state: fromJson$Enum$DocumentState((l$state as String)),
      owner: (l$owner as String),
      file: (l$file as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String? uuid;

  final String name;

  final Enum$DocumentState state;

  final String owner;

  final String file;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$uuid = uuid;
    _resultData['uuid'] = l$uuid;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$state = state;
    _resultData['state'] = toJson$Enum$DocumentState(l$state);
    final l$owner = owner;
    _resultData['owner'] = l$owner;
    final l$file = file;
    _resultData['file'] = l$file;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$uuid = uuid;
    final l$name = name;
    final l$state = state;
    final l$owner = owner;
    final l$file = file;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$uuid,
      l$name,
      l$state,
      l$owner,
      l$file,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$CreateDocument$createDocument ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$uuid = uuid;
    final lOther$uuid = other.uuid;
    if (l$uuid != lOther$uuid) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$state = state;
    final lOther$state = other.state;
    if (l$state != lOther$state) {
      return false;
    }
    final l$owner = owner;
    final lOther$owner = other.owner;
    if (l$owner != lOther$owner) {
      return false;
    }
    final l$file = file;
    final lOther$file = other.file;
    if (l$file != lOther$file) {
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

extension UtilityExtension$Mutation$CreateDocument$createDocument
    on Mutation$CreateDocument$createDocument {
  CopyWith$Mutation$CreateDocument$createDocument<
          Mutation$CreateDocument$createDocument>
      get copyWith => CopyWith$Mutation$CreateDocument$createDocument(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$CreateDocument$createDocument<TRes> {
  factory CopyWith$Mutation$CreateDocument$createDocument(
    Mutation$CreateDocument$createDocument instance,
    TRes Function(Mutation$CreateDocument$createDocument) then,
  ) = _CopyWithImpl$Mutation$CreateDocument$createDocument;

  factory CopyWith$Mutation$CreateDocument$createDocument.stub(TRes res) =
      _CopyWithStubImpl$Mutation$CreateDocument$createDocument;

  TRes call({
    String? uuid,
    String? name,
    Enum$DocumentState? state,
    String? owner,
    String? file,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$CreateDocument$createDocument<TRes>
    implements CopyWith$Mutation$CreateDocument$createDocument<TRes> {
  _CopyWithImpl$Mutation$CreateDocument$createDocument(
    this._instance,
    this._then,
  );

  final Mutation$CreateDocument$createDocument _instance;

  final TRes Function(Mutation$CreateDocument$createDocument) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? uuid = _undefined,
    Object? name = _undefined,
    Object? state = _undefined,
    Object? owner = _undefined,
    Object? file = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$CreateDocument$createDocument(
        uuid: uuid == _undefined ? _instance.uuid : (uuid as String?),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        state: state == _undefined || state == null
            ? _instance.state
            : (state as Enum$DocumentState),
        owner: owner == _undefined || owner == null
            ? _instance.owner
            : (owner as String),
        file: file == _undefined || file == null
            ? _instance.file
            : (file as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$CreateDocument$createDocument<TRes>
    implements CopyWith$Mutation$CreateDocument$createDocument<TRes> {
  _CopyWithStubImpl$Mutation$CreateDocument$createDocument(this._res);

  TRes _res;

  call({
    String? uuid,
    String? name,
    Enum$DocumentState? state,
    String? owner,
    String? file,
    String? $__typename,
  }) =>
      _res;
}

class Variables$Mutation$DeleteDocument {
  factory Variables$Mutation$DeleteDocument({required String request}) =>
      Variables$Mutation$DeleteDocument._({
        r'request': request,
      });

  Variables$Mutation$DeleteDocument._(this._$data);

  factory Variables$Mutation$DeleteDocument.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$request = data['request'];
    result$data['request'] = (l$request as String);
    return Variables$Mutation$DeleteDocument._(result$data);
  }

  Map<String, dynamic> _$data;

  String get request => (_$data['request'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$request = request;
    result$data['request'] = l$request;
    return result$data;
  }

  CopyWith$Variables$Mutation$DeleteDocument<Variables$Mutation$DeleteDocument>
      get copyWith => CopyWith$Variables$Mutation$DeleteDocument(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$DeleteDocument ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$request = request;
    final lOther$request = other.request;
    if (l$request != lOther$request) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$request = request;
    return Object.hashAll([l$request]);
  }
}

abstract class CopyWith$Variables$Mutation$DeleteDocument<TRes> {
  factory CopyWith$Variables$Mutation$DeleteDocument(
    Variables$Mutation$DeleteDocument instance,
    TRes Function(Variables$Mutation$DeleteDocument) then,
  ) = _CopyWithImpl$Variables$Mutation$DeleteDocument;

  factory CopyWith$Variables$Mutation$DeleteDocument.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$DeleteDocument;

  TRes call({String? request});
}

class _CopyWithImpl$Variables$Mutation$DeleteDocument<TRes>
    implements CopyWith$Variables$Mutation$DeleteDocument<TRes> {
  _CopyWithImpl$Variables$Mutation$DeleteDocument(
    this._instance,
    this._then,
  );

  final Variables$Mutation$DeleteDocument _instance;

  final TRes Function(Variables$Mutation$DeleteDocument) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? request = _undefined}) =>
      _then(Variables$Mutation$DeleteDocument._({
        ..._instance._$data,
        if (request != _undefined && request != null)
          'request': (request as String),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$DeleteDocument<TRes>
    implements CopyWith$Variables$Mutation$DeleteDocument<TRes> {
  _CopyWithStubImpl$Variables$Mutation$DeleteDocument(this._res);

  TRes _res;

  call({String? request}) => _res;
}

class Mutation$DeleteDocument {
  Mutation$DeleteDocument({
    required this.deleteDocument,
    this.$__typename = 'Mutation',
  });

  factory Mutation$DeleteDocument.fromJson(Map<String, dynamic> json) {
    final l$deleteDocument = json['deleteDocument'];
    final l$$__typename = json['__typename'];
    return Mutation$DeleteDocument(
      deleteDocument: (l$deleteDocument as bool),
      $__typename: (l$$__typename as String),
    );
  }

  final bool deleteDocument;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$deleteDocument = deleteDocument;
    _resultData['deleteDocument'] = l$deleteDocument;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$deleteDocument = deleteDocument;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$deleteDocument,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$DeleteDocument || runtimeType != other.runtimeType) {
      return false;
    }
    final l$deleteDocument = deleteDocument;
    final lOther$deleteDocument = other.deleteDocument;
    if (l$deleteDocument != lOther$deleteDocument) {
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

extension UtilityExtension$Mutation$DeleteDocument on Mutation$DeleteDocument {
  CopyWith$Mutation$DeleteDocument<Mutation$DeleteDocument> get copyWith =>
      CopyWith$Mutation$DeleteDocument(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$DeleteDocument<TRes> {
  factory CopyWith$Mutation$DeleteDocument(
    Mutation$DeleteDocument instance,
    TRes Function(Mutation$DeleteDocument) then,
  ) = _CopyWithImpl$Mutation$DeleteDocument;

  factory CopyWith$Mutation$DeleteDocument.stub(TRes res) =
      _CopyWithStubImpl$Mutation$DeleteDocument;

  TRes call({
    bool? deleteDocument,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$DeleteDocument<TRes>
    implements CopyWith$Mutation$DeleteDocument<TRes> {
  _CopyWithImpl$Mutation$DeleteDocument(
    this._instance,
    this._then,
  );

  final Mutation$DeleteDocument _instance;

  final TRes Function(Mutation$DeleteDocument) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? deleteDocument = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$DeleteDocument(
        deleteDocument: deleteDocument == _undefined || deleteDocument == null
            ? _instance.deleteDocument
            : (deleteDocument as bool),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$DeleteDocument<TRes>
    implements CopyWith$Mutation$DeleteDocument<TRes> {
  _CopyWithStubImpl$Mutation$DeleteDocument(this._res);

  TRes _res;

  call({
    bool? deleteDocument,
    String? $__typename,
  }) =>
      _res;
}

const documentNodeMutationDeleteDocument = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'DeleteDocument'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'request')),
        type: NamedTypeNode(
          name: NameNode(value: 'UUID'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'deleteDocument'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'uuid'),
            value: VariableNode(name: NameNode(value: 'request')),
          )
        ],
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
]);
Mutation$DeleteDocument _parserFn$Mutation$DeleteDocument(
        Map<String, dynamic> data) =>
    Mutation$DeleteDocument.fromJson(data);
typedef OnMutationCompleted$Mutation$DeleteDocument = FutureOr<void> Function(
  Map<String, dynamic>?,
  Mutation$DeleteDocument?,
);

class Options$Mutation$DeleteDocument
    extends graphql.MutationOptions<Mutation$DeleteDocument> {
  Options$Mutation$DeleteDocument({
    String? operationName,
    required Variables$Mutation$DeleteDocument variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$DeleteDocument? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$DeleteDocument? onCompleted,
    graphql.OnMutationUpdate<Mutation$DeleteDocument>? update,
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
                        : _parserFn$Mutation$DeleteDocument(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationDeleteDocument,
          parserFn: _parserFn$Mutation$DeleteDocument,
        );

  final OnMutationCompleted$Mutation$DeleteDocument? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$DeleteDocument
    extends graphql.WatchQueryOptions<Mutation$DeleteDocument> {
  WatchOptions$Mutation$DeleteDocument({
    String? operationName,
    required Variables$Mutation$DeleteDocument variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$DeleteDocument? typedOptimisticResult,
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
          document: documentNodeMutationDeleteDocument,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$DeleteDocument,
        );
}

extension ClientExtension$Mutation$DeleteDocument on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$DeleteDocument>> mutate$DeleteDocument(
          Options$Mutation$DeleteDocument options) async =>
      await this.mutate(options);
  graphql.ObservableQuery<Mutation$DeleteDocument> watchMutation$DeleteDocument(
          WatchOptions$Mutation$DeleteDocument options) =>
      this.watchMutation(options);
}

class Mutation$DeleteDocument$HookResult {
  Mutation$DeleteDocument$HookResult(
    this.runMutation,
    this.result,
  );

  final RunMutation$Mutation$DeleteDocument runMutation;

  final graphql.QueryResult<Mutation$DeleteDocument> result;
}

Mutation$DeleteDocument$HookResult useMutation$DeleteDocument(
    [WidgetOptions$Mutation$DeleteDocument? options]) {
  final result = graphql_flutter
      .useMutation(options ?? WidgetOptions$Mutation$DeleteDocument());
  return Mutation$DeleteDocument$HookResult(
    (variables, {optimisticResult, typedOptimisticResult}) =>
        result.runMutation(
      variables.toJson(),
      optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
    ),
    result.result,
  );
}

graphql.ObservableQuery<Mutation$DeleteDocument>
    useWatchMutation$DeleteDocument(
            WatchOptions$Mutation$DeleteDocument options) =>
        graphql_flutter.useWatchMutation(options);

class WidgetOptions$Mutation$DeleteDocument
    extends graphql.MutationOptions<Mutation$DeleteDocument> {
  WidgetOptions$Mutation$DeleteDocument({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$DeleteDocument? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$DeleteDocument? onCompleted,
    graphql.OnMutationUpdate<Mutation$DeleteDocument>? update,
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
                        : _parserFn$Mutation$DeleteDocument(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationDeleteDocument,
          parserFn: _parserFn$Mutation$DeleteDocument,
        );

  final OnMutationCompleted$Mutation$DeleteDocument? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

typedef RunMutation$Mutation$DeleteDocument
    = graphql.MultiSourceResult<Mutation$DeleteDocument> Function(
  Variables$Mutation$DeleteDocument, {
  Object? optimisticResult,
  Mutation$DeleteDocument? typedOptimisticResult,
});
typedef Builder$Mutation$DeleteDocument = widgets.Widget Function(
  RunMutation$Mutation$DeleteDocument,
  graphql.QueryResult<Mutation$DeleteDocument>?,
);

class Mutation$DeleteDocument$Widget
    extends graphql_flutter.Mutation<Mutation$DeleteDocument> {
  Mutation$DeleteDocument$Widget({
    widgets.Key? key,
    WidgetOptions$Mutation$DeleteDocument? options,
    required Builder$Mutation$DeleteDocument builder,
  }) : super(
          key: key,
          options: options ?? WidgetOptions$Mutation$DeleteDocument(),
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

class Variables$Query$FindDocument {
  factory Variables$Query$FindDocument(
          {required Input$DocumentQueryRequestInput query}) =>
      Variables$Query$FindDocument._({
        r'query': query,
      });

  Variables$Query$FindDocument._(this._$data);

  factory Variables$Query$FindDocument.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$query = data['query'];
    result$data['query'] = Input$DocumentQueryRequestInput.fromJson(
        (l$query as Map<String, dynamic>));
    return Variables$Query$FindDocument._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$DocumentQueryRequestInput get query =>
      (_$data['query'] as Input$DocumentQueryRequestInput);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$query = query;
    result$data['query'] = l$query.toJson();
    return result$data;
  }

  CopyWith$Variables$Query$FindDocument<Variables$Query$FindDocument>
      get copyWith => CopyWith$Variables$Query$FindDocument(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$FindDocument ||
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

abstract class CopyWith$Variables$Query$FindDocument<TRes> {
  factory CopyWith$Variables$Query$FindDocument(
    Variables$Query$FindDocument instance,
    TRes Function(Variables$Query$FindDocument) then,
  ) = _CopyWithImpl$Variables$Query$FindDocument;

  factory CopyWith$Variables$Query$FindDocument.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$FindDocument;

  TRes call({Input$DocumentQueryRequestInput? query});
}

class _CopyWithImpl$Variables$Query$FindDocument<TRes>
    implements CopyWith$Variables$Query$FindDocument<TRes> {
  _CopyWithImpl$Variables$Query$FindDocument(
    this._instance,
    this._then,
  );

  final Variables$Query$FindDocument _instance;

  final TRes Function(Variables$Query$FindDocument) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? query = _undefined}) =>
      _then(Variables$Query$FindDocument._({
        ..._instance._$data,
        if (query != _undefined && query != null)
          'query': (query as Input$DocumentQueryRequestInput),
      }));
}

class _CopyWithStubImpl$Variables$Query$FindDocument<TRes>
    implements CopyWith$Variables$Query$FindDocument<TRes> {
  _CopyWithStubImpl$Variables$Query$FindDocument(this._res);

  TRes _res;

  call({Input$DocumentQueryRequestInput? query}) => _res;
}

class Query$FindDocument {
  Query$FindDocument({
    required this.findDocument,
    this.$__typename = 'Query',
  });

  factory Query$FindDocument.fromJson(Map<String, dynamic> json) {
    final l$findDocument = json['findDocument'];
    final l$$__typename = json['__typename'];
    return Query$FindDocument(
      findDocument: (l$findDocument as List<dynamic>)
          .map((e) => Query$FindDocument$findDocument.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$FindDocument$findDocument> findDocument;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$findDocument = findDocument;
    _resultData['findDocument'] =
        l$findDocument.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$findDocument = findDocument;
    final l$$__typename = $__typename;
    return Object.hashAll([
      Object.hashAll(l$findDocument.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$FindDocument || runtimeType != other.runtimeType) {
      return false;
    }
    final l$findDocument = findDocument;
    final lOther$findDocument = other.findDocument;
    if (l$findDocument.length != lOther$findDocument.length) {
      return false;
    }
    for (int i = 0; i < l$findDocument.length; i++) {
      final l$findDocument$entry = l$findDocument[i];
      final lOther$findDocument$entry = lOther$findDocument[i];
      if (l$findDocument$entry != lOther$findDocument$entry) {
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

extension UtilityExtension$Query$FindDocument on Query$FindDocument {
  CopyWith$Query$FindDocument<Query$FindDocument> get copyWith =>
      CopyWith$Query$FindDocument(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$FindDocument<TRes> {
  factory CopyWith$Query$FindDocument(
    Query$FindDocument instance,
    TRes Function(Query$FindDocument) then,
  ) = _CopyWithImpl$Query$FindDocument;

  factory CopyWith$Query$FindDocument.stub(TRes res) =
      _CopyWithStubImpl$Query$FindDocument;

  TRes call({
    List<Query$FindDocument$findDocument>? findDocument,
    String? $__typename,
  });
  TRes findDocument(
      Iterable<Query$FindDocument$findDocument> Function(
              Iterable<
                  CopyWith$Query$FindDocument$findDocument<
                      Query$FindDocument$findDocument>>)
          _fn);
}

class _CopyWithImpl$Query$FindDocument<TRes>
    implements CopyWith$Query$FindDocument<TRes> {
  _CopyWithImpl$Query$FindDocument(
    this._instance,
    this._then,
  );

  final Query$FindDocument _instance;

  final TRes Function(Query$FindDocument) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? findDocument = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$FindDocument(
        findDocument: findDocument == _undefined || findDocument == null
            ? _instance.findDocument
            : (findDocument as List<Query$FindDocument$findDocument>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes findDocument(
          Iterable<Query$FindDocument$findDocument> Function(
                  Iterable<
                      CopyWith$Query$FindDocument$findDocument<
                          Query$FindDocument$findDocument>>)
              _fn) =>
      call(
          findDocument: _fn(_instance.findDocument
              .map((e) => CopyWith$Query$FindDocument$findDocument(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Query$FindDocument<TRes>
    implements CopyWith$Query$FindDocument<TRes> {
  _CopyWithStubImpl$Query$FindDocument(this._res);

  TRes _res;

  call({
    List<Query$FindDocument$findDocument>? findDocument,
    String? $__typename,
  }) =>
      _res;

  findDocument(_fn) => _res;
}

const documentNodeQueryFindDocument = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'FindDocument'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'query')),
        type: NamedTypeNode(
          name: NameNode(value: 'DocumentQueryRequestInput'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'findDocument'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'query'),
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
            name: NameNode(value: 'name'),
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
            name: NameNode(value: 'owner'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'file'),
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
Query$FindDocument _parserFn$Query$FindDocument(Map<String, dynamic> data) =>
    Query$FindDocument.fromJson(data);
typedef OnQueryComplete$Query$FindDocument = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$FindDocument?,
);

class Options$Query$FindDocument
    extends graphql.QueryOptions<Query$FindDocument> {
  Options$Query$FindDocument({
    String? operationName,
    required Variables$Query$FindDocument variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$FindDocument? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$FindDocument? onComplete,
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
                    data == null ? null : _parserFn$Query$FindDocument(data),
                  ),
          onError: onError,
          document: documentNodeQueryFindDocument,
          parserFn: _parserFn$Query$FindDocument,
        );

  final OnQueryComplete$Query$FindDocument? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$FindDocument
    extends graphql.WatchQueryOptions<Query$FindDocument> {
  WatchOptions$Query$FindDocument({
    String? operationName,
    required Variables$Query$FindDocument variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$FindDocument? typedOptimisticResult,
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
          document: documentNodeQueryFindDocument,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$FindDocument,
        );
}

class FetchMoreOptions$Query$FindDocument extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$FindDocument({
    required graphql.UpdateQuery updateQuery,
    required Variables$Query$FindDocument variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables.toJson(),
          document: documentNodeQueryFindDocument,
        );
}

extension ClientExtension$Query$FindDocument on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$FindDocument>> query$FindDocument(
          Options$Query$FindDocument options) async =>
      await this.query(options);
  graphql.ObservableQuery<Query$FindDocument> watchQuery$FindDocument(
          WatchOptions$Query$FindDocument options) =>
      this.watchQuery(options);
  void writeQuery$FindDocument({
    required Query$FindDocument data,
    required Variables$Query$FindDocument variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation: graphql.Operation(document: documentNodeQueryFindDocument),
          variables: variables.toJson(),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$FindDocument? readQuery$FindDocument({
    required Variables$Query$FindDocument variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(document: documentNodeQueryFindDocument),
        variables: variables.toJson(),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$FindDocument.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$FindDocument> useQuery$FindDocument(
        Options$Query$FindDocument options) =>
    graphql_flutter.useQuery(options);
graphql.ObservableQuery<Query$FindDocument> useWatchQuery$FindDocument(
        WatchOptions$Query$FindDocument options) =>
    graphql_flutter.useWatchQuery(options);

class Query$FindDocument$Widget
    extends graphql_flutter.Query<Query$FindDocument> {
  Query$FindDocument$Widget({
    widgets.Key? key,
    required Options$Query$FindDocument options,
    required graphql_flutter.QueryBuilder<Query$FindDocument> builder,
  }) : super(
          key: key,
          options: options,
          builder: builder,
        );
}

class Query$FindDocument$findDocument {
  Query$FindDocument$findDocument({
    this.uuid,
    required this.name,
    required this.state,
    required this.owner,
    required this.file,
    this.$__typename = 'Document',
  });

  factory Query$FindDocument$findDocument.fromJson(Map<String, dynamic> json) {
    final l$uuid = json['uuid'];
    final l$name = json['name'];
    final l$state = json['state'];
    final l$owner = json['owner'];
    final l$file = json['file'];
    final l$$__typename = json['__typename'];
    return Query$FindDocument$findDocument(
      uuid: (l$uuid as String?),
      name: (l$name as String),
      state: fromJson$Enum$DocumentState((l$state as String)),
      owner: (l$owner as String),
      file: (l$file as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String? uuid;

  final String name;

  final Enum$DocumentState state;

  final String owner;

  final String file;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$uuid = uuid;
    _resultData['uuid'] = l$uuid;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$state = state;
    _resultData['state'] = toJson$Enum$DocumentState(l$state);
    final l$owner = owner;
    _resultData['owner'] = l$owner;
    final l$file = file;
    _resultData['file'] = l$file;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$uuid = uuid;
    final l$name = name;
    final l$state = state;
    final l$owner = owner;
    final l$file = file;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$uuid,
      l$name,
      l$state,
      l$owner,
      l$file,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$FindDocument$findDocument ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$uuid = uuid;
    final lOther$uuid = other.uuid;
    if (l$uuid != lOther$uuid) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$state = state;
    final lOther$state = other.state;
    if (l$state != lOther$state) {
      return false;
    }
    final l$owner = owner;
    final lOther$owner = other.owner;
    if (l$owner != lOther$owner) {
      return false;
    }
    final l$file = file;
    final lOther$file = other.file;
    if (l$file != lOther$file) {
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

extension UtilityExtension$Query$FindDocument$findDocument
    on Query$FindDocument$findDocument {
  CopyWith$Query$FindDocument$findDocument<Query$FindDocument$findDocument>
      get copyWith => CopyWith$Query$FindDocument$findDocument(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$FindDocument$findDocument<TRes> {
  factory CopyWith$Query$FindDocument$findDocument(
    Query$FindDocument$findDocument instance,
    TRes Function(Query$FindDocument$findDocument) then,
  ) = _CopyWithImpl$Query$FindDocument$findDocument;

  factory CopyWith$Query$FindDocument$findDocument.stub(TRes res) =
      _CopyWithStubImpl$Query$FindDocument$findDocument;

  TRes call({
    String? uuid,
    String? name,
    Enum$DocumentState? state,
    String? owner,
    String? file,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$FindDocument$findDocument<TRes>
    implements CopyWith$Query$FindDocument$findDocument<TRes> {
  _CopyWithImpl$Query$FindDocument$findDocument(
    this._instance,
    this._then,
  );

  final Query$FindDocument$findDocument _instance;

  final TRes Function(Query$FindDocument$findDocument) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? uuid = _undefined,
    Object? name = _undefined,
    Object? state = _undefined,
    Object? owner = _undefined,
    Object? file = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$FindDocument$findDocument(
        uuid: uuid == _undefined ? _instance.uuid : (uuid as String?),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        state: state == _undefined || state == null
            ? _instance.state
            : (state as Enum$DocumentState),
        owner: owner == _undefined || owner == null
            ? _instance.owner
            : (owner as String),
        file: file == _undefined || file == null
            ? _instance.file
            : (file as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$FindDocument$findDocument<TRes>
    implements CopyWith$Query$FindDocument$findDocument<TRes> {
  _CopyWithStubImpl$Query$FindDocument$findDocument(this._res);

  TRes _res;

  call({
    String? uuid,
    String? name,
    Enum$DocumentState? state,
    String? owner,
    String? file,
    String? $__typename,
  }) =>
      _res;
}
