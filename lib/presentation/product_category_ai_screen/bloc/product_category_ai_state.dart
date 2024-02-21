// ignore_for_file: must_be_immutable

part of 'product_category_ai_bloc.dart';

/// Represents the state of ProductCategoryAi in the application.
class ProductCategoryAiState extends Equatable {
  ProductCategoryAiState({this.productCategoryAiModelObj});

  ProductCategoryAiModel? productCategoryAiModelObj;

  @override
  List<Object?> get props => [
        productCategoryAiModelObj,
      ];

  ProductCategoryAiState copyWith(
      {ProductCategoryAiModel? productCategoryAiModelObj}) {
    return ProductCategoryAiState(
      productCategoryAiModelObj:
          productCategoryAiModelObj ?? this.productCategoryAiModelObj,
    );
  }
}
