import '../../../core/app_export.dart';

/// This class is used in the [servicecard_item_widget] screen.
class ServicecardItemModel {
  ServicecardItemModel({
    this.serviceImage,
    this.serviceName,
    this.id,
  }) {
    serviceImage = serviceImage ?? ImageConstant.imgFrame1000003516;
    serviceName = serviceName ?? "Dịch vụ thay lốp tại nhà";
    id = id ?? "";
  }

  String? serviceImage;

  String? serviceName;

  String? id;
}
