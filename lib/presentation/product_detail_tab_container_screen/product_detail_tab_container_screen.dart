import 'bloc/product_detail_tab_container_bloc.dart';
import 'models/product_detail_tab_container_model.dart';
import 'package:demo/core/app_export.dart';
import 'package:demo/presentation/product_detail_page/product_detail_page.dart';
import 'package:demo/widgets/app_bar/appbar_leading_image.dart';
import 'package:demo/widgets/app_bar/appbar_title_edittext.dart';
import 'package:demo/widgets/app_bar/appbar_trailing_image.dart';
import 'package:demo/widgets/app_bar/custom_app_bar.dart';
import 'package:demo/widgets/custom_elevated_button.dart';
import 'package:demo/widgets/custom_rating_bar.dart';
import 'package:flutter/material.dart';

class ProductDetailTabContainerScreen extends StatefulWidget {
  const ProductDetailTabContainerScreen({Key? key})
      : super(
          key: key,
        );

  @override
  ProductDetailTabContainerScreenState createState() =>
      ProductDetailTabContainerScreenState();
  static Widget builder(BuildContext context) {
    return BlocProvider<ProductDetailTabContainerBloc>(
      create: (context) =>
          ProductDetailTabContainerBloc(ProductDetailTabContainerState(
        productDetailTabContainerModelObj: ProductDetailTabContainerModel(),
      ))
            ..add(ProductDetailTabContainerInitialEvent()),
      child: ProductDetailTabContainerScreen(),
    );
  }
}

class ProductDetailTabContainerScreenState
    extends State<ProductDetailTabContainerScreen>
    with TickerProviderStateMixin {
  late TabController tabviewController;

  @override
  void initState() {
    super.initState();
    tabviewController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: SizedBox(
          width: mediaQueryData.size.width,
          child: SingleChildScrollView(
            child: Column(
              children: [
                _buildProductBasic(context),
                SizedBox(height: 5.v),
                _buildProductsOptions(context),
                SizedBox(
                  height: 1796.v,
                  child: TabBarView(
                    controller: tabviewController,
                    children: [
                      ProductDetailPage.builder(context),
                      ProductDetailPage.builder(context),
                      ProductDetailPage.builder(context),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: 36.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgVector,
        margin: EdgeInsets.only(
          left: 26.h,
          top: 68.v,
          bottom: 16.v,
        ),
      ),
      title: BlocSelector<ProductDetailTabContainerBloc,
          ProductDetailTabContainerState, TextEditingController?>(
        selector: (state) => state.searchController,
        builder: (context, searchController) {
          return AppbarTitleEdittext(
            margin: EdgeInsets.only(
              left: 27.h,
              top: 57.v,
              bottom: 3.v,
            ),
            hintText: "lbl_l_p_michelin".tr,
            controller: searchController,
          );
        },
      ),
      actions: [
        AppbarTrailingImage(
          imagePath: ImageConstant.imgShareAndroidGray600,
          margin: EdgeInsets.fromLTRB(18.h, 66.v, 14.h, 1.v),
        ),
        Container(
          height: 28.160004.v,
          width: 30.75.h,
          margin: EdgeInsets.fromLTRB(23.h, 60.v, 14.h, 1.v),
          child: Stack(
            alignment: Alignment.topRight,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgCart,
                height: 21.v,
                width: 22.h,
                alignment: Alignment.bottomLeft,
                margin: EdgeInsets.only(
                  top: 7.v,
                  right: 8.h,
                ),
              ),
              Align(
                alignment: Alignment.topRight,
                child: Container(
                  width: 17.adaptSize,
                  margin: EdgeInsets.only(
                    left: 13.h,
                    bottom: 11.v,
                  ),
                  decoration: AppDecoration.fillRed.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder6,
                  ),
                  child: Text(
                    "lbl_99".tr.toUpperCase(),
                    style: theme.textTheme.labelSmall,
                  ),
                ),
              ),
            ],
          ),
        ),
        AppbarTrailingImage(
          imagePath: ImageConstant.imgFrame,
          margin: EdgeInsets.only(
            left: 15.h,
            top: 66.v,
            right: 32.h,
          ),
        ),
      ],
      styleType: Style.bgFill,
    );
  }

  /// Section Widget
  Widget _buildProductBasic(BuildContext context) {
    return SizedBox(
      height: 674.v,
      width: 467.h,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              width: 467.h,
              margin: EdgeInsets.only(bottom: 207.v),
              padding: EdgeInsets.symmetric(
                horizontal: 18.h,
                vertical: 41.v,
              ),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    ImageConstant.imgGroup1000003203,
                  ),
                  fit: BoxFit.cover,
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Container(
                    width: 48.h,
                    margin: EdgeInsets.only(top: 360.v),
                    padding: EdgeInsets.symmetric(
                      horizontal: 11.h,
                      vertical: 2.v,
                    ),
                    decoration: AppDecoration.fillWhiteA700.copyWith(
                      borderRadius: BorderRadiusStyle.circleBorder10,
                    ),
                    child: Text(
                      "lbl_1_5".tr.toUpperCase(),
                      style: CustomTextStyles.bodyLargeGray90001,
                    ),
                  ),
                  CustomElevatedButton(
                    height: 25.v,
                    width: 67.h,
                    text: "lbl_412".tr.toUpperCase(),
                    margin: EdgeInsets.only(top: 360.v),
                    leftIcon: Container(
                      margin: EdgeInsets.only(right: 5.h),
                      child: CustomImageView(
                        imagePath: ImageConstant.imgFrameGray90001,
                        height: 22.adaptSize,
                        width: 22.adaptSize,
                      ),
                    ),
                    buttonStyle: CustomButtonStyles.fillWhiteATL12,
                    buttonTextStyle: CustomTextStyles.bodyLargeGray90001,
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: SizedBox(
              height: 237.v,
              width: 467.h,
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  Align(
                    alignment: Alignment.topCenter,
                    child: Container(
                      margin: EdgeInsets.only(bottom: 95.v),
                      padding: EdgeInsets.symmetric(
                        horizontal: 19.h,
                        vertical: 11.v,
                      ),
                      decoration: AppDecoration.gradientBlueAToCyan.copyWith(
                        borderRadius: BorderRadiusStyle.customBorderTL20,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.imgFlashSale,
                            height: 26.v,
                            width: 142.h,
                            margin: EdgeInsets.only(bottom: 94.v),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              top: 5.v,
                              bottom: 97.v,
                            ),
                            child: Text(
                              "msg_k_t_th_c_23_28_08".tr,
                              style: CustomTextStyles
                                  .bodyMediumHelveticaNeueWhiteA700,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 14.h,
                        vertical: 12.v,
                      ),
                      decoration: AppDecoration.fillWhiteA.copyWith(
                        borderRadius: BorderRadiusStyle.customBorderTL20,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          SizedBox(height: 6.v),
                          Padding(
                            padding: EdgeInsets.only(left: 1.h),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                RichText(
                                  text: TextSpan(
                                    children: [
                                      TextSpan(
                                        text: "lbl_2_900_0002".tr.toUpperCase(),
                                        style: theme.textTheme.headlineLarge,
                                      ),
                                      TextSpan(
                                        text: "lbl".tr.toUpperCase(),
                                        style: theme.textTheme.headlineLarge,
                                      ),
                                    ],
                                  ),
                                  textAlign: TextAlign.left,
                                ),
                                Container(
                                  height: 19.v,
                                  width: 74.h,
                                  margin: EdgeInsets.only(
                                    left: 20.h,
                                    top: 13.v,
                                    bottom: 4.v,
                                  ),
                                  child: Stack(
                                    alignment: Alignment.center,
                                    children: [
                                      Align(
                                        alignment: Alignment.center,
                                        child: RichText(
                                          text: TextSpan(
                                            children: [
                                              TextSpan(
                                                text: "lbl_3".tr.toUpperCase(),
                                                style:
                                                    theme.textTheme.bodyLarge,
                                              ),
                                              TextSpan(
                                                text: "lbl_600_000"
                                                    .tr
                                                    .toUpperCase(),
                                                style:
                                                    theme.textTheme.bodyLarge,
                                              ),
                                              TextSpan(
                                                text: "lbl".tr.toUpperCase(),
                                                style:
                                                    theme.textTheme.bodyLarge,
                                              ),
                                            ],
                                          ),
                                          textAlign: TextAlign.left,
                                        ),
                                      ),
                                      Align(
                                        alignment: Alignment.center,
                                        child: SizedBox(
                                          width: 72.h,
                                          child: Divider(
                                            color: appTheme.gray700,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                    left: 11.h,
                                    top: 12.v,
                                    bottom: 5.v,
                                  ),
                                  child: Text(
                                    "lbl_18".tr.toUpperCase(),
                                    style: CustomTextStyles.titleMediumRedA200,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 4.v),
                          Padding(
                            padding: EdgeInsets.only(left: 1.h),
                            child: Text(
                              "lbl_l_p_michelin2".tr,
                              style: CustomTextStyles.titleMediumBlack900,
                            ),
                          ),
                          SizedBox(height: 14.v),
                          Padding(
                            padding: EdgeInsets.only(
                              left: 1.h,
                              right: 9.h,
                            ),
                            child: Row(
                              children: [
                                Padding(
                                  padding: EdgeInsets.symmetric(vertical: 6.v),
                                  child: CustomRatingBar(
                                    initialRating: 0,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                    left: 8.h,
                                    top: 4.v,
                                    bottom: 2.v,
                                  ),
                                  child: Text(
                                    "msg_5_108_216".tr,
                                    style: CustomTextStyles
                                        .bodyMediumGray700Light15,
                                  ),
                                ),
                                Spacer(),
                                CustomImageView(
                                  imagePath: ImageConstant.imgFrameGray700,
                                  height: 25.adaptSize,
                                  width: 25.adaptSize,
                                ),
                                CustomImageView(
                                  imagePath: ImageConstant.imgShare,
                                  height: 22.adaptSize,
                                  width: 22.adaptSize,
                                  margin: EdgeInsets.only(
                                    left: 19.h,
                                    top: 3.v,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 17.v),
                          Container(
                            margin: EdgeInsets.only(left: 1.h),
                            padding: EdgeInsets.symmetric(
                              horizontal: 13.h,
                              vertical: 10.v,
                            ),
                            decoration:
                                AppDecoration.gradientCyanToCyanAF.copyWith(
                              borderRadius: BorderRadiusStyle.circleBorder10,
                            ),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                CustomImageView(
                                  imagePath: ImageConstant.imgCheckCircleFill,
                                  height: 16.adaptSize,
                                  width: 16.adaptSize,
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 4.h),
                                  child: Text(
                                    "msg_thanh_to_n_b_o_m_t".tr,
                                    style: CustomTextStyles.bodyMediumGray90002,
                                  ),
                                ),
                                CustomImageView(
                                  imagePath: ImageConstant.imgXCircleFill,
                                  height: 16.adaptSize,
                                  width: 16.adaptSize,
                                  margin: EdgeInsets.only(left: 12.h),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 4.h),
                                  child: Text(
                                    "lbl_hu_n_d_d_ng".tr,
                                    style: CustomTextStyles.bodyMediumGray90002,
                                  ),
                                ),
                                CustomImageView(
                                  imagePath: ImageConstant.imgIc24Explore,
                                  height: 16.adaptSize,
                                  width: 16.adaptSize,
                                  margin: EdgeInsets.only(left: 19.h),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 4.h),
                                  child: Text(
                                    "lbl_h_tr_24_7".tr,
                                    style: theme.textTheme.bodySmall,
                                  ),
                                ),
                                Spacer(),
                                CustomImageView(
                                  imagePath: ImageConstant.imgArrowRight,
                                  height: 9.v,
                                  width: 4.h,
                                  margin: EdgeInsets.only(
                                    top: 3.v,
                                    bottom: 4.v,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildProductsOptions(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(14.h),
      decoration: AppDecoration.fillWhiteA,
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(left: 1.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "msg_l_a_ch_n_s_n_ph_m".tr,
                  style: CustomTextStyles.titleMediumBlack900_1,
                ),
                Spacer(),
                Text(
                  "msg_4_k_ch_th_c_2".tr,
                  style: CustomTextStyles.bodyMediumGray700Light,
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgVectorGray700,
                  height: 10.v,
                  width: 5.h,
                  margin: EdgeInsets.only(
                    left: 11.h,
                    top: 4.v,
                    bottom: 4.v,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 16.v),
          Container(
            height: 38.v,
            width: 438.h,
            child: TabBar(
              controller: tabviewController,
              labelPadding: EdgeInsets.zero,
              tabs: [
                Tab(
                  child: Text(
                    "lbl_pilot_sport_3".tr,
                  ),
                ),
                Tab(
                  child: Text(
                    "lbl_pilot_sport_4".tr,
                  ),
                ),
                Tab(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 120.h,
                        padding: EdgeInsets.symmetric(
                          horizontal: 16.h,
                          vertical: 10.v,
                        ),
                        decoration: AppDecoration.fillBlueGray.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder6,
                        ),
                        child: Text(
                          "lbl_pilot_sport_4_s".tr,
                        ),
                      ),
                      Container(
                        width: 54.h,
                        margin: EdgeInsets.only(left: 8.h),
                        padding: EdgeInsets.symmetric(
                          horizontal: 18.h,
                          vertical: 8.v,
                        ),
                        decoration: AppDecoration.fillGray400.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder6,
                        ),
                        child: Text(
                          "lbl_32".tr,
                        ),
                      ),
                    ],
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
