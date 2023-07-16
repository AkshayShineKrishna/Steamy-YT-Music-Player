part of 'home_bloc.dart';

@freezed
class HomeEvent with _$HomeEvent {
  const factory HomeEvent.getDownloads({
    required String youtubeUrl,
  }) = _GetDownloads;
  const factory HomeEvent.initialize() = _Initialize;
}
