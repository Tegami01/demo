import '../silder_image_product_detai_screen/widgets/servicecard_item_widget.dart';
import 'bloc/silder_image_product_detai_bloc.dart';
import 'models/servicecard_item_model.dart';
import 'models/silder_image_product_detai_model.dart';
import 'package:demo/core/app_export.dart';
import 'package:demo/widgets/custom_elevated_button.dart';
import 'package:demo/widgets/custom_rating_bar.dart';
import 'package:flutter/material.dart';

class SilderImageProductDetaiScreen extends StatelessWidget {
  const SilderImageProductDetaiScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<SilderImageProductDetaiBloc>(
        create: (context) => SilderImageProductDetaiBloc(
            SilderImageProductDetaiState(
                silderImageProductDetaiModelObj:
                    SilderImageProductDetaiModel()))
          ..add(SilderImageProductDetaiInitialEvent()),
        child: SilderImageProductDetaiScreen());
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            body: SizedBox(
                width: 430.h,
                child: Column(children: [
                  SizedBox(height: 80.v),
                  Expanded(
                      child: SingleChildScrollView(
                          child: Padding(
                              padding: EdgeInsets.only(bottom: 80.v),
                              child: Column(children: [
                                _buildSliderDescription(context),
                                SizedBox(height: 5.v),
                                _buildFrameColumn(context),
                                SizedBox(height: 5.v),
                                _buildServicesOptions(context),
                                SizedBox(height: 5.v),
                                _buildCouponList(context),
                                SizedBox(height: 5.v),
                                _buildShipping(context)
                              ]))))
                ]))));
  }

  /// Section Widget
  Widget _buildSliderDescription(BuildContext context) {
    return SizedBox(
        height: 624.v,
        width: 430.h,
        child: Stack(alignment: Alignment.bottomCenter, children: [
          Align(
              alignment: Alignment.topCenter,
              child: Container(
                  width: 430.h,
                  margin: EdgeInsets.only(bottom: 194.v),
                  padding:
                      EdgeInsets.symmetric(horizontal: 18.h, vertical: 62.v),
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(ImageConstant.imgRow),
                          fit: BoxFit.cover)),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Container(
                            width: 48.h,
                            margin: EdgeInsets.only(top: 281.v),
                            padding: EdgeInsets.symmetric(
                                horizontal: 11.h, vertical: 2.v),
                            decoration: AppDecoration.fillWhiteA.copyWith(
                                borderRadius:
                                    BorderRadiusStyle.roundedBorder12),
                            child: Text("lbl_1_5".tr.toUpperCase(),
                                style: CustomTextStyles.bodyLargeGray900)),
                        CustomElevatedButton(
                            width: 67.h,
                            text: "lbl_412".tr.toUpperCase(),
                            margin: EdgeInsets.only(top: 281.v),
                            leftIcon: Container(
                                margin: EdgeInsets.only(right: 5.h),
                                child: CustomImageView(
                                    imagePath: ImageConstant.imgFrame,
                                    height: 22.adaptSize,
                                    width: 22.adaptSize)))
                      ]))),
          Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                  decoration: AppDecoration.gradientBlueAToCyan.copyWith(
                      borderRadius: BorderRadiusStyle.customBorderTL20),
                  child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        SizedBox(height: 10.v),
                        Padding(
                            padding: EdgeInsets.symmetric(horizontal: 15.h),
                            child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  CustomImageView(
                                      imagePath: ImageConstant.imgFlashSale,
                                      height: 26.v,
                                      width: 131.h),
                                  Padding(
                                      padding:
                                          EdgeInsets.symmetric(vertical: 4.v),
                                      child: Text("msg_k_t_th_c_23_28_08".tr,
                                          style: CustomTextStyles
                                              .bodyMediumHelveticaNeueWhiteA700))
                                ])),
                        SizedBox(height: 10.v),
                        Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 15.h, vertical: 18.v),
                            decoration: AppDecoration.fillWhiteA700.copyWith(
                                borderRadius:
                                    BorderRadiusStyle.customBorderTL20),
                            child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      children: [
                                        RichText(
                                            text: TextSpan(children: [
                                              TextSpan(
                                                  text: "lbl_2_900_0002"
                                                      .tr
                                                      .toUpperCase(),
                                                  style: theme
                                                      .textTheme.headlineLarge),
                                              TextSpan(
                                                  text: "lbl".tr.toUpperCase(),
                                                  style: theme
                                                      .textTheme.headlineLarge)
                                            ]),
                                            textAlign: TextAlign.left),
                                        Padding(
                                            padding: EdgeInsets.only(
                                                left: 4.h, top: 16.v),
                                            child: RichText(
                                                text: TextSpan(children: [
                                                  TextSpan(
                                                      text: "lbl_3_600_0003"
                                                          .tr
                                                          .toUpperCase(),
                                                      style: CustomTextStyles
                                                          .bodyLargeGray700_1
                                                          .copyWith(
                                                              decoration:
                                                                  TextDecoration
                                                                      .lineThrough)),
                                                  TextSpan(
                                                      text: "lbl2"
                                                          .tr
                                                          .toUpperCase(),
                                                      style: CustomTextStyles
                                                          .bodyLargeGray700_1
                                                          .copyWith(
                                                              decoration:
                                                                  TextDecoration
                                                                      .lineThrough))
                                                ]),
                                                textAlign: TextAlign.left)),
                                        Padding(
                                            padding: EdgeInsets.only(
                                                left: 5.h,
                                                top: 15.v,
                                                bottom: 2.v),
                                            child: Text(
                                                "lbl_18".tr.toUpperCase(),
                                                style: CustomTextStyles
                                                    .titleMediumRedA200))
                                      ]),
                                  SizedBox(height: 5.v),
                                  Text("lbl_l_p_michelin2".tr,
                                      style:
                                          CustomTextStyles.titleMediumBlack900),
                                  SizedBox(height: 11.v),
                                  Row(children: [
                                    Padding(
                                        padding:
                                            EdgeInsets.symmetric(vertical: 5.v),
                                        child:
                                            CustomRatingBar(initialRating: 0)),
                                    Padding(
                                        padding: EdgeInsets.only(
                                            left: 5.h, top: 4.v, bottom: 2.v),
                                        child: Text("msg_5_108_216".tr,
                                            style: CustomTextStyles
                                                .bodyMediumGray70015)),
                                    Spacer(),
                                    CustomImageView(
                                        imagePath: ImageConstant.imgCare,
                                        height: 25.adaptSize,
                                        width: 25.adaptSize),
                                    CustomImageView(
                                        imagePath:
                                            ImageConstant.imgShareAndroid,
                                        height: 22.adaptSize,
                                        width: 22.adaptSize,
                                        margin: EdgeInsets.only(
                                            left: 19.h, top: 3.v))
                                  ]),
                                  SizedBox(height: 10.v),
                                  Container(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 10.h, vertical: 9.v),
                                      decoration: AppDecoration
                                          .gradientCyanToCyanAF
                                          .copyWith(
                                              borderRadius: BorderRadiusStyle
                                                  .roundedBorder12),
                                      child: Row(children: [
                                        CustomImageView(
                                            imagePath: ImageConstant
                                                .imgCheckCircleFill,
                                            height: 16.v,
                                            width: 14.h),
                                        Padding(
                                            padding: EdgeInsets.only(left: 5.h),
                                            child: Text(
                                                "msg_thanh_to_n_b_o_m_t".tr,
                                                style: CustomTextStyles
                                                    .bodyMediumGray90001)),
                                        CustomImageView(
                                            imagePath:
                                                ImageConstant.imgXCircleFill,
                                            height: 16.adaptSize,
                                            width: 16.adaptSize,
                                            margin:
                                                EdgeInsets.only(left: 13.h)),
                                        Padding(
                                            padding: EdgeInsets.only(left: 5.h),
                                            child: Text("lbl_hu_n_d_d_ng".tr,
                                                style: CustomTextStyles
                                                    .bodyMediumGray90001)),
                                        CustomImageView(
                                            imagePath:
                                                ImageConstant.imgIc24Explore,
                                            height: 16.v,
                                            width: 14.h,
                                            margin:
                                                EdgeInsets.only(left: 14.h)),
                                        Padding(
                                            padding: EdgeInsets.only(left: 5.h),
                                            child: Text("lbl_h_tr_24_7".tr,
                                                style:
                                                    theme.textTheme.bodySmall)),
                                        CustomImageView(
                                            imagePath: ImageConstant.imgVector,
                                            height: 9.v,
                                            width: 4.h,
                                            margin: EdgeInsets.only(
                                                left: 9.h,
                                                top: 3.v,
                                                bottom: 3.v))
                                      ]))
                                ]))
                      ])))
        ]));
  }

  /// Section Widget
  Widget _buildFrameColumn(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 7.h, vertical: 10.v),
        decoration: AppDecoration.fillWhiteA700,
        child: Column(children: [
          Padding(
              padding: EdgeInsets.symmetric(horizontal: 6.h),
              child:
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                Text("msg_l_a_ch_n_s_n_ph_m".tr,
                    style: CustomTextStyles.titleMediumBlack900_1),
                Spacer(),
                Text("msg_4_k_ch_th_c_2".tr,
                    style: CustomTextStyles.bodyMediumGray70014),
                CustomImageView(
                    imagePath: ImageConstant.imgArrowRight,
                    height: 10.v,
                    width: 6.h,
                    margin: EdgeInsets.only(left: 13.h, top: 4.v, bottom: 4.v))
              ])),
          SizedBox(height: 9.v),
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Container(
                width: 115.h,
                padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 10.v),
                decoration: AppDecoration.fillBlueGray
                    .copyWith(borderRadius: BorderRadiusStyle.roundedBorder6),
                child: Text("lbl_pilot_sport_3".tr,
                    style: CustomTextStyles.bodyMediumGray70015)),
            Container(
                width: 115.h,
                padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 10.v),
                decoration: AppDecoration.fillBlueGray
                    .copyWith(borderRadius: BorderRadiusStyle.roundedBorder6),
                child: Text("lbl_pilot_sport_4".tr,
                    style: CustomTextStyles.bodyMediumGray70015)),
            Container(
                width: 115.h,
                padding: EdgeInsets.all(10.h),
                decoration: AppDecoration.fillBlueGray
                    .copyWith(borderRadius: BorderRadiusStyle.roundedBorder6),
                child: Text("lbl_pilot_sport_4_s".tr,
                    style: CustomTextStyles.bodyMediumGray70015)),
            Container(
                width: 40.adaptSize,
                padding: EdgeInsets.symmetric(horizontal: 11.h, vertical: 10.v),
                decoration: AppDecoration.fillGray400
                    .copyWith(borderRadius: BorderRadiusStyle.roundedBorder6),
                child: Text("lbl_32".tr,
                    style: CustomTextStyles.bodyMediumWhiteA700))
          ])
        ]));
  }

  /// Section Widget
  Widget _buildServicesOptions(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(14.h),
        decoration: AppDecoration.fillWhiteA700,
        child: Column(children: [
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            Text("msg_l_a_ch_n_d_ch_v".tr,
                style: CustomTextStyles.titleMediumBlack900_1),
            Spacer(),
            Text("lbl_3_d_ch_v".tr,
                style: CustomTextStyles.bodyMediumGray70014),
            CustomImageView(
                imagePath: ImageConstant.imgArrowRight,
                height: 10.v,
                width: 5.h,
                margin: EdgeInsets.only(left: 5.h, top: 3.v, bottom: 5.v))
          ]),
          SizedBox(height: 10.v),
          BlocSelector<SilderImageProductDetaiBloc,
                  SilderImageProductDetaiState, SilderImageProductDetaiModel?>(
              selector: (state) => state.silderImageProductDetaiModelObj,
              builder: (context, silderImageProductDetaiModelObj) {
                return ListView.separated(
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    separatorBuilder: (context, index) {
                      return SizedBox(height: 11.v);
                    },
                    itemCount: silderImageProductDetaiModelObj
                            ?.servicecardItemList.length ??
                        0,
                    itemBuilder: (context, index) {
                      ServicecardItemModel model =
                          silderImageProductDetaiModelObj
                                  ?.servicecardItemList[index] ??
                              ServicecardItemModel();
                      return ServicecardItemWidget(model);
                    });
              })
        ]));
  }

  /// Section Widget
  Widget _buildCouponList(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 14.h, vertical: 4.v),
        decoration: AppDecoration.fillWhiteA700,
        child: Column(children: [
          GestureDetector(
              onTap: () {
                onTapFrame(context);
              },
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("lbl_m_gi_m_gi".tr,
                        style: CustomTextStyles.titleMediumBlack900SemiBold),
                    CustomImageView(
                        imagePath: ImageConstant.imgArrowRight,
                        height: 10.v,
                        width: 5.h,
                        margin: EdgeInsets.only(top: 4.v, bottom: 6.v))
                  ])),
          SizedBox(height: 2.v),
          SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: IntrinsicWidth(
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                    Expanded(
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                          Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 16.h, vertical: 7.v),
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(
                                          ImageConstant.imgGroup2878),
                                      fit: BoxFit.cover)),
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                        padding: EdgeInsets.only(left: 1.h),
                                        child: _buildFreeship(context,
                                            freeShippingText: "lbl_freeship".tr,
                                            discountText: "lbl_30k".tr)),
                                    SizedBox(height: 9.v),
                                    SizedBox(
                                        height: 47.v,
                                        width: 204.h,
                                        child: Stack(
                                            alignment: Alignment.topRight,
                                            children: [
                                              Align(
                                                  alignment:
                                                      Alignment.bottomCenter,
                                                  child: SizedBox(
                                                      width: 199.h,
                                                      child: Text(
                                                          "msg_n_h_ng_0_m_c".tr,
                                                          maxLines: 2,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          style: CustomTextStyles
                                                              .bodyMediumWhiteA700Regular
                                                              .copyWith(
                                                                  height:
                                                                      1.69)))),
                                              Align(
                                                  alignment: Alignment.topRight,
                                                  child: Container(
                                                      width: 65.h,
                                                      padding:
                                                          EdgeInsets.symmetric(
                                                              horizontal: 10.h,
                                                              vertical: 1.v),
                                                      decoration: AppDecoration
                                                          .gradientBlueToBlue
                                                          .copyWith(
                                                              borderRadius:
                                                                  BorderRadiusStyle
                                                                      .roundedBorder12),
                                                      child: Text(
                                                          "lbl_l_u_m".tr,
                                                          style: CustomTextStyles
                                                              .bodyMediumWhiteA700Regular)))
                                            ])),
                                    SizedBox(height: 11.v)
                                  ])),
                          Padding(
                              padding: EdgeInsets.only(
                                  left: 24.h, top: 4.v, bottom: 16.v),
                              child: _buildHiULCN(context,
                                  dynamicText1: "msg_hi_u_l_c_n_23_59".tr,
                                  dynamicText2: "lbl_s_l_ng_c_h_n".tr))
                        ])),
                    Expanded(
                        child: Padding(
                            padding: EdgeInsets.only(left: 24.h),
                            child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 16.h, vertical: 7.v),
                                      decoration: BoxDecoration(
                                          image: DecorationImage(
                                              image: AssetImage(
                                                  ImageConstant.imgGroup2878),
                                              fit: BoxFit.cover)),
                                      child: Column(children: [
                                        _buildFreeship(context,
                                            freeShippingText: "lbl_freeship".tr,
                                            discountText: "lbl_30k".tr),
                                        SizedBox(height: 10.v),
                                        Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Container(
                                                  width: 12.h,
                                                  margin:
                                                      EdgeInsets.only(top: 6.v),
                                                  child: Text(
                                                      "msg_n_h_ng_0_m_c".tr,
                                                      maxLines: 2,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      style: CustomTextStyles
                                                          .bodyMediumCyan900
                                                          .copyWith(
                                                              height: 1.69))),
                                              Container(
                                                  width: 65.h,
                                                  margin: EdgeInsets.only(
                                                      left: 142.h,
                                                      bottom: 29.v),
                                                  padding: EdgeInsets.symmetric(
                                                      horizontal: 10.h),
                                                  decoration: AppDecoration
                                                      .gradientGreenToTeal
                                                      .copyWith(
                                                          borderRadius:
                                                              BorderRadiusStyle
                                                                  .roundedBorder12),
                                                  child: Text("lbl_l_u_m".tr,
                                                      style: CustomTextStyles
                                                          .bodyMediumWhiteA700_1))
                                            ])
                                      ])),
                                  Padding(
                                      padding: EdgeInsets.only(
                                          left: 24.h, top: 5.v, bottom: 5.v),
                                      child: _buildHiULCN(context,
                                          dynamicText1:
                                              "msg_hi_u_l_c_n_23_59".tr,
                                          dynamicText2: "lbl_s_l_ng_c_h_n".tr))
                                ])))
                  ]))),
          SizedBox(height: 5.v)
        ]));
  }

  /// Section Widget
  Widget _buildShipping(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(vertical: 21.v),
        decoration: AppDecoration.fillWhiteA700,
        child: Column(children: [
          Padding(
              padding: EdgeInsets.symmetric(horizontal: 14.h),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("msg_h_nh_th_c_giao_h_ng".tr,
                        style: CustomTextStyles.titleMediumBlack900_1),
                    Spacer(),
                    CustomImageView(
                        imagePath: ImageConstant.imgLayer1,
                        height: 16.adaptSize,
                        width: 16.adaptSize,
                        margin: EdgeInsets.only(bottom: 4.v)),
                    Padding(
                        padding: EdgeInsets.only(left: 5.h, bottom: 3.v),
                        child: Text("msg_16_phan_nh_gi_t".tr,
                            style: CustomTextStyles.bodyMediumRegular14)),
                    CustomImageView(
                        imagePath: ImageConstant.imgVectorGray700,
                        height: 10.v,
                        width: 5.h,
                        margin:
                            EdgeInsets.only(left: 5.h, top: 3.v, bottom: 7.v))
                  ])),
          SizedBox(height: 10.v),
          Padding(
              padding: EdgeInsets.symmetric(horizontal: 14.h),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("lbl_gh_nhanh".tr,
                        style: CustomTextStyles.bodyMediumRegular14),
                    Text("lbl_c".tr,
                        style: CustomTextStyles.bodyMediumRegular14)
                  ])),
          SizedBox(height: 10.v),
          Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                  padding: EdgeInsets.only(left: 14.h),
                  child: Text("msg_nh_n_h_ng_trong".tr,
                      style: CustomTextStyles.bodyMediumGray700))),
          SizedBox(height: 8.v),
          Divider(indent: 14.h)
        ]));
  }

  /// Common widget
  Widget _buildFreeship(
    BuildContext context, {
    required String freeShippingText,
    required String discountText,
  }) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 15.h, vertical: 2.v),
        decoration: AppDecoration.fillWhiteA700
            .copyWith(borderRadius: BorderRadiusStyle.circleBorder19),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Padding(
                  padding: EdgeInsets.only(left: 10.h, top: 8.v, bottom: 7.v),
                  child: Text(freeShippingText,
                      style: CustomTextStyles.titleLargeGreen400
                          .copyWith(color: appTheme.green400))),
              Padding(
                  padding: EdgeInsets.only(left: 2.h, bottom: 5.v),
                  child: Text(discountText,
                      style: CustomTextStyles.headlineMediumGreen400
                          .copyWith(color: appTheme.green400)))
            ]));
  }

  /// Common widget
  Widget _buildHiULCN(
    BuildContext context, {
    required String dynamicText1,
    required String dynamicText2,
  }) {
    return Column(children: [
      SizedBox(
          width: 71.h,
          child: RichText(
              text: TextSpan(children: [
                TextSpan(
                    text: "lbl_hi_u_l_c_n".tr,
                    style: theme.textTheme.bodyMedium),
                TextSpan(
                    text: "lbl_23_59".tr, style: theme.textTheme.labelLarge),
                TextSpan(text: " "),
                TextSpan(
                    text: "lbl_ng_y".tr, style: theme.textTheme.bodyMedium),
                TextSpan(
                    text: "lbl_23_10".tr, style: theme.textTheme.labelLarge)
              ]),
              textAlign: TextAlign.center)),
      SizedBox(height: 8.v),
      SizedBox(
          width: 68.h,
          child: RichText(
              text: TextSpan(children: [
                TextSpan(
                    text: "lbl_s_l_ng_c".tr, style: theme.textTheme.bodyMedium),
                TextSpan(
                    text: "lbl_h_n".tr, style: CustomTextStyles.bodyMedium14)
              ]),
              textAlign: TextAlign.center))
    ]);
  }

  onTapFrame(BuildContext context) {
    // TODO: implement Actions
  }
}
