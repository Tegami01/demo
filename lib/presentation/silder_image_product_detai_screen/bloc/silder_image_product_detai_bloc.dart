import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:demo/presentation/silder_image_product_detai_screen/models/silder_image_product_detai_model.dart';
part 'silder_image_product_detai_event.dart';
part 'silder_image_product_detai_state.dart';

/// A bloc that manages the state of a SilderImageProductDetai according to the event that is dispatched to it.
class SilderImageProductDetaiBloc
    extends Bloc<SilderImageProductDetaiEvent, SilderImageProductDetaiState> {
  SilderImageProductDetaiBloc(SilderImageProductDetaiState initialState)
      : super(initialState) {
    on<SilderImageProductDetaiInitialEvent>(_onInitialize);
  }

  _onInitialize(
    SilderImageProductDetaiInitialEvent event,
    Emitter<SilderImageProductDetaiState> emit,
  ) async {}
}
