class Input$AnswerRefQueryRequestInput {
  factory Input$AnswerRefQueryRequestInput({
    required String chat,
    Input$PaginationInput? pagination,
  }) =>
      Input$AnswerRefQueryRequestInput._({
        r'chat': chat,
        if (pagination != null) r'pagination': pagination,
      });

  Input$AnswerRefQueryRequestInput._(this._$data);

  factory Input$AnswerRefQueryRequestInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$chat = data['chat'];
    result$data['chat'] = (l$chat as String);
    if (data.containsKey('pagination')) {
      final l$pagination = data['pagination'];
      result$data['pagination'] = l$pagination == null
          ? null
          : Input$PaginationInput.fromJson(
              (l$pagination as Map<String, dynamic>));
    }
    return Input$AnswerRefQueryRequestInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String get chat => (_$data['chat'] as String);

  Input$PaginationInput? get pagination =>
      (_$data['pagination'] as Input$PaginationInput?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$chat = chat;
    result$data['chat'] = l$chat;
    if (_$data.containsKey('pagination')) {
      final l$pagination = pagination;
      result$data['pagination'] = l$pagination?.toJson();
    }
    return result$data;
  }

  CopyWith$Input$AnswerRefQueryRequestInput<Input$AnswerRefQueryRequestInput>
      get copyWith => CopyWith$Input$AnswerRefQueryRequestInput(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$AnswerRefQueryRequestInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$chat = chat;
    final lOther$chat = other.chat;
    if (l$chat != lOther$chat) {
      return false;
    }
    final l$pagination = pagination;
    final lOther$pagination = other.pagination;
    if (_$data.containsKey('pagination') !=
        other._$data.containsKey('pagination')) {
      return false;
    }
    if (l$pagination != lOther$pagination) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$chat = chat;
    final l$pagination = pagination;
    return Object.hashAll([
      l$chat,
      _$data.containsKey('pagination') ? l$pagination : const {},
    ]);
  }
}

abstract class CopyWith$Input$AnswerRefQueryRequestInput<TRes> {
  factory CopyWith$Input$AnswerRefQueryRequestInput(
    Input$AnswerRefQueryRequestInput instance,
    TRes Function(Input$AnswerRefQueryRequestInput) then,
  ) = _CopyWithImpl$Input$AnswerRefQueryRequestInput;

  factory CopyWith$Input$AnswerRefQueryRequestInput.stub(TRes res) =
      _CopyWithStubImpl$Input$AnswerRefQueryRequestInput;

  TRes call({
    String? chat,
    Input$PaginationInput? pagination,
  });
  CopyWith$Input$PaginationInput<TRes> get pagination;
}

class _CopyWithImpl$Input$AnswerRefQueryRequestInput<TRes>
    implements CopyWith$Input$AnswerRefQueryRequestInput<TRes> {
  _CopyWithImpl$Input$AnswerRefQueryRequestInput(
    this._instance,
    this._then,
  );

  final Input$AnswerRefQueryRequestInput _instance;

  final TRes Function(Input$AnswerRefQueryRequestInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? chat = _undefined,
    Object? pagination = _undefined,
  }) =>
      _then(Input$AnswerRefQueryRequestInput._({
        ..._instance._$data,
        if (chat != _undefined && chat != null) 'chat': (chat as String),
        if (pagination != _undefined)
          'pagination': (pagination as Input$PaginationInput?),
      }));

  CopyWith$Input$PaginationInput<TRes> get pagination {
    final local$pagination = _instance.pagination;
    return local$pagination == null
        ? CopyWith$Input$PaginationInput.stub(_then(_instance))
        : CopyWith$Input$PaginationInput(
            local$pagination, (e) => call(pagination: e));
  }
}

class _CopyWithStubImpl$Input$AnswerRefQueryRequestInput<TRes>
    implements CopyWith$Input$AnswerRefQueryRequestInput<TRes> {
  _CopyWithStubImpl$Input$AnswerRefQueryRequestInput(this._res);

  TRes _res;

  call({
    String? chat,
    Input$PaginationInput? pagination,
  }) =>
      _res;

  CopyWith$Input$PaginationInput<TRes> get pagination =>
      CopyWith$Input$PaginationInput.stub(_res);
}

class Input$ChatQueryRequestInput {
  factory Input$ChatQueryRequestInput({
    String? document,
    Input$PaginationInput? pagination,
  }) =>
      Input$ChatQueryRequestInput._({
        if (document != null) r'document': document,
        if (pagination != null) r'pagination': pagination,
      });

  Input$ChatQueryRequestInput._(this._$data);

  factory Input$ChatQueryRequestInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('document')) {
      final l$document = data['document'];
      result$data['document'] = (l$document as String?);
    }
    if (data.containsKey('pagination')) {
      final l$pagination = data['pagination'];
      result$data['pagination'] = l$pagination == null
          ? null
          : Input$PaginationInput.fromJson(
              (l$pagination as Map<String, dynamic>));
    }
    return Input$ChatQueryRequestInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get document => (_$data['document'] as String?);

  Input$PaginationInput? get pagination =>
      (_$data['pagination'] as Input$PaginationInput?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('document')) {
      final l$document = document;
      result$data['document'] = l$document;
    }
    if (_$data.containsKey('pagination')) {
      final l$pagination = pagination;
      result$data['pagination'] = l$pagination?.toJson();
    }
    return result$data;
  }

  CopyWith$Input$ChatQueryRequestInput<Input$ChatQueryRequestInput>
      get copyWith => CopyWith$Input$ChatQueryRequestInput(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$ChatQueryRequestInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$document = document;
    final lOther$document = other.document;
    if (_$data.containsKey('document') !=
        other._$data.containsKey('document')) {
      return false;
    }
    if (l$document != lOther$document) {
      return false;
    }
    final l$pagination = pagination;
    final lOther$pagination = other.pagination;
    if (_$data.containsKey('pagination') !=
        other._$data.containsKey('pagination')) {
      return false;
    }
    if (l$pagination != lOther$pagination) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$document = document;
    final l$pagination = pagination;
    return Object.hashAll([
      _$data.containsKey('document') ? l$document : const {},
      _$data.containsKey('pagination') ? l$pagination : const {},
    ]);
  }
}

abstract class CopyWith$Input$ChatQueryRequestInput<TRes> {
  factory CopyWith$Input$ChatQueryRequestInput(
    Input$ChatQueryRequestInput instance,
    TRes Function(Input$ChatQueryRequestInput) then,
  ) = _CopyWithImpl$Input$ChatQueryRequestInput;

  factory CopyWith$Input$ChatQueryRequestInput.stub(TRes res) =
      _CopyWithStubImpl$Input$ChatQueryRequestInput;

  TRes call({
    String? document,
    Input$PaginationInput? pagination,
  });
  CopyWith$Input$PaginationInput<TRes> get pagination;
}

class _CopyWithImpl$Input$ChatQueryRequestInput<TRes>
    implements CopyWith$Input$ChatQueryRequestInput<TRes> {
  _CopyWithImpl$Input$ChatQueryRequestInput(
    this._instance,
    this._then,
  );

  final Input$ChatQueryRequestInput _instance;

  final TRes Function(Input$ChatQueryRequestInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? document = _undefined,
    Object? pagination = _undefined,
  }) =>
      _then(Input$ChatQueryRequestInput._({
        ..._instance._$data,
        if (document != _undefined) 'document': (document as String?),
        if (pagination != _undefined)
          'pagination': (pagination as Input$PaginationInput?),
      }));

  CopyWith$Input$PaginationInput<TRes> get pagination {
    final local$pagination = _instance.pagination;
    return local$pagination == null
        ? CopyWith$Input$PaginationInput.stub(_then(_instance))
        : CopyWith$Input$PaginationInput(
            local$pagination, (e) => call(pagination: e));
  }
}

class _CopyWithStubImpl$Input$ChatQueryRequestInput<TRes>
    implements CopyWith$Input$ChatQueryRequestInput<TRes> {
  _CopyWithStubImpl$Input$ChatQueryRequestInput(this._res);

  TRes _res;

  call({
    String? document,
    Input$PaginationInput? pagination,
  }) =>
      _res;

  CopyWith$Input$PaginationInput<TRes> get pagination =>
      CopyWith$Input$PaginationInput.stub(_res);
}

class Input$ChatSendRequestInput {
  factory Input$ChatSendRequestInput({
    required String ask,
    required String document,
  }) =>
      Input$ChatSendRequestInput._({
        r'ask': ask,
        r'document': document,
      });

  Input$ChatSendRequestInput._(this._$data);

  factory Input$ChatSendRequestInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$ask = data['ask'];
    result$data['ask'] = (l$ask as String);
    final l$document = data['document'];
    result$data['document'] = (l$document as String);
    return Input$ChatSendRequestInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String get ask => (_$data['ask'] as String);

  String get document => (_$data['document'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$ask = ask;
    result$data['ask'] = l$ask;
    final l$document = document;
    result$data['document'] = l$document;
    return result$data;
  }

  CopyWith$Input$ChatSendRequestInput<Input$ChatSendRequestInput>
      get copyWith => CopyWith$Input$ChatSendRequestInput(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$ChatSendRequestInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$ask = ask;
    final lOther$ask = other.ask;
    if (l$ask != lOther$ask) {
      return false;
    }
    final l$document = document;
    final lOther$document = other.document;
    if (l$document != lOther$document) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$ask = ask;
    final l$document = document;
    return Object.hashAll([
      l$ask,
      l$document,
    ]);
  }
}

abstract class CopyWith$Input$ChatSendRequestInput<TRes> {
  factory CopyWith$Input$ChatSendRequestInput(
    Input$ChatSendRequestInput instance,
    TRes Function(Input$ChatSendRequestInput) then,
  ) = _CopyWithImpl$Input$ChatSendRequestInput;

  factory CopyWith$Input$ChatSendRequestInput.stub(TRes res) =
      _CopyWithStubImpl$Input$ChatSendRequestInput;

  TRes call({
    String? ask,
    String? document,
  });
}

class _CopyWithImpl$Input$ChatSendRequestInput<TRes>
    implements CopyWith$Input$ChatSendRequestInput<TRes> {
  _CopyWithImpl$Input$ChatSendRequestInput(
    this._instance,
    this._then,
  );

  final Input$ChatSendRequestInput _instance;

  final TRes Function(Input$ChatSendRequestInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? ask = _undefined,
    Object? document = _undefined,
  }) =>
      _then(Input$ChatSendRequestInput._({
        ..._instance._$data,
        if (ask != _undefined && ask != null) 'ask': (ask as String),
        if (document != _undefined && document != null)
          'document': (document as String),
      }));
}

class _CopyWithStubImpl$Input$ChatSendRequestInput<TRes>
    implements CopyWith$Input$ChatSendRequestInput<TRes> {
  _CopyWithStubImpl$Input$ChatSendRequestInput(this._res);

  TRes _res;

  call({
    String? ask,
    String? document,
  }) =>
      _res;
}

class Input$CreateDocumentRequestInput {
  factory Input$CreateDocumentRequestInput({
    required String file,
    required String name,
    required Enum$DocumentType type,
  }) =>
      Input$CreateDocumentRequestInput._({
        r'file': file,
        r'name': name,
        r'type': type,
      });

  Input$CreateDocumentRequestInput._(this._$data);

  factory Input$CreateDocumentRequestInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$file = data['file'];
    result$data['file'] = (l$file as String);
    final l$name = data['name'];
    result$data['name'] = (l$name as String);
    final l$type = data['type'];
    result$data['type'] = fromJson$Enum$DocumentType((l$type as String));
    return Input$CreateDocumentRequestInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String get file => (_$data['file'] as String);

  String get name => (_$data['name'] as String);

  Enum$DocumentType get type => (_$data['type'] as Enum$DocumentType);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$file = file;
    result$data['file'] = l$file;
    final l$name = name;
    result$data['name'] = l$name;
    final l$type = type;
    result$data['type'] = toJson$Enum$DocumentType(l$type);
    return result$data;
  }

  CopyWith$Input$CreateDocumentRequestInput<Input$CreateDocumentRequestInput>
      get copyWith => CopyWith$Input$CreateDocumentRequestInput(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$CreateDocumentRequestInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$file = file;
    final lOther$file = other.file;
    if (l$file != lOther$file) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$type = type;
    final lOther$type = other.type;
    if (l$type != lOther$type) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$file = file;
    final l$name = name;
    final l$type = type;
    return Object.hashAll([
      l$file,
      l$name,
      l$type,
    ]);
  }
}

abstract class CopyWith$Input$CreateDocumentRequestInput<TRes> {
  factory CopyWith$Input$CreateDocumentRequestInput(
    Input$CreateDocumentRequestInput instance,
    TRes Function(Input$CreateDocumentRequestInput) then,
  ) = _CopyWithImpl$Input$CreateDocumentRequestInput;

  factory CopyWith$Input$CreateDocumentRequestInput.stub(TRes res) =
      _CopyWithStubImpl$Input$CreateDocumentRequestInput;

  TRes call({
    String? file,
    String? name,
    Enum$DocumentType? type,
  });
}

class _CopyWithImpl$Input$CreateDocumentRequestInput<TRes>
    implements CopyWith$Input$CreateDocumentRequestInput<TRes> {
  _CopyWithImpl$Input$CreateDocumentRequestInput(
    this._instance,
    this._then,
  );

  final Input$CreateDocumentRequestInput _instance;

  final TRes Function(Input$CreateDocumentRequestInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? file = _undefined,
    Object? name = _undefined,
    Object? type = _undefined,
  }) =>
      _then(Input$CreateDocumentRequestInput._({
        ..._instance._$data,
        if (file != _undefined && file != null) 'file': (file as String),
        if (name != _undefined && name != null) 'name': (name as String),
        if (type != _undefined && type != null)
          'type': (type as Enum$DocumentType),
      }));
}

class _CopyWithStubImpl$Input$CreateDocumentRequestInput<TRes>
    implements CopyWith$Input$CreateDocumentRequestInput<TRes> {
  _CopyWithStubImpl$Input$CreateDocumentRequestInput(this._res);

  TRes _res;

  call({
    String? file,
    String? name,
    Enum$DocumentType? type,
  }) =>
      _res;
}

class Input$CreateUploadUrlRequestInput {
  factory Input$CreateUploadUrlRequestInput({
    required String $extension,
    required String name,
    required String size,
  }) =>
      Input$CreateUploadUrlRequestInput._({
        r'extension': $extension,
        r'name': name,
        r'size': size,
      });

  Input$CreateUploadUrlRequestInput._(this._$data);

  factory Input$CreateUploadUrlRequestInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$$extension = data['extension'];
    result$data['extension'] = (l$$extension as String);
    final l$name = data['name'];
    result$data['name'] = (l$name as String);
    final l$size = data['size'];
    result$data['size'] = (l$size as String);
    return Input$CreateUploadUrlRequestInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String get $extension => (_$data['extension'] as String);

  String get name => (_$data['name'] as String);

  String get size => (_$data['size'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$$extension = $extension;
    result$data['extension'] = l$$extension;
    final l$name = name;
    result$data['name'] = l$name;
    final l$size = size;
    result$data['size'] = l$size;
    return result$data;
  }

  CopyWith$Input$CreateUploadUrlRequestInput<Input$CreateUploadUrlRequestInput>
      get copyWith => CopyWith$Input$CreateUploadUrlRequestInput(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$CreateUploadUrlRequestInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$$extension = $extension;
    final lOther$$extension = other.$extension;
    if (l$$extension != lOther$$extension) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$size = size;
    final lOther$size = other.size;
    if (l$size != lOther$size) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$$extension = $extension;
    final l$name = name;
    final l$size = size;
    return Object.hashAll([
      l$$extension,
      l$name,
      l$size,
    ]);
  }
}

abstract class CopyWith$Input$CreateUploadUrlRequestInput<TRes> {
  factory CopyWith$Input$CreateUploadUrlRequestInput(
    Input$CreateUploadUrlRequestInput instance,
    TRes Function(Input$CreateUploadUrlRequestInput) then,
  ) = _CopyWithImpl$Input$CreateUploadUrlRequestInput;

  factory CopyWith$Input$CreateUploadUrlRequestInput.stub(TRes res) =
      _CopyWithStubImpl$Input$CreateUploadUrlRequestInput;

  TRes call({
    String? $extension,
    String? name,
    String? size,
  });
}

class _CopyWithImpl$Input$CreateUploadUrlRequestInput<TRes>
    implements CopyWith$Input$CreateUploadUrlRequestInput<TRes> {
  _CopyWithImpl$Input$CreateUploadUrlRequestInput(
    this._instance,
    this._then,
  );

  final Input$CreateUploadUrlRequestInput _instance;

  final TRes Function(Input$CreateUploadUrlRequestInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? $extension = _undefined,
    Object? name = _undefined,
    Object? size = _undefined,
  }) =>
      _then(Input$CreateUploadUrlRequestInput._({
        ..._instance._$data,
        if ($extension != _undefined && $extension != null)
          'extension': ($extension as String),
        if (name != _undefined && name != null) 'name': (name as String),
        if (size != _undefined && size != null) 'size': (size as String),
      }));
}

class _CopyWithStubImpl$Input$CreateUploadUrlRequestInput<TRes>
    implements CopyWith$Input$CreateUploadUrlRequestInput<TRes> {
  _CopyWithStubImpl$Input$CreateUploadUrlRequestInput(this._res);

  TRes _res;

  call({
    String? $extension,
    String? name,
    String? size,
  }) =>
      _res;
}

class Input$DocumentQueryRequestInput {
  factory Input$DocumentQueryRequestInput({
    String? name,
    Input$PaginationInput? pagination,
    Enum$DocumentState? state,
    String? uuid,
  }) =>
      Input$DocumentQueryRequestInput._({
        if (name != null) r'name': name,
        if (pagination != null) r'pagination': pagination,
        if (state != null) r'state': state,
        if (uuid != null) r'uuid': uuid,
      });

  Input$DocumentQueryRequestInput._(this._$data);

  factory Input$DocumentQueryRequestInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('name')) {
      final l$name = data['name'];
      result$data['name'] = (l$name as String?);
    }
    if (data.containsKey('pagination')) {
      final l$pagination = data['pagination'];
      result$data['pagination'] = l$pagination == null
          ? null
          : Input$PaginationInput.fromJson(
              (l$pagination as Map<String, dynamic>));
    }
    if (data.containsKey('state')) {
      final l$state = data['state'];
      result$data['state'] = l$state == null
          ? null
          : fromJson$Enum$DocumentState((l$state as String));
    }
    if (data.containsKey('uuid')) {
      final l$uuid = data['uuid'];
      result$data['uuid'] = (l$uuid as String?);
    }
    return Input$DocumentQueryRequestInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get name => (_$data['name'] as String?);

  Input$PaginationInput? get pagination =>
      (_$data['pagination'] as Input$PaginationInput?);

  Enum$DocumentState? get state => (_$data['state'] as Enum$DocumentState?);

  String? get uuid => (_$data['uuid'] as String?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('name')) {
      final l$name = name;
      result$data['name'] = l$name;
    }
    if (_$data.containsKey('pagination')) {
      final l$pagination = pagination;
      result$data['pagination'] = l$pagination?.toJson();
    }
    if (_$data.containsKey('state')) {
      final l$state = state;
      result$data['state'] =
          l$state == null ? null : toJson$Enum$DocumentState(l$state);
    }
    if (_$data.containsKey('uuid')) {
      final l$uuid = uuid;
      result$data['uuid'] = l$uuid;
    }
    return result$data;
  }

  CopyWith$Input$DocumentQueryRequestInput<Input$DocumentQueryRequestInput>
      get copyWith => CopyWith$Input$DocumentQueryRequestInput(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$DocumentQueryRequestInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (_$data.containsKey('name') != other._$data.containsKey('name')) {
      return false;
    }
    if (l$name != lOther$name) {
      return false;
    }
    final l$pagination = pagination;
    final lOther$pagination = other.pagination;
    if (_$data.containsKey('pagination') !=
        other._$data.containsKey('pagination')) {
      return false;
    }
    if (l$pagination != lOther$pagination) {
      return false;
    }
    final l$state = state;
    final lOther$state = other.state;
    if (_$data.containsKey('state') != other._$data.containsKey('state')) {
      return false;
    }
    if (l$state != lOther$state) {
      return false;
    }
    final l$uuid = uuid;
    final lOther$uuid = other.uuid;
    if (_$data.containsKey('uuid') != other._$data.containsKey('uuid')) {
      return false;
    }
    if (l$uuid != lOther$uuid) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$name = name;
    final l$pagination = pagination;
    final l$state = state;
    final l$uuid = uuid;
    return Object.hashAll([
      _$data.containsKey('name') ? l$name : const {},
      _$data.containsKey('pagination') ? l$pagination : const {},
      _$data.containsKey('state') ? l$state : const {},
      _$data.containsKey('uuid') ? l$uuid : const {},
    ]);
  }
}

abstract class CopyWith$Input$DocumentQueryRequestInput<TRes> {
  factory CopyWith$Input$DocumentQueryRequestInput(
    Input$DocumentQueryRequestInput instance,
    TRes Function(Input$DocumentQueryRequestInput) then,
  ) = _CopyWithImpl$Input$DocumentQueryRequestInput;

  factory CopyWith$Input$DocumentQueryRequestInput.stub(TRes res) =
      _CopyWithStubImpl$Input$DocumentQueryRequestInput;

  TRes call({
    String? name,
    Input$PaginationInput? pagination,
    Enum$DocumentState? state,
    String? uuid,
  });
  CopyWith$Input$PaginationInput<TRes> get pagination;
}

class _CopyWithImpl$Input$DocumentQueryRequestInput<TRes>
    implements CopyWith$Input$DocumentQueryRequestInput<TRes> {
  _CopyWithImpl$Input$DocumentQueryRequestInput(
    this._instance,
    this._then,
  );

  final Input$DocumentQueryRequestInput _instance;

  final TRes Function(Input$DocumentQueryRequestInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? name = _undefined,
    Object? pagination = _undefined,
    Object? state = _undefined,
    Object? uuid = _undefined,
  }) =>
      _then(Input$DocumentQueryRequestInput._({
        ..._instance._$data,
        if (name != _undefined) 'name': (name as String?),
        if (pagination != _undefined)
          'pagination': (pagination as Input$PaginationInput?),
        if (state != _undefined) 'state': (state as Enum$DocumentState?),
        if (uuid != _undefined) 'uuid': (uuid as String?),
      }));

  CopyWith$Input$PaginationInput<TRes> get pagination {
    final local$pagination = _instance.pagination;
    return local$pagination == null
        ? CopyWith$Input$PaginationInput.stub(_then(_instance))
        : CopyWith$Input$PaginationInput(
            local$pagination, (e) => call(pagination: e));
  }
}

class _CopyWithStubImpl$Input$DocumentQueryRequestInput<TRes>
    implements CopyWith$Input$DocumentQueryRequestInput<TRes> {
  _CopyWithStubImpl$Input$DocumentQueryRequestInput(this._res);

  TRes _res;

  call({
    String? name,
    Input$PaginationInput? pagination,
    Enum$DocumentState? state,
    String? uuid,
  }) =>
      _res;

  CopyWith$Input$PaginationInput<TRes> get pagination =>
      CopyWith$Input$PaginationInput.stub(_res);
}

class Input$PaginationInput {
  factory Input$PaginationInput({
    required int limit,
    required String offset,
  }) =>
      Input$PaginationInput._({
        r'limit': limit,
        r'offset': offset,
      });

  Input$PaginationInput._(this._$data);

  factory Input$PaginationInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$limit = data['limit'];
    result$data['limit'] = (l$limit as int);
    final l$offset = data['offset'];
    result$data['offset'] = (l$offset as String);
    return Input$PaginationInput._(result$data);
  }

  Map<String, dynamic> _$data;

  int get limit => (_$data['limit'] as int);

  String get offset => (_$data['offset'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$limit = limit;
    result$data['limit'] = l$limit;
    final l$offset = offset;
    result$data['offset'] = l$offset;
    return result$data;
  }

  CopyWith$Input$PaginationInput<Input$PaginationInput> get copyWith =>
      CopyWith$Input$PaginationInput(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$PaginationInput || runtimeType != other.runtimeType) {
      return false;
    }
    final l$limit = limit;
    final lOther$limit = other.limit;
    if (l$limit != lOther$limit) {
      return false;
    }
    final l$offset = offset;
    final lOther$offset = other.offset;
    if (l$offset != lOther$offset) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$limit = limit;
    final l$offset = offset;
    return Object.hashAll([
      l$limit,
      l$offset,
    ]);
  }
}

abstract class CopyWith$Input$PaginationInput<TRes> {
  factory CopyWith$Input$PaginationInput(
    Input$PaginationInput instance,
    TRes Function(Input$PaginationInput) then,
  ) = _CopyWithImpl$Input$PaginationInput;

  factory CopyWith$Input$PaginationInput.stub(TRes res) =
      _CopyWithStubImpl$Input$PaginationInput;

  TRes call({
    int? limit,
    String? offset,
  });
}

class _CopyWithImpl$Input$PaginationInput<TRes>
    implements CopyWith$Input$PaginationInput<TRes> {
  _CopyWithImpl$Input$PaginationInput(
    this._instance,
    this._then,
  );

  final Input$PaginationInput _instance;

  final TRes Function(Input$PaginationInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? limit = _undefined,
    Object? offset = _undefined,
  }) =>
      _then(Input$PaginationInput._({
        ..._instance._$data,
        if (limit != _undefined && limit != null) 'limit': (limit as int),
        if (offset != _undefined && offset != null)
          'offset': (offset as String),
      }));
}

class _CopyWithStubImpl$Input$PaginationInput<TRes>
    implements CopyWith$Input$PaginationInput<TRes> {
  _CopyWithStubImpl$Input$PaginationInput(this._res);

  TRes _res;

  call({
    int? limit,
    String? offset,
  }) =>
      _res;
}

class Input$TestRequestInput {
  factory Input$TestRequestInput({required int value}) =>
      Input$TestRequestInput._({
        r'value': value,
      });

  Input$TestRequestInput._(this._$data);

  factory Input$TestRequestInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$value = data['value'];
    result$data['value'] = (l$value as int);
    return Input$TestRequestInput._(result$data);
  }

  Map<String, dynamic> _$data;

  int get value => (_$data['value'] as int);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$value = value;
    result$data['value'] = l$value;
    return result$data;
  }

  CopyWith$Input$TestRequestInput<Input$TestRequestInput> get copyWith =>
      CopyWith$Input$TestRequestInput(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$TestRequestInput || runtimeType != other.runtimeType) {
      return false;
    }
    final l$value = value;
    final lOther$value = other.value;
    if (l$value != lOther$value) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$value = value;
    return Object.hashAll([l$value]);
  }
}

abstract class CopyWith$Input$TestRequestInput<TRes> {
  factory CopyWith$Input$TestRequestInput(
    Input$TestRequestInput instance,
    TRes Function(Input$TestRequestInput) then,
  ) = _CopyWithImpl$Input$TestRequestInput;

  factory CopyWith$Input$TestRequestInput.stub(TRes res) =
      _CopyWithStubImpl$Input$TestRequestInput;

  TRes call({int? value});
}

class _CopyWithImpl$Input$TestRequestInput<TRes>
    implements CopyWith$Input$TestRequestInput<TRes> {
  _CopyWithImpl$Input$TestRequestInput(
    this._instance,
    this._then,
  );

  final Input$TestRequestInput _instance;

  final TRes Function(Input$TestRequestInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? value = _undefined}) => _then(Input$TestRequestInput._({
        ..._instance._$data,
        if (value != _undefined && value != null) 'value': (value as int),
      }));
}

class _CopyWithStubImpl$Input$TestRequestInput<TRes>
    implements CopyWith$Input$TestRequestInput<TRes> {
  _CopyWithStubImpl$Input$TestRequestInput(this._res);

  TRes _res;

  call({int? value}) => _res;
}

enum Enum$ChatState {
  COMPETE,
  PROCESSING,
  $unknown;

  factory Enum$ChatState.fromJson(String value) =>
      fromJson$Enum$ChatState(value);

  String toJson() => toJson$Enum$ChatState(this);
}

String toJson$Enum$ChatState(Enum$ChatState e) {
  switch (e) {
    case Enum$ChatState.COMPETE:
      return r'COMPETE';
    case Enum$ChatState.PROCESSING:
      return r'PROCESSING';
    case Enum$ChatState.$unknown:
      return r'$unknown';
  }
}

Enum$ChatState fromJson$Enum$ChatState(String value) {
  switch (value) {
    case r'COMPETE':
      return Enum$ChatState.COMPETE;
    case r'PROCESSING':
      return Enum$ChatState.PROCESSING;
    default:
      return Enum$ChatState.$unknown;
  }
}

enum Enum$DocumentState {
  COMPLETE,
  EMBEDDING,
  Fail,
  PARSING,
  READING,
  $unknown;

  factory Enum$DocumentState.fromJson(String value) =>
      fromJson$Enum$DocumentState(value);

  String toJson() => toJson$Enum$DocumentState(this);
}

String toJson$Enum$DocumentState(Enum$DocumentState e) {
  switch (e) {
    case Enum$DocumentState.COMPLETE:
      return r'COMPLETE';
    case Enum$DocumentState.EMBEDDING:
      return r'EMBEDDING';
    case Enum$DocumentState.Fail:
      return r'Fail';
    case Enum$DocumentState.PARSING:
      return r'PARSING';
    case Enum$DocumentState.READING:
      return r'READING';
    case Enum$DocumentState.$unknown:
      return r'$unknown';
  }
}

Enum$DocumentState fromJson$Enum$DocumentState(String value) {
  switch (value) {
    case r'COMPLETE':
      return Enum$DocumentState.COMPLETE;
    case r'EMBEDDING':
      return Enum$DocumentState.EMBEDDING;
    case r'Fail':
      return Enum$DocumentState.Fail;
    case r'PARSING':
      return Enum$DocumentState.PARSING;
    case r'READING':
      return Enum$DocumentState.READING;
    default:
      return Enum$DocumentState.$unknown;
  }
}

enum Enum$DocumentType {
  DOC,
  HTML,
  PDF_MULTI_COLUMN,
  PDF_SINGLE_COLUMN,
  PPT,
  TEXT,
  $unknown;

  factory Enum$DocumentType.fromJson(String value) =>
      fromJson$Enum$DocumentType(value);

  String toJson() => toJson$Enum$DocumentType(this);
}

String toJson$Enum$DocumentType(Enum$DocumentType e) {
  switch (e) {
    case Enum$DocumentType.DOC:
      return r'DOC';
    case Enum$DocumentType.HTML:
      return r'HTML';
    case Enum$DocumentType.PDF_MULTI_COLUMN:
      return r'PDF_MULTI_COLUMN';
    case Enum$DocumentType.PDF_SINGLE_COLUMN:
      return r'PDF_SINGLE_COLUMN';
    case Enum$DocumentType.PPT:
      return r'PPT';
    case Enum$DocumentType.TEXT:
      return r'TEXT';
    case Enum$DocumentType.$unknown:
      return r'$unknown';
  }
}

Enum$DocumentType fromJson$Enum$DocumentType(String value) {
  switch (value) {
    case r'DOC':
      return Enum$DocumentType.DOC;
    case r'HTML':
      return Enum$DocumentType.HTML;
    case r'PDF_MULTI_COLUMN':
      return Enum$DocumentType.PDF_MULTI_COLUMN;
    case r'PDF_SINGLE_COLUMN':
      return Enum$DocumentType.PDF_SINGLE_COLUMN;
    case r'PPT':
      return Enum$DocumentType.PPT;
    case r'TEXT':
      return Enum$DocumentType.TEXT;
    default:
      return Enum$DocumentType.$unknown;
  }
}

enum Enum$TokenHistoryType {
  CHAT,
  $unknown;

  factory Enum$TokenHistoryType.fromJson(String value) =>
      fromJson$Enum$TokenHistoryType(value);

  String toJson() => toJson$Enum$TokenHistoryType(this);
}

String toJson$Enum$TokenHistoryType(Enum$TokenHistoryType e) {
  switch (e) {
    case Enum$TokenHistoryType.CHAT:
      return r'CHAT';
    case Enum$TokenHistoryType.$unknown:
      return r'$unknown';
  }
}

Enum$TokenHistoryType fromJson$Enum$TokenHistoryType(String value) {
  switch (value) {
    case r'CHAT':
      return Enum$TokenHistoryType.CHAT;
    default:
      return Enum$TokenHistoryType.$unknown;
  }
}

enum Enum$UserRole {
  BASIC,
  ENTERPRISE,
  FREE,
  PREMIUM,
  $unknown;

  factory Enum$UserRole.fromJson(String value) => fromJson$Enum$UserRole(value);

  String toJson() => toJson$Enum$UserRole(this);
}

String toJson$Enum$UserRole(Enum$UserRole e) {
  switch (e) {
    case Enum$UserRole.BASIC:
      return r'BASIC';
    case Enum$UserRole.ENTERPRISE:
      return r'ENTERPRISE';
    case Enum$UserRole.FREE:
      return r'FREE';
    case Enum$UserRole.PREMIUM:
      return r'PREMIUM';
    case Enum$UserRole.$unknown:
      return r'$unknown';
  }
}

Enum$UserRole fromJson$Enum$UserRole(String value) {
  switch (value) {
    case r'BASIC':
      return Enum$UserRole.BASIC;
    case r'ENTERPRISE':
      return Enum$UserRole.ENTERPRISE;
    case r'FREE':
      return Enum$UserRole.FREE;
    case r'PREMIUM':
      return Enum$UserRole.PREMIUM;
    default:
      return Enum$UserRole.$unknown;
  }
}

enum Enum$__TypeKind {
  SCALAR,
  OBJECT,
  INTERFACE,
  UNION,
  ENUM,
  INPUT_OBJECT,
  LIST,
  NON_NULL,
  $unknown;

  factory Enum$__TypeKind.fromJson(String value) =>
      fromJson$Enum$__TypeKind(value);

  String toJson() => toJson$Enum$__TypeKind(this);
}

String toJson$Enum$__TypeKind(Enum$__TypeKind e) {
  switch (e) {
    case Enum$__TypeKind.SCALAR:
      return r'SCALAR';
    case Enum$__TypeKind.OBJECT:
      return r'OBJECT';
    case Enum$__TypeKind.INTERFACE:
      return r'INTERFACE';
    case Enum$__TypeKind.UNION:
      return r'UNION';
    case Enum$__TypeKind.ENUM:
      return r'ENUM';
    case Enum$__TypeKind.INPUT_OBJECT:
      return r'INPUT_OBJECT';
    case Enum$__TypeKind.LIST:
      return r'LIST';
    case Enum$__TypeKind.NON_NULL:
      return r'NON_NULL';
    case Enum$__TypeKind.$unknown:
      return r'$unknown';
  }
}

Enum$__TypeKind fromJson$Enum$__TypeKind(String value) {
  switch (value) {
    case r'SCALAR':
      return Enum$__TypeKind.SCALAR;
    case r'OBJECT':
      return Enum$__TypeKind.OBJECT;
    case r'INTERFACE':
      return Enum$__TypeKind.INTERFACE;
    case r'UNION':
      return Enum$__TypeKind.UNION;
    case r'ENUM':
      return Enum$__TypeKind.ENUM;
    case r'INPUT_OBJECT':
      return Enum$__TypeKind.INPUT_OBJECT;
    case r'LIST':
      return Enum$__TypeKind.LIST;
    case r'NON_NULL':
      return Enum$__TypeKind.NON_NULL;
    default:
      return Enum$__TypeKind.$unknown;
  }
}

enum Enum$__DirectiveLocation {
  QUERY,
  MUTATION,
  SUBSCRIPTION,
  FIELD,
  FRAGMENT_DEFINITION,
  FRAGMENT_SPREAD,
  INLINE_FRAGMENT,
  VARIABLE_DEFINITION,
  SCHEMA,
  SCALAR,
  OBJECT,
  FIELD_DEFINITION,
  ARGUMENT_DEFINITION,
  INTERFACE,
  UNION,
  ENUM,
  ENUM_VALUE,
  INPUT_OBJECT,
  INPUT_FIELD_DEFINITION,
  $unknown;

  factory Enum$__DirectiveLocation.fromJson(String value) =>
      fromJson$Enum$__DirectiveLocation(value);

  String toJson() => toJson$Enum$__DirectiveLocation(this);
}

String toJson$Enum$__DirectiveLocation(Enum$__DirectiveLocation e) {
  switch (e) {
    case Enum$__DirectiveLocation.QUERY:
      return r'QUERY';
    case Enum$__DirectiveLocation.MUTATION:
      return r'MUTATION';
    case Enum$__DirectiveLocation.SUBSCRIPTION:
      return r'SUBSCRIPTION';
    case Enum$__DirectiveLocation.FIELD:
      return r'FIELD';
    case Enum$__DirectiveLocation.FRAGMENT_DEFINITION:
      return r'FRAGMENT_DEFINITION';
    case Enum$__DirectiveLocation.FRAGMENT_SPREAD:
      return r'FRAGMENT_SPREAD';
    case Enum$__DirectiveLocation.INLINE_FRAGMENT:
      return r'INLINE_FRAGMENT';
    case Enum$__DirectiveLocation.VARIABLE_DEFINITION:
      return r'VARIABLE_DEFINITION';
    case Enum$__DirectiveLocation.SCHEMA:
      return r'SCHEMA';
    case Enum$__DirectiveLocation.SCALAR:
      return r'SCALAR';
    case Enum$__DirectiveLocation.OBJECT:
      return r'OBJECT';
    case Enum$__DirectiveLocation.FIELD_DEFINITION:
      return r'FIELD_DEFINITION';
    case Enum$__DirectiveLocation.ARGUMENT_DEFINITION:
      return r'ARGUMENT_DEFINITION';
    case Enum$__DirectiveLocation.INTERFACE:
      return r'INTERFACE';
    case Enum$__DirectiveLocation.UNION:
      return r'UNION';
    case Enum$__DirectiveLocation.ENUM:
      return r'ENUM';
    case Enum$__DirectiveLocation.ENUM_VALUE:
      return r'ENUM_VALUE';
    case Enum$__DirectiveLocation.INPUT_OBJECT:
      return r'INPUT_OBJECT';
    case Enum$__DirectiveLocation.INPUT_FIELD_DEFINITION:
      return r'INPUT_FIELD_DEFINITION';
    case Enum$__DirectiveLocation.$unknown:
      return r'$unknown';
  }
}

Enum$__DirectiveLocation fromJson$Enum$__DirectiveLocation(String value) {
  switch (value) {
    case r'QUERY':
      return Enum$__DirectiveLocation.QUERY;
    case r'MUTATION':
      return Enum$__DirectiveLocation.MUTATION;
    case r'SUBSCRIPTION':
      return Enum$__DirectiveLocation.SUBSCRIPTION;
    case r'FIELD':
      return Enum$__DirectiveLocation.FIELD;
    case r'FRAGMENT_DEFINITION':
      return Enum$__DirectiveLocation.FRAGMENT_DEFINITION;
    case r'FRAGMENT_SPREAD':
      return Enum$__DirectiveLocation.FRAGMENT_SPREAD;
    case r'INLINE_FRAGMENT':
      return Enum$__DirectiveLocation.INLINE_FRAGMENT;
    case r'VARIABLE_DEFINITION':
      return Enum$__DirectiveLocation.VARIABLE_DEFINITION;
    case r'SCHEMA':
      return Enum$__DirectiveLocation.SCHEMA;
    case r'SCALAR':
      return Enum$__DirectiveLocation.SCALAR;
    case r'OBJECT':
      return Enum$__DirectiveLocation.OBJECT;
    case r'FIELD_DEFINITION':
      return Enum$__DirectiveLocation.FIELD_DEFINITION;
    case r'ARGUMENT_DEFINITION':
      return Enum$__DirectiveLocation.ARGUMENT_DEFINITION;
    case r'INTERFACE':
      return Enum$__DirectiveLocation.INTERFACE;
    case r'UNION':
      return Enum$__DirectiveLocation.UNION;
    case r'ENUM':
      return Enum$__DirectiveLocation.ENUM;
    case r'ENUM_VALUE':
      return Enum$__DirectiveLocation.ENUM_VALUE;
    case r'INPUT_OBJECT':
      return Enum$__DirectiveLocation.INPUT_OBJECT;
    case r'INPUT_FIELD_DEFINITION':
      return Enum$__DirectiveLocation.INPUT_FIELD_DEFINITION;
    default:
      return Enum$__DirectiveLocation.$unknown;
  }
}

const possibleTypesMap = <String, Set<String>>{
  'BaseDomain': {
    'Chat',
    'ChatAnswerRef',
    'Chunk',
    'Document',
    'UserToken',
    'UserTokenHistory',
  }
};
