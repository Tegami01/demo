import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:demo/presentation/product_category_ai_screen/models/product_category_ai_model.dart';
part 'product_category_ai_event.dart';
part 'product_category_ai_state.dart';

/// A bloc that manages the state of a ProductCategoryAi according to the event that is dispatched to it.
class ProductCategoryAiBloc
    extends Bloc<ProductCategoryAiEvent, ProductCategoryAiState> {
  ProductCategoryAiBloc(ProductCategoryAiState initialState)
      : super(initialState) {
    on<ProductCategoryAiInitialEvent>(_onInitialize);
  }

  _onInitialize(
    ProductCategoryAiInitialEvent event,
    Emitter<ProductCategoryAiState> emit,
  ) async {}
}
