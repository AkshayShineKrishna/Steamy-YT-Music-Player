import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'playlist_event.dart';
part 'playlist_state.dart';
part 'playlist_bloc.freezed.dart';

@injectable
class PlaylistBloc extends Bloc<PlaylistEvent, PlaylistState> {
  PlaylistBloc() : super(PlaylistState.initial()) {
    on<_ToggleStatusFlag>((event, emit) {
      if (!event.flag) {
        if (!state.currentStatusFlag) {
          emit(state.copyWith(currentStatusFlag: true));
        }
        return;
      }
      emit(state.copyWith(currentStatusFlag: false));
    });

    on<_Initialize>(((event, emit) => emit(
          state.copyWith(currentStatusFlag: false),
        )));
  }
}
