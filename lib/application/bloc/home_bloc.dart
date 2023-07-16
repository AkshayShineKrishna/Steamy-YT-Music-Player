import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:steamy/domain/core/failure/main_failure.dart';
import 'package:steamy/domain/downloads/Model/downloads_response.dart';
import 'package:steamy/domain/downloads/downloadsservices.dart';

part 'home_event.dart';
part 'home_state.dart';
part 'home_bloc.freezed.dart';

@injectable
class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final DownloadsServices _downloadsServices;
  HomeBloc(this._downloadsServices) : super(HomeState.initial()) {
    on<_GetDownloads>((event, emit) async {
      emit(const HomeState(
        responseResult: [],
        isLoading: true,
        isError: false,
      ));

      final result =
          await _downloadsServices.getDownloads(youtubeUrl: event.youtubeUrl);
      result.fold((MainFailure failure) {
        emit(const HomeState(
            responseResult: [], isLoading: false, isError: true,));
      }, (DownloadsResponse success) {
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
  }
  
}
