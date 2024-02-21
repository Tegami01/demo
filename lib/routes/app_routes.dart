import 'package:flutter/material.dart';
import 'package:demo/presentation/silder_image_product_detai_screen/silder_image_product_detai_screen.dart';
import 'package:demo/presentation/product_category_ai_screen/product_category_ai_screen.dart';
import 'package:demo/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String silderImageProductDetaiScreen =
      '/silder_image_product_detai_screen';

  static const String productCategoryAiScreen = '/product_category_ai_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static Map<String, WidgetBuilder> get routes => {
        silderImageProductDetaiScreen: SilderImageProductDetaiScreen.builder,
        productCategoryAiScreen: ProductCategoryAiScreen.builder,
        appNavigationScreen: AppNavigationScreen.builder,
        initialRoute: SilderImageProductDetaiScreen.builder
      };
}
