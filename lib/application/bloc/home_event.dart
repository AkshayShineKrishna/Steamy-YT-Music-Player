part of 'home_bloc.dart';

@freezed
class HomeEvent with _$HomeEvent {
  const factory HomeEvent.getAudio({
    required String youtubeUrl,
  }) = _GetAudio;
  const factory HomeEvent.initialize() = _Initialize;
  const factory HomeEvent.refreshServer() = _RefreshServer;
}
