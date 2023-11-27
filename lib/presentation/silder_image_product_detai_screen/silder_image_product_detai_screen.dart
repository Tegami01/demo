import 'bloc/silder_image_product_detai_bloc.dart';
import 'models/silder_image_product_detai_model.dart';
import 'package:demo/core/app_export.dart';
import 'package:demo/widgets/custom_elevated_button.dart';
import 'package:demo/widgets/custom_rating_bar.dart';
import 'package:flutter/material.dart';

class SilderImageProductDetaiScreen extends StatelessWidget {
  const SilderImageProductDetaiScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<SilderImageProductDetaiBloc>(
      create: (context) =>
          SilderImageProductDetaiBloc(SilderImageProductDetaiState(
        silderImageProductDetaiModelObj: SilderImageProductDetaiModel(),
      ))
            ..add(SilderImageProductDetaiInitialEvent()),
      child: SilderImageProductDetaiScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return BlocBuilder<SilderImageProductDetaiBloc,
        SilderImageProductDetaiState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            backgroundColor: appTheme.whiteA700,
            body: SizedBox(
              width: 430.h,
              child: SizedBox(
                height: 624.v,
                width: 430.h,
                child: Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    Align(
                      alignment: Alignment.topCenter,
                      child: Container(
                        width: 430.h,
                        margin: EdgeInsets.only(bottom: 194.v),
                        padding: EdgeInsets.symmetric(
                          horizontal: 18.h,
                          vertical: 62.v,
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
                              margin: EdgeInsets.only(top: 281.v),
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
                              margin: EdgeInsets.only(top: 281.v),
                              leftIcon: Container(
                                margin: EdgeInsets.only(right: 5.h),
                                child: CustomImageView(
                                  imagePath: ImageConstant.imgFrameGray90001,
                                  height: 22.adaptSize,
                                  width: 22.adaptSize,
                                ),
                              ),
                              buttonStyle: CustomButtonStyles.fillWhiteATL12,
                              buttonTextStyle:
                                  CustomTextStyles.bodyLargeGray90001,
                            ),
                          ],
                        ),
                      ),
                    ),
                    _buildDecription(context),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }

  /// Section Widget
  Widget _buildDecription(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        decoration: AppDecoration.gradientBlueAToCyan.copyWith(
          borderRadius: BorderRadiusStyle.customBorderTL20,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            SizedBox(height: 10.v),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgFlashSale,
                    height: 26.v,
                    width: 131.h,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 4.v),
                    child: Text(
                      "msg_k_t_th_c_23_28_08".tr,
                      style: CustomTextStyles.bodyMediumHelveticaNeueWhiteA700,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10.v),
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: 15.h,
                vertical: 18.v,
              ),
              decoration: AppDecoration.fillWhiteA.copyWith(
                borderRadius: BorderRadiusStyle.customBorderTL20,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
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
                      Padding(
                        padding: EdgeInsets.only(
                          left: 4.h,
                          top: 16.v,
                        ),
                        child: RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: "lbl_3_600_0003".tr.toUpperCase(),
                                style: theme.textTheme.bodyLarge!.copyWith(
                                  decoration: TextDecoration.lineThrough,
                                ),
                              ),
                              TextSpan(
                                text: "lbl2".tr.toUpperCase(),
                                style: theme.textTheme.bodyLarge!.copyWith(
                                  decoration: TextDecoration.lineThrough,
                                ),
                              ),
                            ],
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 5.h,
                          top: 15.v,
                          bottom: 2.v,
                        ),
                        child: Text(
                          "lbl_18".tr.toUpperCase(),
                          style: CustomTextStyles.titleMediumRedA200,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 5.v),
                  Text(
                    "lbl_l_p_michelin2".tr,
                    style: CustomTextStyles.titleMediumBlack900,
                  ),
                  SizedBox(height: 11.v),
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 5.v),
                        child: CustomRatingBar(
                          initialRating: 0,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 5.h,
                          top: 4.v,
                          bottom: 2.v,
                        ),
                        child: Text(
                          "msg_5_108_216".tr,
                          style: CustomTextStyles.bodyMediumGray700Light15,
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
                  SizedBox(height: 10.v),
                  Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: 10.h,
                      vertical: 9.v,
                    ),
                    decoration: AppDecoration.gradientCyanToCyanAF.copyWith(
                      borderRadius: BorderRadiusStyle.circleBorder10,
                    ),
                    child: Row(
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgCheckCircleFill,
                          height: 16.v,
                          width: 14.h,
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 5.h),
                          child: Text(
                            "msg_thanh_to_n_b_o_m_t".tr,
                            style: CustomTextStyles.bodyMediumGray90002,
                          ),
                        ),
                        CustomImageView(
                          imagePath: ImageConstant.imgXCircleFill,
                          height: 16.adaptSize,
                          width: 16.adaptSize,
                          margin: EdgeInsets.only(left: 13.h),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 5.h),
                          child: Text(
                            "lbl_hu_n_d_d_ng".tr,
                            style: CustomTextStyles.bodyMediumGray90002,
                          ),
                        ),
                        CustomImageView(
                          imagePath: ImageConstant.imgIc24Explore,
                          height: 16.v,
                          width: 14.h,
                          margin: EdgeInsets.only(left: 14.h),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 5.h),
                          child: Text(
                            "lbl_h_tr_24_7".tr,
                            style: theme.textTheme.bodySmall,
                          ),
                        ),
                        CustomImageView(
                          imagePath: ImageConstant.imgArrowRight,
                          height: 9.v,
                          width: 4.h,
                          margin: EdgeInsets.only(
                            left: 9.h,
                            top: 3.v,
                            bottom: 3.v,
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
      ),
    );
  }
}
