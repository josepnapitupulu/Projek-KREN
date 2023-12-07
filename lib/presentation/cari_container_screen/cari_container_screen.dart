import 'controller/cari_container_controller.dart';
import 'package:flutter/material.dart';
import 'package:example/core/app_export.dart';
import 'package:example/presentation/cari_page/cari_page.dart';
import 'package:example/widgets/custom_bottom_bar.dart';

class CariContainerScreen extends GetWidget<CariContainerController> {
  const CariContainerScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            body: Navigator(
                key: Get.nestedKey(1),
                initialRoute: AppRoutes.cariContainerScreen,
                onGenerateRoute: (routeSetting) => GetPageRoute(
                    page: () => getCurrentPage(routeSetting.name!),
                    transition: Transition.noTransition)
                    ),
            bottomNavigationBar: _buildBottomBar()));
  }

  /// Section Widget
  Widget _buildBottomBar() {
    // return CustomBottomBar(onChanged: (BottomBarEnum type) {
    //   Get.toNamed(getCurrentRoute(type), id: 1);
    return CustomBottomBar(onChanged: (BottomBarEnum type) {
      Get.offAndToNamed(getCurrentRoute(type));
    });
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Beranda:
        return AppRoutes.berandaScreen;
      case BottomBarEnum.Cari:
        return AppRoutes.cariContainerScreen;
      case BottomBarEnum.Edukasi:
        return AppRoutes.edukasiScreen;
      case BottomBarEnum.Akun:
        return AppRoutes.profileOneScreen;
      default:
        return AppRoutes.edukasiScreen;
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.cariContainerScreen:
        return CariPage();
      default:
        return DefaultWidget();
    }
  }
}
