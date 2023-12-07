import 'controller/faq_one_controller.dart';
import 'package:flutter/material.dart';
import 'package:example/core/app_export.dart';
import 'package:example/presentation/cari_page/cari_page.dart';
import 'package:example/widgets/app_bar/appbar_leading_image.dart';
import 'package:example/widgets/app_bar/appbar_subtitle_two.dart';
import 'package:example/widgets/app_bar/custom_app_bar.dart';
import 'package:example/widgets/custom_bottom_bar.dart';

// ignore_for_file: must_be_immutable
class FaqOneScreen extends GetWidget<FaqOneController> {
  const FaqOneScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              _buildAtas(),
              SizedBox(height: 26.v),
              Expanded(
                child: SingleChildScrollView(
                  child: _buildPersonal(),
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: _buildBottomBar(),
      ),
    );
  }

  /// Section Widget
  Widget _buildAtas() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 8.v),
      decoration: AppDecoration.fillPrimary,
      child: Column(
        children: [
          SizedBox(height: 7.v),
          CustomAppBar(
            height: 29.v,
            leadingWidth: 49.h,
            leading: AppbarLeadingImage(
              imagePath: ImageConstant.imgRewindOnerrorcontainer,
              margin: EdgeInsets.only(
                left: 17.h,
                bottom: 5.v,
              ),
            ),
            title: AppbarSubtitleTwo(
              text: "lbl_hubungi_kami".tr,
              margin: EdgeInsets.only(left: 11.h),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildPersonal() {
    return Container(
      margin: EdgeInsets.only(bottom: 5.v),
      decoration: AppDecoration.fillGray100,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Divider(),
          SizedBox(height: 25.v),
          Padding(
            padding: EdgeInsets.only(left: 40.h),
            child: Text(
              "msg_bagaimana_kami_bisa".tr,
              style: CustomTextStyles.bodyLarge18,
            ),
          ),
          SizedBox(height: 48.v),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildBottomBar() {
    return CustomBottomBar(
      onChanged: (BottomBarEnum type) {
        Get.toNamed(getCurrentRoute(type), id: 1);
      },
    );
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
}
