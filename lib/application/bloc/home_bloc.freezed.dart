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
    required TResult Function(String youtubeUrl) getDownloads,
    required TResult Function() initialize,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String youtubeUrl)? getDownloads,
    TResult? Function()? initialize,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String youtubeUrl)? getDownloads,
    TResult Function()? initialize,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetDownloads value) getDownloads,
    required TResult Function(_Initialize value) initialize,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetDownloads value)? getDownloads,
    TResult? Function(_Initialize value)? initialize,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetDownloads value)? getDownloads,
    TResult Function(_Initialize value)? initialize,
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
abstract class _$$_GetDownloadsCopyWith<$Res> {
  factory _$$_GetDownloadsCopyWith(
          _$_GetDownloads value, $Res Function(_$_GetDownloads) then) =
      __$$_GetDownloadsCopyWithImpl<$Res>;
  @useResult
  $Res call({String youtubeUrl});
}

/// @nodoc
class __$$_GetDownloadsCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$_GetDownloads>
    implements _$$_GetDownloadsCopyWith<$Res> {
  __$$_GetDownloadsCopyWithImpl(
      _$_GetDownloads _value, $Res Function(_$_GetDownloads) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? youtubeUrl = null,
  }) {
    return _then(_$_GetDownloads(
      youtubeUrl: null == youtubeUrl
          ? _value.youtubeUrl
          : youtubeUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_GetDownloads implements _GetDownloads {
  const _$_GetDownloads({required this.youtubeUrl});

  @override
  final String youtubeUrl;

  @override
  String toString() {
    return 'HomeEvent.getDownloads(youtubeUrl: $youtubeUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetDownloads &&
            (identical(other.youtubeUrl, youtubeUrl) ||
                other.youtubeUrl == youtubeUrl));
  }

  @override
  int get hashCode => Object.hash(runtimeType, youtubeUrl);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GetDownloadsCopyWith<_$_GetDownloads> get copyWith =>
      __$$_GetDownloadsCopyWithImpl<_$_GetDownloads>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String youtubeUrl) getDownloads,
    required TResult Function() initialize,
  }) {
    return getDownloads(youtubeUrl);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String youtubeUrl)? getDownloads,
    TResult? Function()? initialize,
  }) {
    return getDownloads?.call(youtubeUrl);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String youtubeUrl)? getDownloads,
    TResult Function()? initialize,
    required TResult orElse(),
  }) {
    if (getDownloads != null) {
      return getDownloads(youtubeUrl);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetDownloads value) getDownloads,
    required TResult Function(_Initialize value) initialize,
  }) {
    return getDownloads(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetDownloads value)? getDownloads,
    TResult? Function(_Initialize value)? initialize,
  }) {
    return getDownloads?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetDownloads value)? getDownloads,
    TResult Function(_Initialize value)? initialize,
    required TResult orElse(),
  }) {
    if (getDownloads != null) {
      return getDownloads(this);
    }
    return orElse();
  }
}

abstract class _GetDownloads implements HomeEvent {
  const factory _GetDownloads({required final String youtubeUrl}) =
      _$_GetDownloads;

  String get youtubeUrl;
  @JsonKey(ignore: true)
  _$$_GetDownloadsCopyWith<_$_GetDownloads> get copyWith =>
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
    required TResult Function(String youtubeUrl) getDownloads,
    required TResult Function() initialize,
  }) {
    return initialize();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String youtubeUrl)? getDownloads,
    TResult? Function()? initialize,
  }) {
    return initialize?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String youtubeUrl)? getDownloads,
    TResult Function()? initialize,
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
    required TResult Function(_GetDownloads value) getDownloads,
    required TResult Function(_Initialize value) initialize,
  }) {
    return initialize(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetDownloads value)? getDownloads,
    TResult? Function(_Initialize value)? initialize,
  }) {
    return initialize?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetDownloads value)? getDownloads,
    TResult Function(_Initialize value)? initialize,
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
