// ignore_for_file: must_be_immutable

part of 'product_detail_tab_container_bloc.dart';

/// Represents the state of ProductDetailTabContainer in the application.
class ProductDetailTabContainerState extends Equatable {
  ProductDetailTabContainerState({
    this.searchController,
    this.productDetailTabContainerModelObj,
  });

  TextEditingController? searchController;

  ProductDetailTabContainerModel? productDetailTabContainerModelObj;

  @override
  List<Object?> get props => [
        searchController,
        productDetailTabContainerModelObj,
      ];
  ProductDetailTabContainerState copyWith({
    TextEditingController? searchController,
    ProductDetailTabContainerModel? productDetailTabContainerModelObj,
  }) {
    return ProductDetailTabContainerState(
      searchController: searchController ?? this.searchController,
      productDetailTabContainerModelObj: productDetailTabContainerModelObj ??
          this.productDetailTabContainerModelObj,
    );
  }
}
