import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:demo/presentation/appbar_navgitionbottom_screen/models/appbar_navgitionbottom_model.dart';
part 'appbar_navgitionbottom_event.dart';
part 'appbar_navgitionbottom_state.dart';

/// A bloc that manages the state of a AppbarNavgitionbottom according to the event that is dispatched to it.
class AppbarNavgitionbottomBloc
    extends Bloc<AppbarNavgitionbottomEvent, AppbarNavgitionbottomState> {
  AppbarNavgitionbottomBloc(AppbarNavgitionbottomState initialState)
      : super(initialState) {
    on<AppbarNavgitionbottomInitialEvent>(_onInitialize);
  }

  _onInitialize(
    AppbarNavgitionbottomInitialEvent event,
    Emitter<AppbarNavgitionbottomState> emit,
  ) async {
    emit(state.copyWith(searchController: TextEditingController()));
  }
}
