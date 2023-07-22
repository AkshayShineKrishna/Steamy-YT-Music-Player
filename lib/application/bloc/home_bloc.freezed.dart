// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$HomeEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String youtubeUrl) getAudio,
    required TResult Function() initialize,
    required TResult Function() refreshServer,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String youtubeUrl)? getAudio,
    TResult? Function()? initialize,
    TResult? Function()? refreshServer,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String youtubeUrl)? getAudio,
    TResult Function()? initialize,
    TResult Function()? refreshServer,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetAudio value) getAudio,
    required TResult Function(_Initialize value) initialize,
    required TResult Function(_RefreshServer value) refreshServer,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetAudio value)? getAudio,
    TResult? Function(_Initialize value)? initialize,
    TResult? Function(_RefreshServer value)? refreshServer,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetAudio value)? getAudio,
    TResult Function(_Initialize value)? initialize,
    TResult Function(_RefreshServer value)? refreshServer,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeEventCopyWith<$Res> {
  factory $HomeEventCopyWith(HomeEvent value, $Res Function(HomeEvent) then) =
      _$HomeEventCopyWithImpl<$Res, HomeEvent>;
}

/// @nodoc
class _$HomeEventCopyWithImpl<$Res, $Val extends HomeEvent>
    implements $HomeEventCopyWith<$Res> {
  _$HomeEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_GetAudioCopyWith<$Res> {
  factory _$$_GetAudioCopyWith(
          _$_GetAudio value, $Res Function(_$_GetAudio) then) =
      __$$_GetAudioCopyWithImpl<$Res>;
  @useResult
  $Res call({String youtubeUrl});
}

/// @nodoc
class __$$_GetAudioCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$_GetAudio>
    implements _$$_GetAudioCopyWith<$Res> {
  __$$_GetAudioCopyWithImpl(
      _$_GetAudio _value, $Res Function(_$_GetAudio) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? youtubeUrl = null,
  }) {
    return _then(_$_GetAudio(
      youtubeUrl: null == youtubeUrl
          ? _value.youtubeUrl
          : youtubeUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_GetAudio implements _GetAudio {
  const _$_GetAudio({required this.youtubeUrl});

  @override
  final String youtubeUrl;

  @override
  String toString() {
    return 'HomeEvent.getAudio(youtubeUrl: $youtubeUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetAudio &&
            (identical(other.youtubeUrl, youtubeUrl) ||
                other.youtubeUrl == youtubeUrl));
  }

  @override
  int get hashCode => Object.hash(runtimeType, youtubeUrl);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GetAudioCopyWith<_$_GetAudio> get copyWith =>
      __$$_GetAudioCopyWithImpl<_$_GetAudio>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String youtubeUrl) getAudio,
    required TResult Function() initialize,
    required TResult Function() refreshServer,
  }) {
    return getAudio(youtubeUrl);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String youtubeUrl)? getAudio,
    TResult? Function()? initialize,
    TResult? Function()? refreshServer,
  }) {
    return getAudio?.call(youtubeUrl);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String youtubeUrl)? getAudio,
    TResult Function()? initialize,
    TResult Function()? refreshServer,
    required TResult orElse(),
  }) {
    if (getAudio != null) {
      return getAudio(youtubeUrl);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetAudio value) getAudio,
    required TResult Function(_Initialize value) initialize,
    required TResult Function(_RefreshServer value) refreshServer,
  }) {
    return getAudio(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetAudio value)? getAudio,
    TResult? Function(_Initialize value)? initialize,
    TResult? Function(_RefreshServer value)? refreshServer,
  }) {
    return getAudio?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetAudio value)? getAudio,
    TResult Function(_Initialize value)? initialize,
    TResult Function(_RefreshServer value)? refreshServer,
    required TResult orElse(),
  }) {
    if (getAudio != null) {
      return getAudio(this);
    }
    return orElse();
  }
}

abstract class _GetAudio implements HomeEvent {
  const factory _GetAudio({required final String youtubeUrl}) = _$_GetAudio;

  String get youtubeUrl;
  @JsonKey(ignore: true)
  _$$_GetAudioCopyWith<_$_GetAudio> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_InitializeCopyWith<$Res> {
  factory _$$_InitializeCopyWith(
          _$_Initialize value, $Res Function(_$_Initialize) then) =
      __$$_InitializeCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InitializeCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$_Initialize>
    implements _$$_InitializeCopyWith<$Res> {
  __$$_InitializeCopyWithImpl(
      _$_Initialize _value, $Res Function(_$_Initialize) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Initialize implements _Initialize {
  const _$_Initialize();

  @override
  String toString() {
    return 'HomeEvent.initialize()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Initialize);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String youtubeUrl) getAudio,
    required TResult Function() initialize,
    required TResult Function() refreshServer,
  }) {
    return initialize();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String youtubeUrl)? getAudio,
    TResult? Function()? initialize,
    TResult? Function()? refreshServer,
  }) {
    return initialize?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String youtubeUrl)? getAudio,
    TResult Function()? initialize,
    TResult Function()? refreshServer,
    required TResult orElse(),
  }) {
    if (initialize != null) {
      return initialize();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetAudio value) getAudio,
    required TResult Function(_Initialize value) initialize,
    required TResult Function(_RefreshServer value) refreshServer,
  }) {
    return initialize(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetAudio value)? getAudio,
    TResult? Function(_Initialize value)? initialize,
    TResult? Function(_RefreshServer value)? refreshServer,
  }) {
    return initialize?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetAudio value)? getAudio,
    TResult Function(_Initialize value)? initialize,
    TResult Function(_RefreshServer value)? refreshServer,
    required TResult orElse(),
  }) {
    if (initialize != null) {
      return initialize(this);
    }
    return orElse();
  }
}

abstract class _Initialize implements HomeEvent {
  const factory _Initialize() = _$_Initialize;
}

/// @nodoc
abstract class _$$_RefreshServerCopyWith<$Res> {
  factory _$$_RefreshServerCopyWith(
          _$_RefreshServer value, $Res Function(_$_RefreshServer) then) =
      __$$_RefreshServerCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_RefreshServerCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$_RefreshServer>
    implements _$$_RefreshServerCopyWith<$Res> {
  __$$_RefreshServerCopyWithImpl(
      _$_RefreshServer _value, $Res Function(_$_RefreshServer) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_RefreshServer implements _RefreshServer {
  const _$_RefreshServer();

  @override
  String toString() {
    return 'HomeEvent.refreshServer()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_RefreshServer);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String youtubeUrl) getAudio,
    required TResult Function() initialize,
    required TResult Function() refreshServer,
  }) {
    return refreshServer();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String youtubeUrl)? getAudio,
    TResult? Function()? initialize,
    TResult? Function()? refreshServer,
  }) {
    return refreshServer?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String youtubeUrl)? getAudio,
    TResult Function()? initialize,
    TResult Function()? refreshServer,
    required TResult orElse(),
  }) {
    if (refreshServer != null) {
      return refreshServer();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetAudio value) getAudio,
    required TResult Function(_Initialize value) initialize,
    required TResult Function(_RefreshServer value) refreshServer,
  }) {
    return refreshServer(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetAudio value)? getAudio,
    TResult? Function(_Initialize value)? initialize,
    TResult? Function(_RefreshServer value)? refreshServer,
  }) {
    return refreshServer?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetAudio value)? getAudio,
    TResult Function(_Initialize value)? initialize,
    TResult Function(_RefreshServer value)? refreshServer,
    required TResult orElse(),
  }) {
    if (refreshServer != null) {
      return refreshServer(this);
    }
    return orElse();
  }
}

abstract class _RefreshServer implements HomeEvent {
  const factory _RefreshServer() = _$_RefreshServer;
}

/// @nodoc
mixin _$HomeState {
  List<ResultData> get responseResult => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isError => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomeStateCopyWith<HomeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res, HomeState>;
  @useResult
  $Res call({List<ResultData> responseResult, bool isLoading, bool isError});
}

/// @nodoc
class _$HomeStateCopyWithImpl<$Res, $Val extends HomeState>
    implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? responseResult = null,
    Object? isLoading = null,
    Object? isError = null,
  }) {
    return _then(_value.copyWith(
      responseResult: null == responseResult
          ? _value.responseResult
          : responseResult // ignore: cast_nullable_to_non_nullable
              as List<ResultData>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isError: null == isError
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_HomeStateCopyWith<$Res> implements $HomeStateCopyWith<$Res> {
  factory _$$_HomeStateCopyWith(
          _$_HomeState value, $Res Function(_$_HomeState) then) =
      __$$_HomeStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<ResultData> responseResult, bool isLoading, bool isError});
}

/// @nodoc
class __$$_HomeStateCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$_HomeState>
    implements _$$_HomeStateCopyWith<$Res> {
  __$$_HomeStateCopyWithImpl(
      _$_HomeState _value, $Res Function(_$_HomeState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? responseResult = null,
    Object? isLoading = null,
    Object? isError = null,
  }) {
    return _then(_$_HomeState(
      responseResult: null == responseResult
          ? _value._responseResult
          : responseResult // ignore: cast_nullable_to_non_nullable
              as List<ResultData>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isError: null == isError
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_HomeState implements _HomeState {
  const _$_HomeState(
      {required final List<ResultData> responseResult,
      required this.isLoading,
      required this.isError})
      : _responseResult = responseResult;

  final List<ResultData> _responseResult;
  @override
  List<ResultData> get responseResult {
    if (_responseResult is EqualUnmodifiableListView) return _responseResult;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_responseResult);
  }

  @override
  final bool isLoading;
  @override
  final bool isError;

  @override
  String toString() {
    return 'HomeState(responseResult: $responseResult, isLoading: $isLoading, isError: $isError)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_HomeState &&
            const DeepCollectionEquality()
                .equals(other._responseResult, _responseResult) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isError, isError) || other.isError == isError));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_responseResult), isLoading, isError);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_HomeStateCopyWith<_$_HomeState> get copyWith =>
      __$$_HomeStateCopyWithImpl<_$_HomeState>(this, _$identity);
}

abstract class _HomeState implements HomeState {
  const factory _HomeState(
      {required final List<ResultData> responseResult,
      required final bool isLoading,
      required final bool isError}) = _$_HomeState;

  @override
  List<ResultData> get responseResult;
  @override
  bool get isLoading;
  @override
  bool get isError;
  @override
  @JsonKey(ignore: true)
  _$$_HomeStateCopyWith<_$_HomeState> get copyWith =>
      throw _privateConstructorUsedError;
}
