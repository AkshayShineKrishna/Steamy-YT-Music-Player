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
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool flag)? toggleStatusFlag,
    TResult? Function(int currentCategoryIndex)? getSelctedCategory,
    TResult? Function()? initialize,
    TResult? Function()? test,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool flag)? toggleStatusFlag,
    TResult Function(int currentCategoryIndex)? getSelctedCategory,
    TResult Function()? initialize,
    TResult Function()? test,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ToggleStatusFlag value) toggleStatusFlag,
    required TResult Function(_GetSelectedCategory value) getSelctedCategory,
    required TResult Function(_Initialize value) initialize,
    required TResult Function(_Test value) test,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ToggleStatusFlag value)? toggleStatusFlag,
    TResult? Function(_GetSelectedCategory value)? getSelctedCategory,
    TResult? Function(_Initialize value)? initialize,
    TResult? Function(_Test value)? test,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ToggleStatusFlag value)? toggleStatusFlag,
    TResult Function(_GetSelectedCategory value)? getSelctedCategory,
    TResult Function(_Initialize value)? initialize,
    TResult Function(_Test value)? test,
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
mixin _$PlaylistState {
  bool get currentStatusFlag => throw _privateConstructorUsedError;
  int get currentSelectedCategory => throw _privateConstructorUsedError;
  bool get alertFlag => throw _privateConstructorUsedError;

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
      {bool currentStatusFlag, int currentSelectedCategory, bool alertFlag});
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
      {bool currentStatusFlag, int currentSelectedCategory, bool alertFlag});
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
    ));
  }
}

/// @nodoc

class _$_PlaylistState implements _PlaylistState {
  const _$_PlaylistState(
      {required this.currentStatusFlag,
      required this.currentSelectedCategory,
      required this.alertFlag});

  @override
  final bool currentStatusFlag;
  @override
  final int currentSelectedCategory;
  @override
  final bool alertFlag;

  @override
  String toString() {
    return 'PlaylistState(currentStatusFlag: $currentStatusFlag, currentSelectedCategory: $currentSelectedCategory, alertFlag: $alertFlag)';
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
                other.alertFlag == alertFlag));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, currentStatusFlag, currentSelectedCategory, alertFlag);

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
      required final bool alertFlag}) = _$_PlaylistState;

  @override
  bool get currentStatusFlag;
  @override
  int get currentSelectedCategory;
  @override
  bool get alertFlag;
  @override
  @JsonKey(ignore: true)
  _$$_PlaylistStateCopyWith<_$_PlaylistState> get copyWith =>
      throw _privateConstructorUsedError;
}
