import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:demo/presentation/product_detail_tab_container_screen/models/product_detail_tab_container_model.dart';
part 'product_detail_tab_container_event.dart';
part 'product_detail_tab_container_state.dart';

/// A bloc that manages the state of a ProductDetailTabContainer according to the event that is dispatched to it.
class ProductDetailTabContainerBloc extends Bloc<ProductDetailTabContainerEvent,
    ProductDetailTabContainerState> {
  ProductDetailTabContainerBloc(ProductDetailTabContainerState initialState)
      : super(initialState) {
    on<ProductDetailTabContainerInitialEvent>(_onInitialize);
  }

  _onInitialize(
    ProductDetailTabContainerInitialEvent event,
    Emitter<ProductDetailTabContainerState> emit,
  ) async {
    emit(state.copyWith(
      searchController: TextEditingController(),
    ));
  }
}
