import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/lpxehankook_item_model.dart';
import '../models/frame_item_model.dart';
import 'package:demo/presentation/product_detail_page/models/product_detail_model.dart';
part 'product_detail_event.dart';
part 'product_detail_state.dart';

/// A bloc that manages the state of a ProductDetail according to the event that is dispatched to it.
class ProductDetailBloc extends Bloc<ProductDetailEvent, ProductDetailState> {
  ProductDetailBloc(ProductDetailState initialState) : super(initialState) {
    on<ProductDetailInitialEvent>(_onInitialize);
  }

  List<LpxehankookItemModel> fillLpxehankookItemList() {
    return [
      LpxehankookItemModel(
          image: ImageConstant.imgFrame1000003515,
          lPXeHankook: "Lốp xe Hankook 185/65 R15 Indo H308",
          lprcontinentalccSix: "Lốp 185/65r14 continental cc6\r"),
      LpxehankookItemModel(image: ImageConstant.imgFrame1000003515128x128)
    ];
  }

  List<FrameItemModel> fillFrameItemList() {
    return [
      FrameItemModel(frame: ImageConstant.imgFrame100000351690x90),
      FrameItemModel(frame: ImageConstant.imgFrame1000003517),
      FrameItemModel(frame: ImageConstant.imgFrame1000003518),
      FrameItemModel(frame: ImageConstant.imgFrame1000003519)
    ];
  }

  _onInitialize(
    ProductDetailInitialEvent event,
    Emitter<ProductDetailState> emit,
  ) async {
    emit(state.copyWith(group334Controller: TextEditingController()));
    emit(state.copyWith(
        productDetailModelObj: state.productDetailModelObj?.copyWith(
            lpxehankookItemList: fillLpxehankookItemList(),
            frameItemList: fillFrameItemList())));
  }
}
