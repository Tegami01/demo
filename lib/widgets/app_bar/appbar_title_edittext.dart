import 'package:demo/core/app_export.dart';
import 'package:demo/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class AppbarTitleEdittext extends StatelessWidget {
  AppbarTitleEdittext({
    Key? key,
    this.hintText,
    this.controller,
    this.margin,
  }) : super(
          key: key,
        );

  String? hintText;

  TextEditingController? controller;

  EdgeInsetsGeometry? margin;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: margin ?? EdgeInsets.zero,
      child: CustomTextFormField(
        width: 241.h,
        controller: controller,
        hintText: "lbl_l_p_michelin".tr,
        prefix: Container(
          margin: EdgeInsets.fromLTRB(17.h, 11.v, 9.h, 11.v),
          child: CustomImageView(
            imagePath: ImageConstant.imgSearch,
            height: 18.adaptSize,
            width: 18.adaptSize,
          ),
        ),
        prefixConstraints: BoxConstraints(
          maxHeight: 44.v,
        ),
        borderDecoration: TextFormFieldStyleHelper.fillGray,
        filled: true,
        fillColor: appTheme.gray10001,
      ),
    );
  }
}
