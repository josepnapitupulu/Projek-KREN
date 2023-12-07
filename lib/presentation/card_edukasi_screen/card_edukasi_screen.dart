import '../card_edukasi_screen/widgets/cardedukasi_item_widget.dart';
import 'controller/card_edukasi_controller.dart';
import 'models/cardedukasi_item_model.dart';
import 'package:flutter/material.dart';
import 'package:example/core/app_export.dart';
import 'package:example/presentation/cari_page/cari_page.dart';
import 'package:example/widgets/app_bar/appbar_leading_image.dart';
import 'package:example/widgets/app_bar/appbar_subtitle_two.dart';
import 'package:example/widgets/app_bar/custom_app_bar.dart';
import 'package:example/widgets/custom_bottom_bar.dart';

class CardEdukasiScreen extends GetWidget<CardEdukasiController> {
  const CardEdukasiScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            body: SizedBox(
                width: double.maxFinite,
                child: Column(children: [
                  _buildAtas(),
                  SizedBox(height: 25.v),
                  _buildCardEdukasi()
                ])),
            bottomNavigationBar: _buildBottomBar()));
  }

  /// Section Widget
  Widget _buildAtas() {
    return Container(
        padding: EdgeInsets.symmetric(vertical: 8.v),
        decoration: AppDecoration.fillPrimary,
        child: Column(children: [
          SizedBox(height: 9.v),
          CustomAppBar(
              height: 27.v,
              leadingWidth: 49.h,
              leading: AppbarLeadingImage(
                  imagePath: ImageConstant.imgRewindOnerrorcontainer,
                  margin: EdgeInsets.only(left: 17.h, bottom: 3.v)),
              title: AppbarSubtitleTwo(
                  text: "msg_kontrol_gizi_hewan".tr,
                  margin: EdgeInsets.only(left: 11.h)))
        ]));
  }

  /// Section Widget
  Widget _buildCardEdukasi() {
    return Expanded(
        child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 18.h),
            child: Obx(() => GridView.builder(
                shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    mainAxisExtent: 231.v,
                    crossAxisCount: 2,
                    mainAxisSpacing: 10.h,
                    crossAxisSpacing: 10.h),
                physics: BouncingScrollPhysics(),
                itemCount: controller
                    .cardEdukasiModelObj.value.cardedukasiItemList.value.length,
                itemBuilder: (context, index) {
                  CardedukasiItemModel model = controller.cardEdukasiModelObj
                      .value.cardedukasiItemList.value[index];
                  return CardedukasiItemWidget(model,
                      onTapBacaSelengkapnya: () {
                    onTapBacaSelengkapnya();
                  });
                }))));
  }

  /// Section Widget
  Widget _buildBottomBar() {
    return CustomBottomBar(onChanged: (BottomBarEnum type) {
      Get.toNamed(getCurrentRoute(type), id: 1);
    });
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Beranda:
        return AppRoutes.cariPage;
      case BottomBarEnum.Cari:
        return "/";
      case BottomBarEnum.Edukasi:
        return "/";
      case BottomBarEnum.Akun:
        return "/";
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.cariPage:
        return CariPage();
      default:
        return DefaultWidget();
    }
  }

  /// Navigates to the detailEdukasiScreen when the action is triggered.
  onTapBacaSelengkapnya() {
    Get.toNamed(
      AppRoutes.detailEdukasiScreen,
    );
  }
}
