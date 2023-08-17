part of 'menu_bloc.dart';

@freezed
class MenuEvent with _$MenuEvent {
  const factory MenuEvent.getCurrentItem({
    required MenuData menuDataItem,
  }) = _GetCurrentItem;
}
