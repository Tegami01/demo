import '../../../core/app_export.dart';

/// This class is used in the [frame_item_widget] screen.
class FrameItemModel {
  FrameItemModel({
    this.frame,
    this.id,
  }) {
    frame = frame ?? ImageConstant.imgFrame100000351690x90;
    id = id ?? "";
  }

  String? frame;

  String? id;
}
