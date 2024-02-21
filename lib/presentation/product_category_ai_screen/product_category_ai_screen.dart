import 'bloc/product_category_ai_bloc.dart';
import 'models/product_category_ai_model.dart';
import 'package:demo/core/app_export.dart';
import 'package:flutter/material.dart';

class ProductCategoryAiScreen extends StatelessWidget {
  const ProductCategoryAiScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<ProductCategoryAiBloc>(
      create: (context) => ProductCategoryAiBloc(ProductCategoryAiState(
        productCategoryAiModelObj: ProductCategoryAiModel(),
      ))
        ..add(ProductCategoryAiInitialEvent()),
      child: ProductCategoryAiScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return BlocBuilder<ProductCategoryAiBloc, ProductCategoryAiState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            backgroundColor: appTheme.gray100,
            body: SizedBox(
              width: double.maxFinite,
              child: Column(
                children: [
                  SizedBox(height: 41.v),
                  Expanded(
                    child: SingleChildScrollView(
                      child: _buildProductCategoryAi(context),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  /// Section Widget
  Widget _buildProductCategoryAi(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        right: 58.h,
        bottom: 842.v,
      ),
      child: Column(
        children: [
          Align(
            alignment: Alignment.centerRight,
            child: Padding(
              padding: EdgeInsets.only(right: 61.h),
              child: Text(
                "lbl_danh_m_c_h_ng".tr,
                style: theme.textTheme.titleLarge,
              ),
            ),
          ),
          SizedBox(height: 19.v),
          Container(
            padding: EdgeInsets.symmetric(vertical: 12.v),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    left: 47.h,
                    top: 3.v,
                  ),
                  child: Text(
                    "lbl_s_n_ph_m".tr,
                    style: CustomTextStyles.bodyLargeCyan400,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 3.v),
                  child: Text(
                    "lbl_d_ch_v".tr,
                    style: CustomTextStyles.bodyLargeGray500,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
