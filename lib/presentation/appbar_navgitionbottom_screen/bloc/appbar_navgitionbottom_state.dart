// ignore_for_file: must_be_immutable

part of 'appbar_navgitionbottom_bloc.dart';

/// Represents the state of AppbarNavgitionbottom in the application.
class AppbarNavgitionbottomState extends Equatable {
  AppbarNavgitionbottomState({
    this.searchController,
    this.appbarNavgitionbottomModelObj,
  });

  TextEditingController? searchController;

  AppbarNavgitionbottomModel? appbarNavgitionbottomModelObj;

  @override
  List<Object?> get props => [
        searchController,
        appbarNavgitionbottomModelObj,
      ];
  AppbarNavgitionbottomState copyWith({
    TextEditingController? searchController,
    AppbarNavgitionbottomModel? appbarNavgitionbottomModelObj,
  }) {
    return AppbarNavgitionbottomState(
      searchController: searchController ?? this.searchController,
      appbarNavgitionbottomModelObj:
          appbarNavgitionbottomModelObj ?? this.appbarNavgitionbottomModelObj,
    );
  }
}
