import '../../../core/app_export.dart';

/// This class is used in the [lpxehankook_item_widget] screen.
class LpxehankookItemModel {
  LpxehankookItemModel({
    this.image,
    this.lPXeHankook,
    this.lprcontinentalccSix,
    this.id,
  }) {
    image = image ?? ImageConstant.imgFrame1000003515;
    lPXeHankook = lPXeHankook ?? "Lốp xe Hankook 185/65 R15 Indo H308";
    lprcontinentalccSix =
        lprcontinentalccSix ?? "Lốp 185/65r14 continental cc6\r";
    id = id ?? "";
  }

  String? image;

  String? lPXeHankook;

  String? lprcontinentalccSix;

  String? id;
}
