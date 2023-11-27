import 'package:flutter/material.dart';
import 'package:demo/presentation/product_detail_tab_container_screen/product_detail_tab_container_screen.dart';
import 'package:demo/presentation/silder_image_product_detai_screen/silder_image_product_detai_screen.dart';
import 'package:demo/presentation/appbar_navgitionbottom_screen/appbar_navgitionbottom_screen.dart';
import 'package:demo/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String productDetailPage = '/product_detail_page';

  static const String productDetailTabContainerScreen =
      '/product_detail_tab_container_screen';

  static const String silderImageProductDetaiScreen =
      '/silder_image_product_detai_screen';

  static const String appbarNavgitionbottomScreen =
      '/appbar_navgitionbottom_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static Map<String, WidgetBuilder> get routes => {
        productDetailTabContainerScreen:
            ProductDetailTabContainerScreen.builder,
        silderImageProductDetaiScreen: SilderImageProductDetaiScreen.builder,
        appbarNavgitionbottomScreen: AppbarNavgitionbottomScreen.builder,
        appNavigationScreen: AppNavigationScreen.builder,
        initialRoute: ProductDetailTabContainerScreen.builder
      };
}
