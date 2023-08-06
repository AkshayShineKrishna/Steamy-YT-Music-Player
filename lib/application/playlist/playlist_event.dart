part of 'playlist_bloc.dart';

@freezed
class PlaylistEvent with _$PlaylistEvent {
  const factory PlaylistEvent.toggleStatusFlag({
    required bool flag,
  }) = _ToggleStatusFlag;

  const factory PlaylistEvent.initialize() = _Initialize;
}
