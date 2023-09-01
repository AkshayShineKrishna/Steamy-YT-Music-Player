// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'playlist_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PlaylistEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool flag) toggleStatusFlag,
    required TResult Function(int currentCategoryIndex) getSelctedCategory,
    required TResult Function() initialize,
    required TResult Function() test,
    required TResult Function() getAllPlaylist,
    required TResult Function(
            String title, String artist, String art, String url)
        getCurrentPlaying,
    required TResult Function(List<String> urlList) validatePlaylist,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool flag)? toggleStatusFlag,
    TResult? Function(int currentCategoryIndex)? getSelctedCategory,
    TResult? Function()? initialize,
    TResult? Function()? test,
    TResult? Function()? getAllPlaylist,
    TResult? Function(String title, String artist, String art, String url)?
        getCurrentPlaying,
    TResult? Function(List<String> urlList)? validatePlaylist,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool flag)? toggleStatusFlag,
    TResult Function(int currentCategoryIndex)? getSelctedCategory,
    TResult Function()? initialize,
    TResult Function()? test,
    TResult Function()? getAllPlaylist,
    TResult Function(String title, String artist, String art, String url)?
        getCurrentPlaying,
    TResult Function(List<String> urlList)? validatePlaylist,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ToggleStatusFlag value) toggleStatusFlag,
    required TResult Function(_GetSelectedCategory value) getSelctedCategory,
    required TResult Function(_Initialize value) initialize,
    required TResult Function(_Test value) test,
    required TResult Function(_GetAllPlaylist value) getAllPlaylist,
    required TResult Function(_GetCurrentPlaying value) getCurrentPlaying,
    required TResult Function(_ValidatePlaylist value) validatePlaylist,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ToggleStatusFlag value)? toggleStatusFlag,
    TResult? Function(_GetSelectedCategory value)? getSelctedCategory,
    TResult? Function(_Initialize value)? initialize,
    TResult? Function(_Test value)? test,
    TResult? Function(_GetAllPlaylist value)? getAllPlaylist,
    TResult? Function(_GetCurrentPlaying value)? getCurrentPlaying,
    TResult? Function(_ValidatePlaylist value)? validatePlaylist,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ToggleStatusFlag value)? toggleStatusFlag,
    TResult Function(_GetSelectedCategory value)? getSelctedCategory,
    TResult Function(_Initialize value)? initialize,
    TResult Function(_Test value)? test,
    TResult Function(_GetAllPlaylist value)? getAllPlaylist,
    TResult Function(_GetCurrentPlaying value)? getCurrentPlaying,
    TResult Function(_ValidatePlaylist value)? validatePlaylist,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlaylistEventCopyWith<$Res> {
  factory $PlaylistEventCopyWith(
          PlaylistEvent value, $Res Function(PlaylistEvent) then) =
      _$PlaylistEventCopyWithImpl<$Res, PlaylistEvent>;
}

/// @nodoc
class _$PlaylistEventCopyWithImpl<$Res, $Val extends PlaylistEvent>
    implements $PlaylistEventCopyWith<$Res> {
  _$PlaylistEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_ToggleStatusFlagCopyWith<$Res> {
  factory _$$_ToggleStatusFlagCopyWith(
          _$_ToggleStatusFlag value, $Res Function(_$_ToggleStatusFlag) then) =
      __$$_ToggleStatusFlagCopyWithImpl<$Res>;
  @useResult
  $Res call({bool flag});
}

/// @nodoc
class __$$_ToggleStatusFlagCopyWithImpl<$Res>
    extends _$PlaylistEventCopyWithImpl<$Res, _$_ToggleStatusFlag>
    implements _$$_ToggleStatusFlagCopyWith<$Res> {
  __$$_ToggleStatusFlagCopyWithImpl(
      _$_ToggleStatusFlag _value, $Res Function(_$_ToggleStatusFlag) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? flag = null,
  }) {
    return _then(_$_ToggleStatusFlag(
      flag: null == flag
          ? _value.flag
          : flag // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_ToggleStatusFlag implements _ToggleStatusFlag {
  const _$_ToggleStatusFlag({required this.flag});

  @override
  final bool flag;

  @override
  String toString() {
    return 'PlaylistEvent.toggleStatusFlag(flag: $flag)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ToggleStatusFlag &&
            (identical(other.flag, flag) || other.flag == flag));
  }

  @override
  int get hashCode => Object.hash(runtimeType, flag);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ToggleStatusFlagCopyWith<_$_ToggleStatusFlag> get copyWith =>
      __$$_ToggleStatusFlagCopyWithImpl<_$_ToggleStatusFlag>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool flag) toggleStatusFlag,
    required TResult Function(int currentCategoryIndex) getSelctedCategory,
    required TResult Function() initialize,
    required TResult Function() test,
    required TResult Function() getAllPlaylist,
    required TResult Function(
            String title, String artist, String art, String url)
        getCurrentPlaying,
    required TResult Function(List<String> urlList) validatePlaylist,
  }) {
    return toggleStatusFlag(flag);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool flag)? toggleStatusFlag,
    TResult? Function(int currentCategoryIndex)? getSelctedCategory,
    TResult? Function()? initialize,
    TResult? Function()? test,
    TResult? Function()? getAllPlaylist,
    TResult? Function(String title, String artist, String art, String url)?
        getCurrentPlaying,
    TResult? Function(List<String> urlList)? validatePlaylist,
  }) {
    return toggleStatusFlag?.call(flag);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool flag)? toggleStatusFlag,
    TResult Function(int currentCategoryIndex)? getSelctedCategory,
    TResult Function()? initialize,
    TResult Function()? test,
    TResult Function()? getAllPlaylist,
    TResult Function(String title, String artist, String art, String url)?
        getCurrentPlaying,
    TResult Function(List<String> urlList)? validatePlaylist,
    required TResult orElse(),
  }) {
    if (toggleStatusFlag != null) {
      return toggleStatusFlag(flag);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ToggleStatusFlag value) toggleStatusFlag,
    required TResult Function(_GetSelectedCategory value) getSelctedCategory,
    required TResult Function(_Initialize value) initialize,
    required TResult Function(_Test value) test,
    required TResult Function(_GetAllPlaylist value) getAllPlaylist,
    required TResult Function(_GetCurrentPlaying value) getCurrentPlaying,
    required TResult Function(_ValidatePlaylist value) validatePlaylist,
  }) {
    return toggleStatusFlag(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ToggleStatusFlag value)? toggleStatusFlag,
    TResult? Function(_GetSelectedCategory value)? getSelctedCategory,
    TResult? Function(_Initialize value)? initialize,
    TResult? Function(_Test value)? test,
    TResult? Function(_GetAllPlaylist value)? getAllPlaylist,
    TResult? Function(_GetCurrentPlaying value)? getCurrentPlaying,
    TResult? Function(_ValidatePlaylist value)? validatePlaylist,
  }) {
    return toggleStatusFlag?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ToggleStatusFlag value)? toggleStatusFlag,
    TResult Function(_GetSelectedCategory value)? getSelctedCategory,
    TResult Function(_Initialize value)? initialize,
    TResult Function(_Test value)? test,
    TResult Function(_GetAllPlaylist value)? getAllPlaylist,
    TResult Function(_GetCurrentPlaying value)? getCurrentPlaying,
    TResult Function(_ValidatePlaylist value)? validatePlaylist,
    required TResult orElse(),
  }) {
    if (toggleStatusFlag != null) {
      return toggleStatusFlag(this);
    }
    return orElse();
  }
}

abstract class _ToggleStatusFlag implements PlaylistEvent {
  const factory _ToggleStatusFlag({required final bool flag}) =
      _$_ToggleStatusFlag;

  bool get flag;
  @JsonKey(ignore: true)
  _$$_ToggleStatusFlagCopyWith<_$_ToggleStatusFlag> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_GetSelectedCategoryCopyWith<$Res> {
  factory _$$_GetSelectedCategoryCopyWith(_$_GetSelectedCategory value,
          $Res Function(_$_GetSelectedCategory) then) =
      __$$_GetSelectedCategoryCopyWithImpl<$Res>;
  @useResult
  $Res call({int currentCategoryIndex});
}

/// @nodoc
class __$$_GetSelectedCategoryCopyWithImpl<$Res>
    extends _$PlaylistEventCopyWithImpl<$Res, _$_GetSelectedCategory>
    implements _$$_GetSelectedCategoryCopyWith<$Res> {
  __$$_GetSelectedCategoryCopyWithImpl(_$_GetSelectedCategory _value,
      $Res Function(_$_GetSelectedCategory) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentCategoryIndex = null,
  }) {
    return _then(_$_GetSelectedCategory(
      currentCategoryIndex: null == currentCategoryIndex
          ? _value.currentCategoryIndex
          : currentCategoryIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_GetSelectedCategory implements _GetSelectedCategory {
  const _$_GetSelectedCategory({required this.currentCategoryIndex});

  @override
  final int currentCategoryIndex;

  @override
  String toString() {
    return 'PlaylistEvent.getSelctedCategory(currentCategoryIndex: $currentCategoryIndex)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetSelectedCategory &&
            (identical(other.currentCategoryIndex, currentCategoryIndex) ||
                other.currentCategoryIndex == currentCategoryIndex));
  }

  @override
  int get hashCode => Object.hash(runtimeType, currentCategoryIndex);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GetSelectedCategoryCopyWith<_$_GetSelectedCategory> get copyWith =>
      __$$_GetSelectedCategoryCopyWithImpl<_$_GetSelectedCategory>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool flag) toggleStatusFlag,
    required TResult Function(int currentCategoryIndex) getSelctedCategory,
    required TResult Function() initialize,
    required TResult Function() test,
    required TResult Function() getAllPlaylist,
    required TResult Function(
            String title, String artist, String art, String url)
        getCurrentPlaying,
    required TResult Function(List<String> urlList) validatePlaylist,
  }) {
    return getSelctedCategory(currentCategoryIndex);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool flag)? toggleStatusFlag,
    TResult? Function(int currentCategoryIndex)? getSelctedCategory,
    TResult? Function()? initialize,
    TResult? Function()? test,
    TResult? Function()? getAllPlaylist,
    TResult? Function(String title, String artist, String art, String url)?
        getCurrentPlaying,
    TResult? Function(List<String> urlList)? validatePlaylist,
  }) {
    return getSelctedCategory?.call(currentCategoryIndex);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool flag)? toggleStatusFlag,
    TResult Function(int currentCategoryIndex)? getSelctedCategory,
    TResult Function()? initialize,
    TResult Function()? test,
    TResult Function()? getAllPlaylist,
    TResult Function(String title, String artist, String art, String url)?
        getCurrentPlaying,
    TResult Function(List<String> urlList)? validatePlaylist,
    required TResult orElse(),
  }) {
    if (getSelctedCategory != null) {
      return getSelctedCategory(currentCategoryIndex);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ToggleStatusFlag value) toggleStatusFlag,
    required TResult Function(_GetSelectedCategory value) getSelctedCategory,
    required TResult Function(_Initialize value) initialize,
    required TResult Function(_Test value) test,
    required TResult Function(_GetAllPlaylist value) getAllPlaylist,
    required TResult Function(_GetCurrentPlaying value) getCurrentPlaying,
    required TResult Function(_ValidatePlaylist value) validatePlaylist,
  }) {
    return getSelctedCategory(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ToggleStatusFlag value)? toggleStatusFlag,
    TResult? Function(_GetSelectedCategory value)? getSelctedCategory,
    TResult? Function(_Initialize value)? initialize,
    TResult? Function(_Test value)? test,
    TResult? Function(_GetAllPlaylist value)? getAllPlaylist,
    TResult? Function(_GetCurrentPlaying value)? getCurrentPlaying,
    TResult? Function(_ValidatePlaylist value)? validatePlaylist,
  }) {
    return getSelctedCategory?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ToggleStatusFlag value)? toggleStatusFlag,
    TResult Function(_GetSelectedCategory value)? getSelctedCategory,
    TResult Function(_Initialize value)? initialize,
    TResult Function(_Test value)? test,
    TResult Function(_GetAllPlaylist value)? getAllPlaylist,
    TResult Function(_GetCurrentPlaying value)? getCurrentPlaying,
    TResult Function(_ValidatePlaylist value)? validatePlaylist,
    required TResult orElse(),
  }) {
    if (getSelctedCategory != null) {
      return getSelctedCategory(this);
    }
    return orElse();
  }
}

abstract class _GetSelectedCategory implements PlaylistEvent {
  const factory _GetSelectedCategory(
      {required final int currentCategoryIndex}) = _$_GetSelectedCategory;

  int get currentCategoryIndex;
  @JsonKey(ignore: true)
  _$$_GetSelectedCategoryCopyWith<_$_GetSelectedCategory> get copyWith =>
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
    extends _$PlaylistEventCopyWithImpl<$Res, _$_Initialize>
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
    return 'PlaylistEvent.initialize()';
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
    required TResult Function(bool flag) toggleStatusFlag,
    required TResult Function(int currentCategoryIndex) getSelctedCategory,
    required TResult Function() initialize,
    required TResult Function() test,
    required TResult Function() getAllPlaylist,
    required TResult Function(
            String title, String artist, String art, String url)
        getCurrentPlaying,
    required TResult Function(List<String> urlList) validatePlaylist,
  }) {
    return initialize();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool flag)? toggleStatusFlag,
    TResult? Function(int currentCategoryIndex)? getSelctedCategory,
    TResult? Function()? initialize,
    TResult? Function()? test,
    TResult? Function()? getAllPlaylist,
    TResult? Function(String title, String artist, String art, String url)?
        getCurrentPlaying,
    TResult? Function(List<String> urlList)? validatePlaylist,
  }) {
    return initialize?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool flag)? toggleStatusFlag,
    TResult Function(int currentCategoryIndex)? getSelctedCategory,
    TResult Function()? initialize,
    TResult Function()? test,
    TResult Function()? getAllPlaylist,
    TResult Function(String title, String artist, String art, String url)?
        getCurrentPlaying,
    TResult Function(List<String> urlList)? validatePlaylist,
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
    required TResult Function(_ToggleStatusFlag value) toggleStatusFlag,
    required TResult Function(_GetSelectedCategory value) getSelctedCategory,
    required TResult Function(_Initialize value) initialize,
    required TResult Function(_Test value) test,
    required TResult Function(_GetAllPlaylist value) getAllPlaylist,
    required TResult Function(_GetCurrentPlaying value) getCurrentPlaying,
    required TResult Function(_ValidatePlaylist value) validatePlaylist,
  }) {
    return initialize(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ToggleStatusFlag value)? toggleStatusFlag,
    TResult? Function(_GetSelectedCategory value)? getSelctedCategory,
    TResult? Function(_Initialize value)? initialize,
    TResult? Function(_Test value)? test,
    TResult? Function(_GetAllPlaylist value)? getAllPlaylist,
    TResult? Function(_GetCurrentPlaying value)? getCurrentPlaying,
    TResult? Function(_ValidatePlaylist value)? validatePlaylist,
  }) {
    return initialize?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ToggleStatusFlag value)? toggleStatusFlag,
    TResult Function(_GetSelectedCategory value)? getSelctedCategory,
    TResult Function(_Initialize value)? initialize,
    TResult Function(_Test value)? test,
    TResult Function(_GetAllPlaylist value)? getAllPlaylist,
    TResult Function(_GetCurrentPlaying value)? getCurrentPlaying,
    TResult Function(_ValidatePlaylist value)? validatePlaylist,
    required TResult orElse(),
  }) {
    if (initialize != null) {
      return initialize(this);
    }
    return orElse();
  }
}

abstract class _Initialize implements PlaylistEvent {
  const factory _Initialize() = _$_Initialize;
}

/// @nodoc
abstract class _$$_TestCopyWith<$Res> {
  factory _$$_TestCopyWith(_$_Test value, $Res Function(_$_Test) then) =
      __$$_TestCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_TestCopyWithImpl<$Res>
    extends _$PlaylistEventCopyWithImpl<$Res, _$_Test>
    implements _$$_TestCopyWith<$Res> {
  __$$_TestCopyWithImpl(_$_Test _value, $Res Function(_$_Test) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Test implements _Test {
  const _$_Test();

  @override
  String toString() {
    return 'PlaylistEvent.test()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Test);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool flag) toggleStatusFlag,
    required TResult Function(int currentCategoryIndex) getSelctedCategory,
    required TResult Function() initialize,
    required TResult Function() test,
    required TResult Function() getAllPlaylist,
    required TResult Function(
            String title, String artist, String art, String url)
        getCurrentPlaying,
    required TResult Function(List<String> urlList) validatePlaylist,
  }) {
    return test();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool flag)? toggleStatusFlag,
    TResult? Function(int currentCategoryIndex)? getSelctedCategory,
    TResult? Function()? initialize,
    TResult? Function()? test,
    TResult? Function()? getAllPlaylist,
    TResult? Function(String title, String artist, String art, String url)?
        getCurrentPlaying,
    TResult? Function(List<String> urlList)? validatePlaylist,
  }) {
    return test?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool flag)? toggleStatusFlag,
    TResult Function(int currentCategoryIndex)? getSelctedCategory,
    TResult Function()? initialize,
    TResult Function()? test,
    TResult Function()? getAllPlaylist,
    TResult Function(String title, String artist, String art, String url)?
        getCurrentPlaying,
    TResult Function(List<String> urlList)? validatePlaylist,
    required TResult orElse(),
  }) {
    if (test != null) {
      return test();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ToggleStatusFlag value) toggleStatusFlag,
    required TResult Function(_GetSelectedCategory value) getSelctedCategory,
    required TResult Function(_Initialize value) initialize,
    required TResult Function(_Test value) test,
    required TResult Function(_GetAllPlaylist value) getAllPlaylist,
    required TResult Function(_GetCurrentPlaying value) getCurrentPlaying,
    required TResult Function(_ValidatePlaylist value) validatePlaylist,
  }) {
    return test(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ToggleStatusFlag value)? toggleStatusFlag,
    TResult? Function(_GetSelectedCategory value)? getSelctedCategory,
    TResult? Function(_Initialize value)? initialize,
    TResult? Function(_Test value)? test,
    TResult? Function(_GetAllPlaylist value)? getAllPlaylist,
    TResult? Function(_GetCurrentPlaying value)? getCurrentPlaying,
    TResult? Function(_ValidatePlaylist value)? validatePlaylist,
  }) {
    return test?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ToggleStatusFlag value)? toggleStatusFlag,
    TResult Function(_GetSelectedCategory value)? getSelctedCategory,
    TResult Function(_Initialize value)? initialize,
    TResult Function(_Test value)? test,
    TResult Function(_GetAllPlaylist value)? getAllPlaylist,
    TResult Function(_GetCurrentPlaying value)? getCurrentPlaying,
    TResult Function(_ValidatePlaylist value)? validatePlaylist,
    required TResult orElse(),
  }) {
    if (test != null) {
      return test(this);
    }
    return orElse();
  }
}

abstract class _Test implements PlaylistEvent {
  const factory _Test() = _$_Test;
}

/// @nodoc
abstract class _$$_GetAllPlaylistCopyWith<$Res> {
  factory _$$_GetAllPlaylistCopyWith(
          _$_GetAllPlaylist value, $Res Function(_$_GetAllPlaylist) then) =
      __$$_GetAllPlaylistCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_GetAllPlaylistCopyWithImpl<$Res>
    extends _$PlaylistEventCopyWithImpl<$Res, _$_GetAllPlaylist>
    implements _$$_GetAllPlaylistCopyWith<$Res> {
  __$$_GetAllPlaylistCopyWithImpl(
      _$_GetAllPlaylist _value, $Res Function(_$_GetAllPlaylist) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_GetAllPlaylist implements _GetAllPlaylist {
  const _$_GetAllPlaylist();

  @override
  String toString() {
    return 'PlaylistEvent.getAllPlaylist()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_GetAllPlaylist);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool flag) toggleStatusFlag,
    required TResult Function(int currentCategoryIndex) getSelctedCategory,
    required TResult Function() initialize,
    required TResult Function() test,
    required TResult Function() getAllPlaylist,
    required TResult Function(
            String title, String artist, String art, String url)
        getCurrentPlaying,
    required TResult Function(List<String> urlList) validatePlaylist,
  }) {
    return getAllPlaylist();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool flag)? toggleStatusFlag,
    TResult? Function(int currentCategoryIndex)? getSelctedCategory,
    TResult? Function()? initialize,
    TResult? Function()? test,
    TResult? Function()? getAllPlaylist,
    TResult? Function(String title, String artist, String art, String url)?
        getCurrentPlaying,
    TResult? Function(List<String> urlList)? validatePlaylist,
  }) {
    return getAllPlaylist?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool flag)? toggleStatusFlag,
    TResult Function(int currentCategoryIndex)? getSelctedCategory,
    TResult Function()? initialize,
    TResult Function()? test,
    TResult Function()? getAllPlaylist,
    TResult Function(String title, String artist, String art, String url)?
        getCurrentPlaying,
    TResult Function(List<String> urlList)? validatePlaylist,
    required TResult orElse(),
  }) {
    if (getAllPlaylist != null) {
      return getAllPlaylist();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ToggleStatusFlag value) toggleStatusFlag,
    required TResult Function(_GetSelectedCategory value) getSelctedCategory,
    required TResult Function(_Initialize value) initialize,
    required TResult Function(_Test value) test,
    required TResult Function(_GetAllPlaylist value) getAllPlaylist,
    required TResult Function(_GetCurrentPlaying value) getCurrentPlaying,
    required TResult Function(_ValidatePlaylist value) validatePlaylist,
  }) {
    return getAllPlaylist(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ToggleStatusFlag value)? toggleStatusFlag,
    TResult? Function(_GetSelectedCategory value)? getSelctedCategory,
    TResult? Function(_Initialize value)? initialize,
    TResult? Function(_Test value)? test,
    TResult? Function(_GetAllPlaylist value)? getAllPlaylist,
    TResult? Function(_GetCurrentPlaying value)? getCurrentPlaying,
    TResult? Function(_ValidatePlaylist value)? validatePlaylist,
  }) {
    return getAllPlaylist?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ToggleStatusFlag value)? toggleStatusFlag,
    TResult Function(_GetSelectedCategory value)? getSelctedCategory,
    TResult Function(_Initialize value)? initialize,
    TResult Function(_Test value)? test,
    TResult Function(_GetAllPlaylist value)? getAllPlaylist,
    TResult Function(_GetCurrentPlaying value)? getCurrentPlaying,
    TResult Function(_ValidatePlaylist value)? validatePlaylist,
    required TResult orElse(),
  }) {
    if (getAllPlaylist != null) {
      return getAllPlaylist(this);
    }
    return orElse();
  }
}

abstract class _GetAllPlaylist implements PlaylistEvent {
  const factory _GetAllPlaylist() = _$_GetAllPlaylist;
}

/// @nodoc
abstract class _$$_GetCurrentPlayingCopyWith<$Res> {
  factory _$$_GetCurrentPlayingCopyWith(_$_GetCurrentPlaying value,
          $Res Function(_$_GetCurrentPlaying) then) =
      __$$_GetCurrentPlayingCopyWithImpl<$Res>;
  @useResult
  $Res call({String title, String artist, String art, String url});
}

/// @nodoc
class __$$_GetCurrentPlayingCopyWithImpl<$Res>
    extends _$PlaylistEventCopyWithImpl<$Res, _$_GetCurrentPlaying>
    implements _$$_GetCurrentPlayingCopyWith<$Res> {
  __$$_GetCurrentPlayingCopyWithImpl(
      _$_GetCurrentPlaying _value, $Res Function(_$_GetCurrentPlaying) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? artist = null,
    Object? art = null,
    Object? url = null,
  }) {
    return _then(_$_GetCurrentPlaying(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      artist: null == artist
          ? _value.artist
          : artist // ignore: cast_nullable_to_non_nullable
              as String,
      art: null == art
          ? _value.art
          : art // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_GetCurrentPlaying implements _GetCurrentPlaying {
  const _$_GetCurrentPlaying(
      {required this.title,
      required this.artist,
      required this.art,
      required this.url});

  @override
  final String title;
  @override
  final String artist;
  @override
  final String art;
  @override
  final String url;

  @override
  String toString() {
    return 'PlaylistEvent.getCurrentPlaying(title: $title, artist: $artist, art: $art, url: $url)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetCurrentPlaying &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.artist, artist) || other.artist == artist) &&
            (identical(other.art, art) || other.art == art) &&
            (identical(other.url, url) || other.url == url));
  }

  @override
  int get hashCode => Object.hash(runtimeType, title, artist, art, url);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GetCurrentPlayingCopyWith<_$_GetCurrentPlaying> get copyWith =>
      __$$_GetCurrentPlayingCopyWithImpl<_$_GetCurrentPlaying>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool flag) toggleStatusFlag,
    required TResult Function(int currentCategoryIndex) getSelctedCategory,
    required TResult Function() initialize,
    required TResult Function() test,
    required TResult Function() getAllPlaylist,
    required TResult Function(
            String title, String artist, String art, String url)
        getCurrentPlaying,
    required TResult Function(List<String> urlList) validatePlaylist,
  }) {
    return getCurrentPlaying(title, artist, art, url);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool flag)? toggleStatusFlag,
    TResult? Function(int currentCategoryIndex)? getSelctedCategory,
    TResult? Function()? initialize,
    TResult? Function()? test,
    TResult? Function()? getAllPlaylist,
    TResult? Function(String title, String artist, String art, String url)?
        getCurrentPlaying,
    TResult? Function(List<String> urlList)? validatePlaylist,
  }) {
    return getCurrentPlaying?.call(title, artist, art, url);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool flag)? toggleStatusFlag,
    TResult Function(int currentCategoryIndex)? getSelctedCategory,
    TResult Function()? initialize,
    TResult Function()? test,
    TResult Function()? getAllPlaylist,
    TResult Function(String title, String artist, String art, String url)?
        getCurrentPlaying,
    TResult Function(List<String> urlList)? validatePlaylist,
    required TResult orElse(),
  }) {
    if (getCurrentPlaying != null) {
      return getCurrentPlaying(title, artist, art, url);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ToggleStatusFlag value) toggleStatusFlag,
    required TResult Function(_GetSelectedCategory value) getSelctedCategory,
    required TResult Function(_Initialize value) initialize,
    required TResult Function(_Test value) test,
    required TResult Function(_GetAllPlaylist value) getAllPlaylist,
    required TResult Function(_GetCurrentPlaying value) getCurrentPlaying,
    required TResult Function(_ValidatePlaylist value) validatePlaylist,
  }) {
    return getCurrentPlaying(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ToggleStatusFlag value)? toggleStatusFlag,
    TResult? Function(_GetSelectedCategory value)? getSelctedCategory,
    TResult? Function(_Initialize value)? initialize,
    TResult? Function(_Test value)? test,
    TResult? Function(_GetAllPlaylist value)? getAllPlaylist,
    TResult? Function(_GetCurrentPlaying value)? getCurrentPlaying,
    TResult? Function(_ValidatePlaylist value)? validatePlaylist,
  }) {
    return getCurrentPlaying?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ToggleStatusFlag value)? toggleStatusFlag,
    TResult Function(_GetSelectedCategory value)? getSelctedCategory,
    TResult Function(_Initialize value)? initialize,
    TResult Function(_Test value)? test,
    TResult Function(_GetAllPlaylist value)? getAllPlaylist,
    TResult Function(_GetCurrentPlaying value)? getCurrentPlaying,
    TResult Function(_ValidatePlaylist value)? validatePlaylist,
    required TResult orElse(),
  }) {
    if (getCurrentPlaying != null) {
      return getCurrentPlaying(this);
    }
    return orElse();
  }
}

abstract class _GetCurrentPlaying implements PlaylistEvent {
  const factory _GetCurrentPlaying(
      {required final String title,
      required final String artist,
      required final String art,
      required final String url}) = _$_GetCurrentPlaying;

  String get title;
  String get artist;
  String get art;
  String get url;
  @JsonKey(ignore: true)
  _$$_GetCurrentPlayingCopyWith<_$_GetCurrentPlaying> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ValidatePlaylistCopyWith<$Res> {
  factory _$$_ValidatePlaylistCopyWith(
          _$_ValidatePlaylist value, $Res Function(_$_ValidatePlaylist) then) =
      __$$_ValidatePlaylistCopyWithImpl<$Res>;
  @useResult
  $Res call({List<String> urlList});
}

/// @nodoc
class __$$_ValidatePlaylistCopyWithImpl<$Res>
    extends _$PlaylistEventCopyWithImpl<$Res, _$_ValidatePlaylist>
    implements _$$_ValidatePlaylistCopyWith<$Res> {
  __$$_ValidatePlaylistCopyWithImpl(
      _$_ValidatePlaylist _value, $Res Function(_$_ValidatePlaylist) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? urlList = null,
  }) {
    return _then(_$_ValidatePlaylist(
      urlList: null == urlList
          ? _value._urlList
          : urlList // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _$_ValidatePlaylist implements _ValidatePlaylist {
  const _$_ValidatePlaylist({required final List<String> urlList})
      : _urlList = urlList;

  final List<String> _urlList;
  @override
  List<String> get urlList {
    if (_urlList is EqualUnmodifiableListView) return _urlList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_urlList);
  }

  @override
  String toString() {
    return 'PlaylistEvent.validatePlaylist(urlList: $urlList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ValidatePlaylist &&
            const DeepCollectionEquality().equals(other._urlList, _urlList));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_urlList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ValidatePlaylistCopyWith<_$_ValidatePlaylist> get copyWith =>
      __$$_ValidatePlaylistCopyWithImpl<_$_ValidatePlaylist>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool flag) toggleStatusFlag,
    required TResult Function(int currentCategoryIndex) getSelctedCategory,
    required TResult Function() initialize,
    required TResult Function() test,
    required TResult Function() getAllPlaylist,
    required TResult Function(
            String title, String artist, String art, String url)
        getCurrentPlaying,
    required TResult Function(List<String> urlList) validatePlaylist,
  }) {
    return validatePlaylist(urlList);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool flag)? toggleStatusFlag,
    TResult? Function(int currentCategoryIndex)? getSelctedCategory,
    TResult? Function()? initialize,
    TResult? Function()? test,
    TResult? Function()? getAllPlaylist,
    TResult? Function(String title, String artist, String art, String url)?
        getCurrentPlaying,
    TResult? Function(List<String> urlList)? validatePlaylist,
  }) {
    return validatePlaylist?.call(urlList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool flag)? toggleStatusFlag,
    TResult Function(int currentCategoryIndex)? getSelctedCategory,
    TResult Function()? initialize,
    TResult Function()? test,
    TResult Function()? getAllPlaylist,
    TResult Function(String title, String artist, String art, String url)?
        getCurrentPlaying,
    TResult Function(List<String> urlList)? validatePlaylist,
    required TResult orElse(),
  }) {
    if (validatePlaylist != null) {
      return validatePlaylist(urlList);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ToggleStatusFlag value) toggleStatusFlag,
    required TResult Function(_GetSelectedCategory value) getSelctedCategory,
    required TResult Function(_Initialize value) initialize,
    required TResult Function(_Test value) test,
    required TResult Function(_GetAllPlaylist value) getAllPlaylist,
    required TResult Function(_GetCurrentPlaying value) getCurrentPlaying,
    required TResult Function(_ValidatePlaylist value) validatePlaylist,
  }) {
    return validatePlaylist(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ToggleStatusFlag value)? toggleStatusFlag,
    TResult? Function(_GetSelectedCategory value)? getSelctedCategory,
    TResult? Function(_Initialize value)? initialize,
    TResult? Function(_Test value)? test,
    TResult? Function(_GetAllPlaylist value)? getAllPlaylist,
    TResult? Function(_GetCurrentPlaying value)? getCurrentPlaying,
    TResult? Function(_ValidatePlaylist value)? validatePlaylist,
  }) {
    return validatePlaylist?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ToggleStatusFlag value)? toggleStatusFlag,
    TResult Function(_GetSelectedCategory value)? getSelctedCategory,
    TResult Function(_Initialize value)? initialize,
    TResult Function(_Test value)? test,
    TResult Function(_GetAllPlaylist value)? getAllPlaylist,
    TResult Function(_GetCurrentPlaying value)? getCurrentPlaying,
    TResult Function(_ValidatePlaylist value)? validatePlaylist,
    required TResult orElse(),
  }) {
    if (validatePlaylist != null) {
      return validatePlaylist(this);
    }
    return orElse();
  }
}

abstract class _ValidatePlaylist implements PlaylistEvent {
  const factory _ValidatePlaylist({required final List<String> urlList}) =
      _$_ValidatePlaylist;

  List<String> get urlList;
  @JsonKey(ignore: true)
  _$$_ValidatePlaylistCopyWith<_$_ValidatePlaylist> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$PlaylistState {
  bool get currentStatusFlag => throw _privateConstructorUsedError;
  int get currentSelectedCategory => throw _privateConstructorUsedError;
  bool get alertFlag => throw _privateConstructorUsedError;
  List<Playlist> get allPlaylist => throw _privateConstructorUsedError;
  String get currentPlaylistArt => throw _privateConstructorUsedError;
  String get currentPlayingTitle => throw _privateConstructorUsedError;
  String get currentPlayingArtist => throw _privateConstructorUsedError;
  String get currentPlayingUrl => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PlaylistStateCopyWith<PlaylistState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlaylistStateCopyWith<$Res> {
  factory $PlaylistStateCopyWith(
          PlaylistState value, $Res Function(PlaylistState) then) =
      _$PlaylistStateCopyWithImpl<$Res, PlaylistState>;
  @useResult
  $Res call(
      {bool currentStatusFlag,
      int currentSelectedCategory,
      bool alertFlag,
      List<Playlist> allPlaylist,
      String currentPlaylistArt,
      String currentPlayingTitle,
      String currentPlayingArtist,
      String currentPlayingUrl});
}

/// @nodoc
class _$PlaylistStateCopyWithImpl<$Res, $Val extends PlaylistState>
    implements $PlaylistStateCopyWith<$Res> {
  _$PlaylistStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentStatusFlag = null,
    Object? currentSelectedCategory = null,
    Object? alertFlag = null,
    Object? allPlaylist = null,
    Object? currentPlaylistArt = null,
    Object? currentPlayingTitle = null,
    Object? currentPlayingArtist = null,
    Object? currentPlayingUrl = null,
  }) {
    return _then(_value.copyWith(
      currentStatusFlag: null == currentStatusFlag
          ? _value.currentStatusFlag
          : currentStatusFlag // ignore: cast_nullable_to_non_nullable
              as bool,
      currentSelectedCategory: null == currentSelectedCategory
          ? _value.currentSelectedCategory
          : currentSelectedCategory // ignore: cast_nullable_to_non_nullable
              as int,
      alertFlag: null == alertFlag
          ? _value.alertFlag
          : alertFlag // ignore: cast_nullable_to_non_nullable
              as bool,
      allPlaylist: null == allPlaylist
          ? _value.allPlaylist
          : allPlaylist // ignore: cast_nullable_to_non_nullable
              as List<Playlist>,
      currentPlaylistArt: null == currentPlaylistArt
          ? _value.currentPlaylistArt
          : currentPlaylistArt // ignore: cast_nullable_to_non_nullable
              as String,
      currentPlayingTitle: null == currentPlayingTitle
          ? _value.currentPlayingTitle
          : currentPlayingTitle // ignore: cast_nullable_to_non_nullable
              as String,
      currentPlayingArtist: null == currentPlayingArtist
          ? _value.currentPlayingArtist
          : currentPlayingArtist // ignore: cast_nullable_to_non_nullable
              as String,
      currentPlayingUrl: null == currentPlayingUrl
          ? _value.currentPlayingUrl
          : currentPlayingUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PlaylistStateCopyWith<$Res>
    implements $PlaylistStateCopyWith<$Res> {
  factory _$$_PlaylistStateCopyWith(
          _$_PlaylistState value, $Res Function(_$_PlaylistState) then) =
      __$$_PlaylistStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool currentStatusFlag,
      int currentSelectedCategory,
      bool alertFlag,
      List<Playlist> allPlaylist,
      String currentPlaylistArt,
      String currentPlayingTitle,
      String currentPlayingArtist,
      String currentPlayingUrl});
}

/// @nodoc
class __$$_PlaylistStateCopyWithImpl<$Res>
    extends _$PlaylistStateCopyWithImpl<$Res, _$_PlaylistState>
    implements _$$_PlaylistStateCopyWith<$Res> {
  __$$_PlaylistStateCopyWithImpl(
      _$_PlaylistState _value, $Res Function(_$_PlaylistState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentStatusFlag = null,
    Object? currentSelectedCategory = null,
    Object? alertFlag = null,
    Object? allPlaylist = null,
    Object? currentPlaylistArt = null,
    Object? currentPlayingTitle = null,
    Object? currentPlayingArtist = null,
    Object? currentPlayingUrl = null,
  }) {
    return _then(_$_PlaylistState(
      currentStatusFlag: null == currentStatusFlag
          ? _value.currentStatusFlag
          : currentStatusFlag // ignore: cast_nullable_to_non_nullable
              as bool,
      currentSelectedCategory: null == currentSelectedCategory
          ? _value.currentSelectedCategory
          : currentSelectedCategory // ignore: cast_nullable_to_non_nullable
              as int,
      alertFlag: null == alertFlag
          ? _value.alertFlag
          : alertFlag // ignore: cast_nullable_to_non_nullable
              as bool,
      allPlaylist: null == allPlaylist
          ? _value._allPlaylist
          : allPlaylist // ignore: cast_nullable_to_non_nullable
              as List<Playlist>,
      currentPlaylistArt: null == currentPlaylistArt
          ? _value.currentPlaylistArt
          : currentPlaylistArt // ignore: cast_nullable_to_non_nullable
              as String,
      currentPlayingTitle: null == currentPlayingTitle
          ? _value.currentPlayingTitle
          : currentPlayingTitle // ignore: cast_nullable_to_non_nullable
              as String,
      currentPlayingArtist: null == currentPlayingArtist
          ? _value.currentPlayingArtist
          : currentPlayingArtist // ignore: cast_nullable_to_non_nullable
              as String,
      currentPlayingUrl: null == currentPlayingUrl
          ? _value.currentPlayingUrl
          : currentPlayingUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_PlaylistState implements _PlaylistState {
  const _$_PlaylistState(
      {required this.currentStatusFlag,
      required this.currentSelectedCategory,
      required this.alertFlag,
      required final List<Playlist> allPlaylist,
      required this.currentPlaylistArt,
      required this.currentPlayingTitle,
      required this.currentPlayingArtist,
      required this.currentPlayingUrl})
      : _allPlaylist = allPlaylist;

  @override
  final bool currentStatusFlag;
  @override
  final int currentSelectedCategory;
  @override
  final bool alertFlag;
  final List<Playlist> _allPlaylist;
  @override
  List<Playlist> get allPlaylist {
    if (_allPlaylist is EqualUnmodifiableListView) return _allPlaylist;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_allPlaylist);
  }

  @override
  final String currentPlaylistArt;
  @override
  final String currentPlayingTitle;
  @override
  final String currentPlayingArtist;
  @override
  final String currentPlayingUrl;

  @override
  String toString() {
    return 'PlaylistState(currentStatusFlag: $currentStatusFlag, currentSelectedCategory: $currentSelectedCategory, alertFlag: $alertFlag, allPlaylist: $allPlaylist, currentPlaylistArt: $currentPlaylistArt, currentPlayingTitle: $currentPlayingTitle, currentPlayingArtist: $currentPlayingArtist, currentPlayingUrl: $currentPlayingUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PlaylistState &&
            (identical(other.currentStatusFlag, currentStatusFlag) ||
                other.currentStatusFlag == currentStatusFlag) &&
            (identical(
                    other.currentSelectedCategory, currentSelectedCategory) ||
                other.currentSelectedCategory == currentSelectedCategory) &&
            (identical(other.alertFlag, alertFlag) ||
                other.alertFlag == alertFlag) &&
            const DeepCollectionEquality()
                .equals(other._allPlaylist, _allPlaylist) &&
            (identical(other.currentPlaylistArt, currentPlaylistArt) ||
                other.currentPlaylistArt == currentPlaylistArt) &&
            (identical(other.currentPlayingTitle, currentPlayingTitle) ||
                other.currentPlayingTitle == currentPlayingTitle) &&
            (identical(other.currentPlayingArtist, currentPlayingArtist) ||
                other.currentPlayingArtist == currentPlayingArtist) &&
            (identical(other.currentPlayingUrl, currentPlayingUrl) ||
                other.currentPlayingUrl == currentPlayingUrl));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      currentStatusFlag,
      currentSelectedCategory,
      alertFlag,
      const DeepCollectionEquality().hash(_allPlaylist),
      currentPlaylistArt,
      currentPlayingTitle,
      currentPlayingArtist,
      currentPlayingUrl);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PlaylistStateCopyWith<_$_PlaylistState> get copyWith =>
      __$$_PlaylistStateCopyWithImpl<_$_PlaylistState>(this, _$identity);
}

abstract class _PlaylistState implements PlaylistState {
  const factory _PlaylistState(
      {required final bool currentStatusFlag,
      required final int currentSelectedCategory,
      required final bool alertFlag,
      required final List<Playlist> allPlaylist,
      required final String currentPlaylistArt,
      required final String currentPlayingTitle,
      required final String currentPlayingArtist,
      required final String currentPlayingUrl}) = _$_PlaylistState;

  @override
  bool get currentStatusFlag;
  @override
  int get currentSelectedCategory;
  @override
  bool get alertFlag;
  @override
  List<Playlist> get allPlaylist;
  @override
  String get currentPlaylistArt;
  @override
  String get currentPlayingTitle;
  @override
  String get currentPlayingArtist;
  @override
  String get currentPlayingUrl;
  @override
  @JsonKey(ignore: true)
  _$$_PlaylistStateCopyWith<_$_PlaylistState> get copyWith =>
      throw _privateConstructorUsedError;
}
