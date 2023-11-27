// ignore_for_file: must_be_immutable

part of 'silder_image_product_detai_bloc.dart';

/// Represents the state of SilderImageProductDetai in the application.
class SilderImageProductDetaiState extends Equatable {
  SilderImageProductDetaiState({this.silderImageProductDetaiModelObj});

  SilderImageProductDetaiModel? silderImageProductDetaiModelObj;

  @override
  List<Object?> get props => [
        silderImageProductDetaiModelObj,
      ];
  SilderImageProductDetaiState copyWith(
      {SilderImageProductDetaiModel? silderImageProductDetaiModelObj}) {
    return SilderImageProductDetaiState(
      silderImageProductDetaiModelObj: silderImageProductDetaiModelObj ??
          this.silderImageProductDetaiModelObj,
    );
  }
}
