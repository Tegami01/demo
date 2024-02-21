import '../models/servicecard_item_model.dart';
import 'package:demo/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ServicecardItemWidget extends StatelessWidget {
  ServicecardItemWidget(
    this.servicecardItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  ServicecardItemModel servicecardItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomImageView(
          imagePath: servicecardItemModelObj?.serviceImage,
          height: 50.v,
          width: 46.h,
        ),
        Padding(
          padding: EdgeInsets.only(
            left: 8.h,
            top: 4.v,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                servicecardItemModelObj.serviceName!,
                style: theme.textTheme.bodyLarge,
              ),
              SizedBox(height: 5.v),
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: "lbl_100_0004".tr,
                      style: theme.textTheme.titleMedium,
                    ),
                    TextSpan(
                      text: "lbl".tr,
                      style: theme.textTheme.titleMedium,
                    ),
                  ],
                ),
                textAlign: TextAlign.left,
              ),
            ],
          ),
        ),
        Spacer(),
        CustomImageView(
          imagePath: ImageConstant.imgFrameBlueGray400,
          height: 35.v,
          width: 32.h,
          margin: EdgeInsets.only(
            top: 8.v,
            bottom: 7.v,
          ),
        ),
      ],
    );
  }
}
