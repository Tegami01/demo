import '../models/frame_item_model.dart';
import 'package:demo/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class FrameItemWidget extends StatelessWidget {
  FrameItemWidget(
    this.frameItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  FrameItemModel frameItemModelObj;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 90.h,
      child: CustomImageView(
        imagePath: frameItemModelObj?.frame,
        height: 90.adaptSize,
        width: 90.adaptSize,
        radius: BorderRadius.circular(
          6.h,
        ),
      ),
    );
  }
}
