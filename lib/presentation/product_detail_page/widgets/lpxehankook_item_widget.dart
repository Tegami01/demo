import '../models/lpxehankook_item_model.dart';
import 'package:demo/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class LpxehankookItemWidget extends StatelessWidget {
  LpxehankookItemWidget(
    this.lpxehankookItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  LpxehankookItemModel lpxehankookItemModelObj;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 128.h,
      child: Align(
        alignment: Alignment.centerLeft,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomImageView(
              imagePath: lpxehankookItemModelObj?.image,
              height: 128.adaptSize,
              width: 128.adaptSize,
            ),
            SizedBox(height: 2.v),
            Align(
              alignment: Alignment.centerRight,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    width: 123.h,
                    margin: EdgeInsets.only(top: 1.v),
                    child: Text(
                      lpxehankookItemModelObj.lPXeHankook!,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: CustomTextStyles.bodyMediumLight13,
                    ),
                  ),
                  Container(
                    width: 129.h,
                    margin: EdgeInsets.only(
                      left: 288.h,
                      bottom: 3.v,
                    ),
                    child: Text(
                      lpxehankookItemModelObj.lprcontinentalccSix!,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: CustomTextStyles.bodyMediumLight13,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 3.v),
            RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: "lbl_1_650_0004".tr,
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
    );
  }
}
