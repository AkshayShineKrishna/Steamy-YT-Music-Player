import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:steamy/domain/menu_item/menu_data.dart';
import 'package:steamy/domain/menu_item/menu_item.dart';

part 'menu_event.dart';
part 'menu_state.dart';
part 'menu_bloc.freezed.dart';

@injectable
class MenuBloc extends Bloc<MenuEvent, MenuState> {
  MenuBloc() : super(MenuState.initial()) {
    on<_GetCurrentItem>((event, emit) async {
      emit(state.copyWith(currentItemData: event.menuDataItem));
    });
  }
}
