import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:steamy/domain/core/failure/main_failure.dart';
import 'package:steamy/domain/refresh/refreshservices.dart';
import 'package:steamy/domain/get_audio/Model/get_audio_response.dart';
import 'package:steamy/domain/get_audio/get_audio_services.dart';

part 'home_event.dart';
part 'home_state.dart';
part 'home_bloc.freezed.dart';

@injectable
class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final GetAudioServices _getAudioServices;
  final RefreshServices _refreshServices;
  HomeBloc(this._getAudioServices, this._refreshServices)
      : super(HomeState.initial()) {
    on<_GetAudio>((event, emit) async {
      emit(const HomeState(
        responseResult: [],
        isLoading: true,
        isError: false,
      ));

      final result =
          await _getAudioServices.getAudio(youtubeUrl: event.youtubeUrl);
      result.fold((MainFailure failure) {
        emit(const HomeState(
          responseResult: [],
          isLoading: false,
          isError: true,
        ));
      }, (GetAudioResponse success) {
        log(success.result.toString());
        emit(HomeState(
          responseResult: success.result,
          isLoading: false,
          isError: false,
        ));
      });
    });
    on<_Initialize>((event, emit) async {
      emit(const HomeState(
        responseResult: [],
        isLoading: false,
        isError: false,
      ));
    });
    on<_RefreshServer>((event, emit) async {
      final result = await _refreshServices.refreshServer();
      log(result.toString());
    });
  }
}
