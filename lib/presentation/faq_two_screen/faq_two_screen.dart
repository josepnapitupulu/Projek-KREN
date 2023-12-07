import '../faq_two_screen/widgets/faqtwo_item_widget.dart';
import 'controller/faq_two_controller.dart';
import 'models/faqtwo_item_model.dart';
import 'package:flutter/material.dart';
import 'package:example/core/app_export.dart';
import 'package:example/presentation/cari_page/cari_page.dart';
import 'package:example/widgets/app_bar/appbar_leading_image.dart';
import 'package:example/widgets/app_bar/appbar_subtitle_two.dart';
import 'package:example/widgets/app_bar/custom_app_bar.dart';
import 'package:example/widgets/custom_bottom_bar.dart';

// ignore_for_file: must_be_immutable
class FaqTwoScreen extends GetWidget<FaqTwoController> {
  const FaqTwoScreen({Key? key})
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
              SizedBox(height: 7.v),
              Expanded(
                child: SingleChildScrollView(
                  child: _buildFAQTwo(),
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
          SizedBox(height: 9.v),
          CustomAppBar(
            height: 27.v,
            leadingWidth: 49.h,
            leading: AppbarLeadingImage(
              imagePath: ImageConstant.imgRewindOnerrorcontainer,
              margin: EdgeInsets.only(
                left: 17.h,
                bottom: 3.v,
              ),
            ),
            title: AppbarSubtitleTwo(
              text: "lbl_faq".tr,
              margin: EdgeInsets.only(left: 10.h),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildFAQTwo() {
    return Padding(
      padding: EdgeInsets.only(bottom: 5.v),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 10.h),
            child: Text(
              "lbl_pertanyaan_umum".tr,
              style: theme.textTheme.headlineSmall,
            ),
          ),
          Obx(
            () => ListView.separated(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              separatorBuilder: (
                context,
                index,
              ) {
                return SizedBox(
                  height: 1.v,
                );
              },
              itemCount:
                  controller.faqTwoModelObj.value.faqtwoItemList.value.length,
              itemBuilder: (context, index) {
                FaqtwoItemModel model =
                    controller.faqTwoModelObj.value.faqtwoItemList.value[index];
                return FaqtwoItemWidget(
                  model,
                );
              },
            ),
          ),
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
