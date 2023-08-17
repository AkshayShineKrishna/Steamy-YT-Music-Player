part of 'playlist_bloc.dart';

@freezed
class PlaylistEvent with _$PlaylistEvent {
  const factory PlaylistEvent.toggleStatusFlag({
    required bool flag,
  }) = _ToggleStatusFlag;

  const factory PlaylistEvent.getSelctedCategory({
    required int currentCategoryIndex,
  }) = _GetSelectedCategory;
  const factory PlaylistEvent.initialize() = _Initialize;

  const factory PlaylistEvent.test() = _Test;
}
