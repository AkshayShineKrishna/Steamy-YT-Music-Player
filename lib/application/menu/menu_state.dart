part of 'menu_bloc.dart';

@freezed
class MenuState with _$MenuState {
  const factory MenuState({
    required MenuData currentItemData,
  }) = _MenuState;

  factory MenuState.initial() => const MenuState(
        currentItemData: MenuItems.home,
      );
}
