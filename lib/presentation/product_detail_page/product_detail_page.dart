import '../product_detail_page/widgets/frame_item_widget.dart';
import '../product_detail_page/widgets/lpxehankook_item_widget.dart';
import 'bloc/product_detail_bloc.dart';
import 'models/frame_item_model.dart';
import 'models/lpxehankook_item_model.dart';
import 'models/product_detail_model.dart';
import 'package:demo/core/app_export.dart';
import 'package:demo/widgets/custom_elevated_button.dart';
import 'package:demo/widgets/custom_rating_bar.dart';
import 'package:demo/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class ProductDetailPage extends StatefulWidget {
  const ProductDetailPage({Key? key}) : super(key: key);

  @override
  ProductDetailPageState createState() => ProductDetailPageState();

  static Widget builder(BuildContext context) {
    return BlocProvider<ProductDetailBloc>(
        create: (context) => ProductDetailBloc(
            ProductDetailState(productDetailModelObj: ProductDetailModel()))
          ..add(ProductDetailInitialEvent()),
        child: ProductDetailPage());
  }
}

class ProductDetailPageState extends State<ProductDetailPage>
    with AutomaticKeepAliveClientMixin<ProductDetailPage> {
  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: SizedBox(
                width: mediaQueryData.size.width,
                child: SingleChildScrollView(
                    child: Column(children: [
                  SizedBox(height: 20.v),
                  Column(children: [
                    _buildServicesOptions(context),
                    SizedBox(height: 5.v),
                    _buildCouponList(context),
                    SizedBox(height: 5.v),
                    _buildShipping(context),
                    SizedBox(height: 5.v),
                    _buildShopinfo(context),
                    SizedBox(height: 5.v),
                    _buildProductDescComponent(context),
                    SizedBox(height: 5.v),
                    _buildCustomerReview(context),
                    SizedBox(height: 5.v),
                    _buildSystemStatus(context),
                    _buildBottomMenu(context)
                  ])
                ])))));
  }

  /// Section Widget
  Widget _buildServicesOptions(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(14.h),
        decoration: AppDecoration.fillWhiteA,
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Padding(
              padding: EdgeInsets.only(left: 1.h),
              child: _buildMTSNPhM(context,
                  mTSNPhM: "msg_l_a_ch_n_d_ch_v".tr,
                  thNgHiUXuT: "lbl_3_d_ch_v".tr, onTapMTSNPhM: () {
                onTapLAChNDChV(context);
              })),
          SizedBox(height: 12.v),
          Padding(
              padding: EdgeInsets.only(left: 2.h, right: 4.h),
              child:
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                CustomImageView(
                    imagePath: ImageConstant.imgFrame1000003516,
                    height: 50.adaptSize,
                    width: 50.adaptSize),
                Padding(
                    padding: EdgeInsets.only(left: 9.h, top: 4.v, bottom: 2.v),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("msg_d_ch_v_thay_l_p".tr,
                              style: CustomTextStyles.bodyLargeBlack900_1),
                          SizedBox(height: 5.v),
                          RichText(
                              text: TextSpan(children: [
                                TextSpan(
                                    text: "lbl_100_0004".tr,
                                    style: theme.textTheme.titleMedium),
                                TextSpan(
                                    text: "lbl".tr,
                                    style: theme.textTheme.titleMedium)
                              ]),
                              textAlign: TextAlign.left)
                        ])),
                Spacer(),
                CustomImageView(
                    imagePath: ImageConstant.imgFrameBlueGray400,
                    height: 35.adaptSize,
                    width: 35.adaptSize,
                    margin: EdgeInsets.only(top: 8.v, bottom: 7.v))
              ])),
          SizedBox(height: 10.v),
          Padding(
              padding: EdgeInsets.only(left: 2.h, right: 4.h),
              child:
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                CustomImageView(
                    imagePath: ImageConstant.imgFrame100000351650x50,
                    height: 50.adaptSize,
                    width: 50.adaptSize),
                Padding(
                    padding: EdgeInsets.only(left: 9.h, top: 4.v),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("msg_d_ch_v_r_a_xe_t_i".tr,
                              style: CustomTextStyles.bodyLargeBlack900_1),
                          SizedBox(height: 6.v),
                          RichText(
                              text: TextSpan(children: [
                                TextSpan(
                                    text: "lbl_80_0002".tr,
                                    style: theme.textTheme.titleMedium),
                                TextSpan(
                                    text: "lbl".tr,
                                    style: theme.textTheme.titleMedium)
                              ]),
                              textAlign: TextAlign.left)
                        ])),
                Spacer(),
                CustomImageView(
                    imagePath: ImageConstant.imgFrameBlueGray400,
                    height: 35.adaptSize,
                    width: 35.adaptSize,
                    margin: EdgeInsets.only(top: 8.v, bottom: 7.v))
              ])),
          SizedBox(height: 10.v),
          Padding(
              padding: EdgeInsets.only(left: 2.h, right: 4.h),
              child:
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                CustomImageView(
                    imagePath: ImageConstant.imgFrame10000035161,
                    height: 50.adaptSize,
                    width: 50.adaptSize),
                Padding(
                    padding: EdgeInsets.only(left: 9.h, top: 4.v),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("msg_d_ch_v_v_sinh".tr,
                              style: CustomTextStyles.bodyLargeBlack900_1),
                          SizedBox(height: 6.v),
                          RichText(
                              text: TextSpan(children: [
                                TextSpan(
                                    text: "lbl_100_0004".tr,
                                    style: theme.textTheme.titleMedium),
                                TextSpan(
                                    text: "lbl".tr,
                                    style: theme.textTheme.titleMedium)
                              ]),
                              textAlign: TextAlign.left)
                        ])),
                Spacer(),
                CustomImageView(
                    imagePath: ImageConstant.imgFrameBlueGray400,
                    height: 35.adaptSize,
                    width: 35.adaptSize,
                    margin: EdgeInsets.only(top: 8.v, bottom: 7.v))
              ])),
          SizedBox(height: 3.v)
        ]));
  }

  /// Section Widget
  Widget _buildCouponList(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(vertical: 10.v),
        decoration: AppDecoration.fillWhiteA,
        child: Column(children: [
          Padding(
              padding: EdgeInsets.symmetric(horizontal: 14.h),
              child: _buildXemThMDChVSN(context,
                  xemThMDChVSN: "lbl_m_gi_m_gi".tr)),
          SizedBox(height: 12.v),
          SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              padding: EdgeInsets.only(left: 14.h),
              child: IntrinsicWidth(
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                    Expanded(
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                          Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 16.h, vertical: 7.v),
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image:
                                          AssetImage(ImageConstant.imgGroup298),
                                      fit: BoxFit.cover)),
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 1.h),
                                        child: _buildFreeship(context,
                                            fREESHIP: "lbl_freeship".tr,
                                            k: "lbl_30k".tr)),
                                    SizedBox(height: 9.v),
                                    SizedBox(
                                        height: 47.v,
                                        width: 203.h,
                                        child: Stack(
                                            alignment: Alignment.topRight,
                                            children: [
                                              Align(
                                                  alignment:
                                                      Alignment.bottomCenter,
                                                  child: SizedBox(
                                                      width: 200.h,
                                                      child: Text(
                                                          "msg_n_h_ng_0_m_c".tr,
                                                          maxLines: 2,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          style: CustomTextStyles
                                                              .bodyMediumWhiteA70013
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
                                                                      .circleBorder10),
                                                      child: Text(
                                                          "lbl_l_u_m".tr,
                                                          style: CustomTextStyles
                                                              .bodyMediumWhiteA70013)))
                                            ]))
                                  ])),
                          Padding(
                              padding: EdgeInsets.only(
                                  left: 24.h, top: 4.v, bottom: 4.v),
                              child: _buildHiULCN(context,
                                  hiULCN: "msg_hi_u_l_c_n_23_59".tr,
                                  sLNgCHN: "lbl_s_l_ng_c_h_n".tr))
                        ])),
                    Container(
                        height: 108.v,
                        width: 348.h,
                        margin: EdgeInsets.only(left: 24.h),
                        child: Stack(alignment: Alignment.center, children: [
                          Align(
                              alignment: Alignment.centerLeft,
                              child: SizedBox(height: 108.v, width: 80.h)),
                          Align(
                              alignment: Alignment.center,
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 9.h, vertical: 7.v),
                                        decoration: BoxDecoration(
                                            image: DecorationImage(
                                                image: AssetImage(
                                                    ImageConstant.imgGroup298),
                                                fit: BoxFit.cover)),
                                        child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Padding(
                                                  padding: EdgeInsets.symmetric(
                                                      horizontal: 9.h),
                                                  child: _buildFreeship(context,
                                                      fREESHIP:
                                                          "lbl_freeship".tr,
                                                      k: "lbl_30k".tr)),
                                              SizedBox(height: 9.v),
                                              SizedBox(
                                                  height: 47.v,
                                                  width: 226.h,
                                                  child: Stack(
                                                      alignment:
                                                          Alignment.topRight,
                                                      children: [
                                                        Align(
                                                            alignment: Alignment
                                                                .bottomLeft,
                                                            child: SizedBox(
                                                                width: 208.h,
                                                                child: Text(
                                                                    "msg_n_h_ng_0_m_c"
                                                                        .tr,
                                                                    maxLines: 2,
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                    style: CustomTextStyles
                                                                        .bodyMediumCyan900
                                                                        .copyWith(
                                                                            height:
                                                                                1.69)))),
                                                        Align(
                                                            alignment: Alignment
                                                                .topRight,
                                                            child: Container(
                                                                width: 65.h,
                                                                padding: EdgeInsets
                                                                    .symmetric(
                                                                        horizontal: 10
                                                                            .h),
                                                                decoration: AppDecoration
                                                                    .gradientGreenToTeal
                                                                    .copyWith(
                                                                        borderRadius:
                                                                            BorderRadiusStyle
                                                                                .circleBorder10),
                                                                child: Text(
                                                                    "lbl_l_u_m"
                                                                        .tr,
                                                                    style: CustomTextStyles
                                                                        .bodyMediumWhiteA700Light)))
                                                      ]))
                                            ])),
                                    Padding(
                                        padding: EdgeInsets.only(
                                            left: 24.h, top: 5.v, bottom: 5.v),
                                        child: _buildHiULCN(context,
                                            hiULCN: "msg_hi_u_l_c_n_23_59".tr,
                                            sLNgCHN: "lbl_s_l_ng_c_h_n".tr))
                                  ]))
                        ]))
                  ])))
        ]));
  }

  /// Section Widget
  Widget _buildGroup334(BuildContext context) {
    return BlocSelector<ProductDetailBloc, ProductDetailState,
            TextEditingController?>(
        selector: (state) => state.group334Controller,
        builder: (context, group334Controller) {
          return CustomTextFormField(
              controller: group334Controller,
              hintText: "msg_nh_n_h_ng_trong".tr,
              textInputAction: TextInputAction.done);
        });
  }

  /// Section Widget
  Widget _buildShipping(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(14.h),
        decoration: AppDecoration.fillWhiteA,
        child: Column(children: [
          Padding(
              padding: EdgeInsets.only(left: 1.h),
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
                        margin: EdgeInsets.only(bottom: 2.v)),
                    Text("msg_16_phan_nh_gi_t".tr,
                        style: theme.textTheme.bodyMedium),
                    CustomImageView(
                        imagePath: ImageConstant.imgVectorGray700,
                        height: 10.v,
                        width: 5.h,
                        margin:
                            EdgeInsets.only(left: 6.h, top: 3.v, bottom: 5.v))
                  ])),
          SizedBox(height: 8.v),
          Padding(
              padding: EdgeInsets.only(left: 1.h),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("lbl_gh_nhanh".tr, style: theme.textTheme.bodyMedium),
                    Text("lbl_c".tr, style: theme.textTheme.bodyMedium)
                  ])),
          SizedBox(height: 10.v),
          _buildGroup334(context),
          SizedBox(height: 21.v)
        ]));
  }

  /// Section Widget
  Widget _buildFortySix(BuildContext context) {
    return CustomElevatedButton(
        height: 21.v,
        width: 56.h,
        text: "lbl_4_6".tr,
        leftIcon: Container(
            margin: EdgeInsets.only(right: 6.h),
            child: CustomImageView(
                imagePath: ImageConstant.imgFrameAmberA400,
                height: 16.adaptSize,
                width: 16.adaptSize)),
        buttonStyle: CustomButtonStyles.fillGray,
        buttonTextStyle: CustomTextStyles.titleSmallBlack900);
  }

  /// Section Widget
  Widget _buildTheoDi(BuildContext context) {
    return CustomElevatedButton(
        height: 26.v,
        width: 76.h,
        text: "lbl_theo_d_i".tr,
        margin: EdgeInsets.symmetric(vertical: 22.v),
        buttonStyle: CustomButtonStyles.fillRedA,
        buttonTextStyle: CustomTextStyles.bodyMediumWhiteA700);
  }

  /// Section Widget
  Widget _buildShopinfo(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 13.h, vertical: 12.v),
        decoration: AppDecoration.fillWhiteA,
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          SizedBox(height: 4.v),
          Padding(
              padding: EdgeInsets.only(left: 2.h),
              child:
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                CustomImageView(
                    imagePath: ImageConstant.imgFrame1000003547,
                    height: 70.adaptSize,
                    width: 70.adaptSize,
                    radius: BorderRadius.circular(25.h)),
                Padding(
                    padding:
                        EdgeInsets.only(left: 15.h, top: 13.v, bottom: 13.v),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("lbl_vua_l_p_sg".tr,
                                    style: CustomTextStyles
                                        .titleMediumBlack900SemiBold),
                                CustomImageView(
                                    imagePath: ImageConstant
                                        .imgGroup1000003213Black900,
                                    height: 10.v,
                                    width: 5.h,
                                    margin: EdgeInsets.only(
                                        left: 13.h, top: 5.v, bottom: 6.v))
                              ]),
                          SizedBox(height: 1.v),
                          _buildFortySix(context)
                        ])),
                Spacer(),
                _buildTheoDi(context)
              ])),
          SizedBox(height: 19.v),
          Padding(
              padding: EdgeInsets.only(left: 2.h),
              child:
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                SizedBox(
                    width: 62.h,
                    child: RichText(
                        text: TextSpan(children: [
                          TextSpan(
                              text: "lbl_123".tr,
                              style: CustomTextStyles.bodyLargeBlack900),
                          TextSpan(
                              text: "lbl_s_n_ph_m".tr,
                              style: CustomTextStyles.bodyMediumLight_1)
                        ]),
                        textAlign: TextAlign.left)),
                Spacer(flex: 57),
                SizedBox(
                    height: 41.v,
                    child: VerticalDivider(width: 1.h, thickness: 1.v)),
                Container(
                    width: 45.h,
                    margin: EdgeInsets.only(left: 5.h),
                    child: RichText(
                        text: TextSpan(children: [
                          TextSpan(
                              text: "lbl_8".tr,
                              style: CustomTextStyles.bodyLargeBlack900),
                          TextSpan(
                              text: "lbl_d_ch_v".tr,
                              style: CustomTextStyles.bodyMediumLight_1)
                        ]),
                        textAlign: TextAlign.left)),
                Spacer(flex: 42),
                SizedBox(
                    height: 41.v,
                    child: VerticalDivider(width: 1.h, thickness: 1.v)),
                Container(
                    width: 166.h,
                    margin: EdgeInsets.only(left: 5.h),
                    child: RichText(
                        text: TextSpan(children: [
                          TextSpan(
                              text: "lbl_92".tr,
                              style: CustomTextStyles.bodyLargeBlack900),
                          TextSpan(
                              text: "msg_t_l_mua_h_ng_th_nh".tr,
                              style: CustomTextStyles.bodyMediumLight_1)
                        ]),
                        textAlign: TextAlign.left))
              ])),
          SizedBox(height: 15.v),
          Divider(color: appTheme.gray300),
          SizedBox(height: 12.v),
          Padding(
              padding: EdgeInsets.only(left: 2.h),
              child: _buildXemThMDChVSN(context,
                  xemThMDChVSN: "msg_xem_th_m_d_ch_v_s_n".tr)),
          SizedBox(height: 9.v),
          Align(
              alignment: Alignment.centerLeft,
              child: SizedBox(
                  height: 185.v,
                  child: BlocSelector<ProductDetailBloc, ProductDetailState,
                          ProductDetailModel?>(
                      selector: (state) => state.productDetailModelObj,
                      builder: (context, productDetailModelObj) {
                        return ListView.separated(
                            padding: EdgeInsets.only(left: 2.h, right: 37.h),
                            scrollDirection: Axis.horizontal,
                            separatorBuilder: (context, index) {
                              return SizedBox(width: 8.h);
                            },
                            itemCount: productDetailModelObj
                                    ?.lpxehankookItemList.length ??
                                0,
                            itemBuilder: (context, index) {
                              LpxehankookItemModel model = productDetailModelObj
                                      ?.lpxehankookItemList[index] ??
                                  LpxehankookItemModel();
                              return LpxehankookItemWidget(model);
                            });
                      })))
        ]));
  }

  /// Section Widget
  Widget _buildProductDescComponent(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(14.h),
        decoration: AppDecoration.fillWhiteA,
        child: Column(children: [
          _buildMTSNPhM(context,
              mTSNPhM: "lbl_m_t_s_n_ph_m".tr,
              thNgHiUXuT: "msg_th_ng_hi_u_xu_t".tr),
          SizedBox(height: 9.v),
          SizedBox(
              width: 435.h,
              child: Text("msg_b_m_ng_b_n_b_l_i".tr,
                  maxLines: 10,
                  overflow: TextOverflow.ellipsis,
                  style:
                      CustomTextStyles.bodyMediumLight.copyWith(height: 1.43))),
          SizedBox(height: 19.v),
          Divider(color: appTheme.gray300),
          SizedBox(height: 16.v),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            Text("lbl_xem_th_m".tr,
                style: CustomTextStyles.bodyMediumBlue60001),
            CustomImageView(
                imagePath: ImageConstant.imgVectorBlue60001,
                height: 5.v,
                width: 10.h,
                margin: EdgeInsets.only(left: 9.h, top: 6.v, bottom: 5.v))
          ]),
          SizedBox(height: 6.v)
        ]));
  }

  /// Section Widget
  Widget _buildChtLngTt12(BuildContext context) {
    return CustomElevatedButton(width: 138.h, text: "msg_ch_t_l_ng_t_t_12".tr);
  }

  /// Section Widget
  Widget _buildGiaoHngNhanh24(BuildContext context) {
    return CustomElevatedButton(
        width: 154.h,
        text: "msg_giao_h_ng_nhanh".tr,
        margin: EdgeInsets.only(left: 8.h));
  }

  /// Section Widget
  Widget _buildCustomerReview(BuildContext context) {
    return GestureDetector(
        onTap: () {
          onTapCustomerReview(context);
        },
        child: Container(
            padding: EdgeInsets.symmetric(vertical: 11.v),
            decoration: AppDecoration.fillWhiteA,
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              SizedBox(height: 3.v),
              Padding(
                  padding: EdgeInsets.symmetric(horizontal: 14.h),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("lbl_nh_gi_108".tr,
                            style: CustomTextStyles.titleMediumBlack900_1),
                        Spacer(),
                        Padding(
                            padding: EdgeInsets.only(bottom: 4.v),
                            child: CustomRatingBar(initialRating: 0)),
                        Padding(
                            padding: EdgeInsets.only(left: 4.h),
                            child: Text("lbl_4_6".tr,
                                style: theme.textTheme.titleSmall)),
                        CustomImageView(
                            imagePath: ImageConstant.imgVectorGray700,
                            height: 10.v,
                            width: 5.h,
                            margin: EdgeInsets.only(
                                left: 10.h, top: 3.v, bottom: 5.v))
                      ])),
              SizedBox(height: 13.v),
              Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                      padding: EdgeInsets.only(left: 15.h),
                      child: Row(children: [
                        _buildChtLngTt12(context),
                        _buildGiaoHngNhanh24(context)
                      ]))),
              SizedBox(height: 10.v),
              Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Expanded(
                        child: SizedBox(
                            height: 90.v,
                            child: BlocSelector<ProductDetailBloc,
                                    ProductDetailState, ProductDetailModel?>(
                                selector: (state) =>
                                    state.productDetailModelObj,
                                builder: (context, productDetailModelObj) {
                                  return ListView.separated(
                                      padding: EdgeInsets.only(left: 113.h),
                                      scrollDirection: Axis.horizontal,
                                      separatorBuilder: (context, index) {
                                        return SizedBox(width: 8.h);
                                      },
                                      itemCount: productDetailModelObj
                                              ?.frameItemList.length ??
                                          0,
                                      itemBuilder: (context, index) {
                                        FrameItemModel model =
                                            productDetailModelObj
                                                    ?.frameItemList[index] ??
                                                FrameItemModel();
                                        return FrameItemWidget(model);
                                      });
                                }))),
                    CustomImageView(
                        imagePath: ImageConstant.imgFrame1000003520,
                        height: 90.v,
                        width: 60.h,
                        radius: BorderRadius.circular(6.h),
                        margin: EdgeInsets.only(left: 8.h))
                  ]),
              SizedBox(height: 11.v),
              Padding(
                  padding: EdgeInsets.only(left: 15.h),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                            padding: EdgeInsets.all(15.h),
                            decoration: AppDecoration.fillGray.copyWith(
                                borderRadius: BorderRadiusStyle.roundedBorder6),
                            child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  CustomRatingBar(initialRating: 0),
                                  SizedBox(height: 6.v),
                                  Text("msg_a_v_23_thg_10".tr,
                                      style:
                                          CustomTextStyles.bodyMediumGray700),
                                  SizedBox(height: 8.v),
                                  SizedBox(
                                      width: 265.h,
                                      child: Text("msg_s_n_ph_m_ch_t_l_ng2".tr,
                                          maxLines: 5,
                                          overflow: TextOverflow.ellipsis,
                                          style: CustomTextStyles
                                              .bodyMediumGray900
                                              .copyWith(height: 1.29))),
                                  SizedBox(height: 8.v)
                                ])),
                        Container(
                            margin: EdgeInsets.only(left: 8.h),
                            padding: EdgeInsets.symmetric(vertical: 15.v),
                            decoration: AppDecoration.fillGray.copyWith(
                                borderRadius: BorderRadiusStyle.roundedBorder6),
                            child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Padding(
                                      padding: EdgeInsets.only(left: 15.h),
                                      child: CustomRatingBar(
                                          alignment: Alignment.centerLeft,
                                          initialRating: 0)),
                                  SizedBox(height: 6.v),
                                  Text("msg_v_t_23_thg_10".tr,
                                      style:
                                          CustomTextStyles.bodyMediumGray700),
                                  SizedBox(height: 9.v),
                                  SizedBox(
                                      width: 123.h,
                                      child: Text("msg_s_n_ph_m_ch_t_l_ng".tr,
                                          maxLines: 2,
                                          overflow: TextOverflow.ellipsis,
                                          style: CustomTextStyles
                                              .bodyMediumGray900
                                              .copyWith(height: 1.29))),
                                  SizedBox(height: 65.v)
                                ]))
                      ]))
            ])));
  }

  /// Section Widget
  Widget _buildSystemStatus(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 24.h, right: 13.h),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Text("lbl_9_00".tr, style: CustomTextStyles.titleSmallBlack90015),
          CustomImageView(
              imagePath: ImageConstant.imgFrame1000003174,
              height: 11.v,
              width: 86.h,
              margin: EdgeInsets.symmetric(vertical: 3.v))
        ]));
  }

  /// Section Widget
  Widget _buildBottomMenu(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(vertical: 14.v),
        decoration: AppDecoration.outlineBlack,
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                  padding: EdgeInsets.only(bottom: 19.v),
                  child: Column(children: [
                    CustomImageView(
                        imagePath: ImageConstant.imgFrameGray70031x31,
                        height: 31.adaptSize,
                        width: 31.adaptSize),
                    SizedBox(height: 1.v),
                    Text("lbl_gian_h_ng".tr,
                        style: CustomTextStyles.bodyMediumGray700)
                  ])),
              Container(
                  height: 48.v,
                  width: 319.h,
                  margin: EdgeInsets.only(bottom: 19.v),
                  child: Stack(alignment: Alignment.center, children: [
                    Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                            padding: EdgeInsets.only(left: 28.h),
                            child: Text("lbl_th_m_v_o_gi".tr,
                                style: CustomTextStyles.titleMediumCyan400))),
                    Align(
                        alignment: Alignment.center,
                        child: SizedBox(
                            height: 48.v,
                            width: 319.h,
                            child: Stack(
                                alignment: Alignment.bottomRight,
                                children: [
                                  CustomImageView(
                                      imagePath:
                                          ImageConstant.imgGroup1000003207,
                                      height: 48.v,
                                      width: 319.h,
                                      alignment: Alignment.center),
                                  Align(
                                      alignment: Alignment.bottomRight,
                                      child: Padding(
                                          padding: EdgeInsets.only(
                                              right: 41.h, bottom: 11.v),
                                          child: Text("lbl_mua_ngay".tr,
                                              style: CustomTextStyles
                                                  .titleMediumWhiteA700)))
                                ])))
                  ]))
            ]));
  }

  /// Common widget
  Widget _buildFreeship(
    BuildContext context, {
    required String fREESHIP,
    required String k,
  }) {
    return Container(
        width: 217.h,
        padding: EdgeInsets.symmetric(vertical: 2.v),
        decoration:
            BoxDecoration(borderRadius: BorderRadiusStyle.circleBorder19),
        child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
          Padding(
              padding: EdgeInsets.only(top: 4.v, bottom: 5.v),
              child: Text(fREESHIP,
                  style: theme.textTheme.titleLarge!
                      .copyWith(color: appTheme.green400))),
          Padding(
              padding: EdgeInsets.only(bottom: 1.v),
              child: Text(k,
                  style: CustomTextStyles.headlineMediumGreen400
                      .copyWith(color: appTheme.green400)))
        ]));
  }

  /// Common widget
  Widget _buildHiULCN(
    BuildContext context, {
    required String hiULCN,
    required String sLNgCHN,
  }) {
    return Column(children: [
      SizedBox(
          width: 71.h,
          child: RichText(
              text: TextSpan(children: [
                TextSpan(
                    text: "lbl_hi_u_l_c_n".tr,
                    style: CustomTextStyles.bodyMediumLight13_1),
                TextSpan(
                    text: "lbl_23_59".tr, style: theme.textTheme.labelLarge),
                TextSpan(text: " "),
                TextSpan(
                    text: "lbl_ng_y".tr,
                    style: CustomTextStyles.bodyMediumLight13_1),
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
                    text: "lbl_s_l_ng_c".tr,
                    style: CustomTextStyles.bodyMediumLight13_1),
                TextSpan(
                    text: "lbl_h_n".tr,
                    style: CustomTextStyles.bodyMediumLight_1)
              ]),
              textAlign: TextAlign.center))
    ]);
  }

  /// Common widget
  Widget _buildXemThMDChVSN(
    BuildContext context, {
    required String xemThMDChVSN,
  }) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Text(xemThMDChVSN,
          style: CustomTextStyles.bodyMediumGray700
              .copyWith(color: appTheme.gray700)),
      CustomImageView(
          imagePath: ImageConstant.imgGroup1000003213,
          height: 10.v,
          width: 5.h,
          margin: EdgeInsets.symmetric(vertical: 3.v))
    ]);
  }

  /// Common widget
  Widget _buildMTSNPhM(
    BuildContext context, {
    required String mTSNPhM,
    required String thNgHiUXuT,
    Function? onTapMTSNPhM,
  }) {
    return GestureDetector(
        onTap: () {
          onTapMTSNPhM!.call();
        },
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Text(mTSNPhM,
              style: CustomTextStyles.titleMediumBlack900_1
                  .copyWith(color: appTheme.black900)),
          Spacer(),
          Text(thNgHiUXuT,
              style: CustomTextStyles.bodyMediumGray700Light
                  .copyWith(color: appTheme.gray700)),
          CustomImageView(
              imagePath: ImageConstant.imgVectorGray700,
              height: 10.v,
              width: 5.h,
              margin: EdgeInsets.only(left: 11.h, top: 4.v, bottom: 4.v))
        ]));
  }

  onTapLAChNDChV(BuildContext context) {
    // TODO: implement Actions
  }

  onTapMGiMGi(BuildContext context) {
    // TODO: implement Actions
  }

  onTapCustomerReview(BuildContext context) {
    // TODO: implement Actions
  }
}
