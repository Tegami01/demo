// ignore_for_file: must_be_immutable

part of 'product_detail_bloc.dart';

/// Represents the state of ProductDetail in the application.
class ProductDetailState extends Equatable {
  ProductDetailState({
    this.group334Controller,
    this.productDetailModelObj,
  });

  TextEditingController? group334Controller;

  ProductDetailModel? productDetailModelObj;

  @override
  List<Object?> get props => [
        group334Controller,
        productDetailModelObj,
      ];
  ProductDetailState copyWith({
    TextEditingController? group334Controller,
    ProductDetailModel? productDetailModelObj,
  }) {
    return ProductDetailState(
      group334Controller: group334Controller ?? this.group334Controller,
      productDetailModelObj:
          productDetailModelObj ?? this.productDetailModelObj,
    );
  }
}
