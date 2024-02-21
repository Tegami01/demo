// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'servicecard_item_model.dart';

/// This class defines the variables used in the [silder_image_product_detai_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class SilderImageProductDetaiModel extends Equatable {
  SilderImageProductDetaiModel({this.servicecardItemList = const []}) {}

  List<ServicecardItemModel> servicecardItemList;

  SilderImageProductDetaiModel copyWith(
      {List<ServicecardItemModel>? servicecardItemList}) {
    return SilderImageProductDetaiModel(
      servicecardItemList: servicecardItemList ?? this.servicecardItemList,
    );
  }

  @override
  List<Object?> get props => [servicecardItemList];
}
