// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'lpxehankook_item_model.dart';
import 'frame_item_model.dart';

/// This class defines the variables used in the [product_detail_page],
/// and is typically used to hold data that is passed between different parts of the application.
class ProductDetailModel extends Equatable {
  ProductDetailModel({
    this.lpxehankookItemList = const [],
    this.frameItemList = const [],
  }) {}

  List<LpxehankookItemModel> lpxehankookItemList;

  List<FrameItemModel> frameItemList;

  ProductDetailModel copyWith({
    List<LpxehankookItemModel>? lpxehankookItemList,
    List<FrameItemModel>? frameItemList,
  }) {
    return ProductDetailModel(
      lpxehankookItemList: lpxehankookItemList ?? this.lpxehankookItemList,
      frameItemList: frameItemList ?? this.frameItemList,
    );
  }

  @override
  List<Object?> get props => [lpxehankookItemList, frameItemList];
}
