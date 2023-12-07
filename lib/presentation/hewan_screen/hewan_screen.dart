import '../hewan_screen/widgets/hewan_item_widget.dart';
import 'controller/hewan_controller.dart';
import 'models/hewan_item_model.dart';
import 'package:flutter/material.dart';
import 'package:example/core/app_export.dart';
import 'package:example/presentation/cari_page/cari_page.dart';
import 'package:example/widgets/app_bar/appbar_title_searchview.dart';
import 'package:example/widgets/app_bar/custom_app_bar.dart';
import 'package:example/widgets/custom_bottom_bar.dart';

// ignore_for_file: must_be_immutable
class HewanScreen extends GetWidget<HewanController> {
  const HewanScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              SizedBox(height: 12.v),
              _buildSearch(),
              SizedBox(height: 50.v),
              Expanded(
                child: SingleChildScrollView(
                  child: _buildHewan(),
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
  Widget _buildSearch() {
    return SizedBox(
      height: 79.v,
      width: 356.h,
      child: Stack(
        alignment: Alignment.bottomLeft,
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Padding(
              padding: EdgeInsets.only(right: 5.h),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomAppBar(
                    height: 35.v,
                    centerTitle: true,
                    title: AppbarTitleSearchview(
                      hintText: "msg_daftar_semua_hewan2".tr,
                      controller: controller.searchController,
                    ),
                  ),
                  SizedBox(height: 19.v),
                  SizedBox(
                    width: 96.h,
                    child: Divider(
                      color: appTheme.blueGray10001,
                      indent: 10.h,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Container(
              margin: EdgeInsets.only(
                left: 13.h,
                top: 46.v,
                right: 281.h,
              ),
              padding: EdgeInsets.symmetric(
                horizontal: 5.h,
                vertical: 7.v,
              ),
              decoration: AppDecoration.outlineBlack9006.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder12,
              ),
              child: Row(
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgUserInterfaceBlack900,
                    height: 13.adaptSize,
                    width: 13.adaptSize,
                    margin: EdgeInsets.only(top: 2.v),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 8.h,
                      bottom: 2.v,
                    ),
                    child: Text(
                      "lbl_filter".tr,
                      style: CustomTextStyles.bodySmall10,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Container(
              height: 33.v,
              width: 62.h,
              margin: EdgeInsets.only(left: 84.h),
              child: Stack(
                alignment: Alignment.center,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgGoogle,
                    height: 33.v,
                    width: 62.h,
                    radius: BorderRadius.circular(
                      14.h,
                    ),
                    alignment: Alignment.center,
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgContentLeftAlignment,
                          height: 13.adaptSize,
                          width: 13.adaptSize,
                          margin: EdgeInsets.only(bottom: 1.v),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 6.h),
                          child: Text(
                            "lbl_urutan".tr,
                            style: CustomTextStyles.bodySmall10,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Container(
              margin: EdgeInsets.fromLTRB(158.h, 45.v, 101.h, 1.v),
              padding: EdgeInsets.symmetric(
                horizontal: 5.h,
                vertical: 8.v,
              ),
              decoration: AppDecoration.outlineBlack9006.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder12,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgArrowsUpperArrow,
                    height: 15.v,
                    width: 16.h,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 2.h),
                    child: Text(
                      "lbl_kondisi_hewan".tr,
                      style: CustomTextStyles.bodySmall10,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Container(
              margin: EdgeInsets.only(
                left: 264.h,
                top: 42.v,
                bottom: 4.v,
              ),
              padding: EdgeInsets.symmetric(
                horizontal: 2.h,
                vertical: 7.v,
              ),
              decoration: AppDecoration.outlineBlack9006.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder12,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgArrowsUpperArrow,
                    height: 15.v,
                    width: 16.h,
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 6.h,
                      bottom: 2.v,
                    ),
                    child: Text(
                      "lbl_status_hewan2".tr,
                      style: CustomTextStyles.bodySmall10,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildHewan() {
    return Padding(
      padding: EdgeInsets.only(
        left: 41.h,
        right: 16.h,
      ),
      child: Obx(
        () => ListView.separated(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          separatorBuilder: (
            context,
            index,
          ) {
            return SizedBox(
              height: 30.v,
            );
          },
          itemCount: controller.hewanModelObj.value.hewanItemList.value.length,
          itemBuilder: (context, index) {
            HewanItemModel model =
                controller.hewanModelObj.value.hewanItemList.value[index];
            return HewanItemWidget(
              model,
            );
          },
        ),
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
