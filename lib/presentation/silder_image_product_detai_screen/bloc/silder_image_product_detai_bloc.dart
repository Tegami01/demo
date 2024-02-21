import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/servicecard_item_model.dart';
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
  ) async {
    emit(state.copyWith(
        silderImageProductDetaiModelObj: state.silderImageProductDetaiModelObj
            ?.copyWith(servicecardItemList: fillServicecardItemList())));
  }

  List<ServicecardItemModel> fillServicecardItemList() {
    return [
      ServicecardItemModel(
          serviceImage: ImageConstant.imgFrame1000003516,
          serviceName: "Dịch vụ thay lốp tại nhà"),
      ServicecardItemModel(
          serviceImage: ImageConstant.imgFrame100000351650x46,
          serviceName: "Dịch vụ rửa xe tại nhà"),
      ServicecardItemModel(
          serviceImage: ImageConstant.imgFrame10000035161,
          serviceName: "Dịch vụ vệ sinh nội thất xe")
    ];
  }
}
