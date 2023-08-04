// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'menu_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MenuEvent {
  MenuData get menuDataItem => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(MenuData menuDataItem) getCurrentItem,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(MenuData menuDataItem)? getCurrentItem,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(MenuData menuDataItem)? getCurrentItem,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetCurrentItem value) getCurrentItem,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetCurrentItem value)? getCurrentItem,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetCurrentItem value)? getCurrentItem,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MenuEventCopyWith<MenuEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MenuEventCopyWith<$Res> {
  factory $MenuEventCopyWith(MenuEvent value, $Res Function(MenuEvent) then) =
      _$MenuEventCopyWithImpl<$Res, MenuEvent>;
  @useResult
  $Res call({MenuData menuDataItem});
}

/// @nodoc
class _$MenuEventCopyWithImpl<$Res, $Val extends MenuEvent>
    implements $MenuEventCopyWith<$Res> {
  _$MenuEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? menuDataItem = null,
  }) {
    return _then(_value.copyWith(
      menuDataItem: null == menuDataItem
          ? _value.menuDataItem
          : menuDataItem // ignore: cast_nullable_to_non_nullable
              as MenuData,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_GetCurrentItemCopyWith<$Res>
    implements $MenuEventCopyWith<$Res> {
  factory _$$_GetCurrentItemCopyWith(
          _$_GetCurrentItem value, $Res Function(_$_GetCurrentItem) then) =
      __$$_GetCurrentItemCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({MenuData menuDataItem});
}

/// @nodoc
class __$$_GetCurrentItemCopyWithImpl<$Res>
    extends _$MenuEventCopyWithImpl<$Res, _$_GetCurrentItem>
    implements _$$_GetCurrentItemCopyWith<$Res> {
  __$$_GetCurrentItemCopyWithImpl(
      _$_GetCurrentItem _value, $Res Function(_$_GetCurrentItem) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? menuDataItem = null,
  }) {
    return _then(_$_GetCurrentItem(
      menuDataItem: null == menuDataItem
          ? _value.menuDataItem
          : menuDataItem // ignore: cast_nullable_to_non_nullable
              as MenuData,
    ));
  }
}

/// @nodoc

class _$_GetCurrentItem implements _GetCurrentItem {
  const _$_GetCurrentItem({required this.menuDataItem});

  @override
  final MenuData menuDataItem;

  @override
  String toString() {
    return 'MenuEvent.getCurrentItem(menuDataItem: $menuDataItem)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetCurrentItem &&
            (identical(other.menuDataItem, menuDataItem) ||
                other.menuDataItem == menuDataItem));
  }

  @override
  int get hashCode => Object.hash(runtimeType, menuDataItem);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GetCurrentItemCopyWith<_$_GetCurrentItem> get copyWith =>
      __$$_GetCurrentItemCopyWithImpl<_$_GetCurrentItem>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(MenuData menuDataItem) getCurrentItem,
  }) {
    return getCurrentItem(menuDataItem);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(MenuData menuDataItem)? getCurrentItem,
  }) {
    return getCurrentItem?.call(menuDataItem);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(MenuData menuDataItem)? getCurrentItem,
    required TResult orElse(),
  }) {
    if (getCurrentItem != null) {
      return getCurrentItem(menuDataItem);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetCurrentItem value) getCurrentItem,
  }) {
    return getCurrentItem(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetCurrentItem value)? getCurrentItem,
  }) {
    return getCurrentItem?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetCurrentItem value)? getCurrentItem,
    required TResult orElse(),
  }) {
    if (getCurrentItem != null) {
      return getCurrentItem(this);
    }
    return orElse();
  }
}

abstract class _GetCurrentItem implements MenuEvent {
  const factory _GetCurrentItem({required final MenuData menuDataItem}) =
      _$_GetCurrentItem;

  @override
  MenuData get menuDataItem;
  @override
  @JsonKey(ignore: true)
  _$$_GetCurrentItemCopyWith<_$_GetCurrentItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$MenuState {
  MenuData get currentItemData => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MenuStateCopyWith<MenuState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MenuStateCopyWith<$Res> {
  factory $MenuStateCopyWith(MenuState value, $Res Function(MenuState) then) =
      _$MenuStateCopyWithImpl<$Res, MenuState>;
  @useResult
  $Res call({MenuData currentItemData});
}

/// @nodoc
class _$MenuStateCopyWithImpl<$Res, $Val extends MenuState>
    implements $MenuStateCopyWith<$Res> {
  _$MenuStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentItemData = null,
  }) {
    return _then(_value.copyWith(
      currentItemData: null == currentItemData
          ? _value.currentItemData
          : currentItemData // ignore: cast_nullable_to_non_nullable
              as MenuData,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MenuStateCopyWith<$Res> implements $MenuStateCopyWith<$Res> {
  factory _$$_MenuStateCopyWith(
          _$_MenuState value, $Res Function(_$_MenuState) then) =
      __$$_MenuStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({MenuData currentItemData});
}

/// @nodoc
class __$$_MenuStateCopyWithImpl<$Res>
    extends _$MenuStateCopyWithImpl<$Res, _$_MenuState>
    implements _$$_MenuStateCopyWith<$Res> {
  __$$_MenuStateCopyWithImpl(
      _$_MenuState _value, $Res Function(_$_MenuState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentItemData = null,
  }) {
    return _then(_$_MenuState(
      currentItemData: null == currentItemData
          ? _value.currentItemData
          : currentItemData // ignore: cast_nullable_to_non_nullable
              as MenuData,
    ));
  }
}

/// @nodoc

class _$_MenuState implements _MenuState {
  const _$_MenuState({required this.currentItemData});

  @override
  final MenuData currentItemData;

  @override
  String toString() {
    return 'MenuState(currentItemData: $currentItemData)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MenuState &&
            (identical(other.currentItemData, currentItemData) ||
                other.currentItemData == currentItemData));
  }

  @override
  int get hashCode => Object.hash(runtimeType, currentItemData);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MenuStateCopyWith<_$_MenuState> get copyWith =>
      __$$_MenuStateCopyWithImpl<_$_MenuState>(this, _$identity);
}

abstract class _MenuState implements MenuState {
  const factory _MenuState({required final MenuData currentItemData}) =
      _$_MenuState;

  @override
  MenuData get currentItemData;
  @override
  @JsonKey(ignore: true)
  _$$_MenuStateCopyWith<_$_MenuState> get copyWith =>
      throw _privateConstructorUsedError;
}
