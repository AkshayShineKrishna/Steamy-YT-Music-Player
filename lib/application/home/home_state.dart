part of 'home_bloc.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState({
    required List<ResultData> responseResult,
    required bool isLoading,
    required bool isError,
    required String? currentArt,
    required bool likedStatus,
  }) = _HomeState;

  factory HomeState.initial() => const HomeState(
        responseResult: [],
        isLoading: false,
        isError: false,
        currentArt: null,
        likedStatus: false,
      );
}
