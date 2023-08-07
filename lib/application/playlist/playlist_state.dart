part of 'playlist_bloc.dart';

@freezed
class PlaylistState with _$PlaylistState {
  const factory PlaylistState({
    required bool currentStatusFlag,
    required int currentSelectedCategory,
  }) = _PlaylistState;

  factory PlaylistState.initial() => const PlaylistState(
      currentStatusFlag: false, currentSelectedCategory: -1);
}
