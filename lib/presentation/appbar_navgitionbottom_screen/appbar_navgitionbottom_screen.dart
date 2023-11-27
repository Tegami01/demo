import 'bloc/appbar_navgitionbottom_bloc.dart';
import 'models/appbar_navgitionbottom_model.dart';
import 'package:demo/core/app_export.dart';
import 'package:demo/widgets/app_bar/appbar_leading_image.dart';
import 'package:demo/widgets/app_bar/appbar_title_searchview.dart';
import 'package:demo/widgets/app_bar/appbar_trailing_image.dart';
import 'package:demo/widgets/app_bar/custom_app_bar.dart';
import 'package:demo/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

class AppbarNavgitionbottomScreen extends StatelessWidget {
  const AppbarNavgitionbottomScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<AppbarNavgitionbottomBloc>(
        create: (context) => AppbarNavgitionbottomBloc(
            AppbarNavgitionbottomState(
                appbarNavgitionbottomModelObj: AppbarNavgitionbottomModel()))
          ..add(AppbarNavgitionbottomInitialEvent()),
        child: AppbarNavgitionbottomScreen());
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            backgroundColor: appTheme.whiteA700,
            appBar: _buildAppBar(context),
            body: SizedBox(
                width: mediaQueryData.size.width,
                child: SingleChildScrollView(
                    child: Container(
                        height: 80.v,
                        width: double.maxFinite,
                        margin: EdgeInsets.only(bottom: 5.v)))),
            bottomNavigationBar: _buildNavationBottom(context)));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        height: 80.v,
        leadingWidth: 34.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowLeft,
            margin: EdgeInsets.only(left: 10.h, top: 38.v, bottom: 18.v),
            onTap: () {
              onTapArrowLeft(context);
            }),
        title: BlocSelector<AppbarNavgitionbottomBloc,
                AppbarNavgitionbottomState, TextEditingController?>(
            selector: (state) => state.searchController,
            builder: (context, searchController) {
              return AppbarTitleSearchview(
                  margin: EdgeInsets.only(left: 10.h, top: 30.v, bottom: 10.v),
                  hintText: "lbl_l_p_michelin3".tr,
                  controller: searchController);
            }),
        actions: [
          AppbarTrailingImage(
              imagePath: ImageConstant.imgShareAndroid,
              margin: EdgeInsets.only(left: 10.h, top: 38.v, right: 18.h)),
          AppbarTrailingImage(
              imagePath: ImageConstant.imgCartGray600,
              margin: EdgeInsets.only(left: 10.h, top: 38.v, right: 18.h)),
          AppbarTrailingImage(
              imagePath: ImageConstant.imgFrame,
              margin: EdgeInsets.only(left: 10.h, top: 38.v, right: 28.h))
        ]);
  }

  /// Section Widget
  Widget _buildNavationBottom(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(left: 20.h, right: 20.h, bottom: 14.v),
        decoration: AppDecoration.outlineBlack,
        child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Column(mainAxisSize: MainAxisSize.min, children: [
                CustomImageView(
                    imagePath: ImageConstant.imgFrameGray70031x31,
                    height: 31.adaptSize,
                    width: 31.adaptSize),
                Text("lbl_gian_h_ng".tr,
                    style: CustomTextStyles.bodyMediumGray700)
              ]),
              Spacer(),
              CustomElevatedButton(
                  height: 41.v,
                  width: 133.h,
                  text: "lbl_th_m_v_o_gi".tr,
                  margin: EdgeInsets.only(top: 3.v, bottom: 4.v),
                  buttonStyle: CustomButtonStyles.fillCyan,
                  buttonTextStyle: CustomTextStyles.titleMediumCyan400),
              CustomElevatedButton(
                  height: 41.v,
                  width: 105.h,
                  text: "lbl_mua_ngay".tr,
                  margin: EdgeInsets.only(top: 3.v, bottom: 4.v),
                  buttonStyle: CustomButtonStyles.fillCyanLR25,
                  buttonTextStyle: CustomTextStyles.titleMediumWhiteA700)
            ]));
  }

  /// Navigates to the previous screen.
  onTapArrowLeft(BuildContext context) {
    NavigatorService.goBack();
  }
}
