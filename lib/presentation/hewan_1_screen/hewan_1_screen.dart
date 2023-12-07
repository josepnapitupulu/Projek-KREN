import 'controller/hewan_1_controller.dart';
import 'package:flutter/material.dart';
import 'package:example/core/app_export.dart';
import 'package:example/presentation/cari_page/cari_page.dart';
import 'package:example/widgets/custom_bottom_bar.dart';

// ignore_for_file: must_be_immutable
class Hewan1Screen extends GetWidget<Hewan1Controller> {
  const Hewan1Screen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: mediaQueryData.size.width,
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.only(
                left: 5.h,
                right: 34.h,
                bottom: 5.v,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Divider(
                    color: appTheme.blueGray10003,
                    endIndent: 24.h,
                  ),
                  SizedBox(height: 19.v),
                  Padding(
                    padding: EdgeInsets.only(left: 24.h),
                    child: Row(
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgSolidArrowCircleLeft,
                          height: 24.adaptSize,
                          width: 24.adaptSize,
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 20.h),
                          child: Text(
                            "lbl_detail_hewan".tr,
                            style: theme.textTheme.bodyMedium,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 30.v),
                  SizedBox(
                    width: 120.h,
                    child: Divider(
                      color: appTheme.blueGray10001,
                      indent: 34.h,
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Divider(
                      color: appTheme.blueGray10003,
                      indent: 24.h,
                    ),
                  ),
                  SizedBox(height: 11.v),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Container(
                      height: 591.v,
                      width: 341.h,
                      margin: EdgeInsets.only(right: 6.h),
                      child: Stack(
                        alignment: Alignment.topCenter,
                        children: [
                          Align(
                            alignment: Alignment.topCenter,
                            child: Padding(
                              padding: EdgeInsets.only(top: 87.v),
                              child: SizedBox(
                                width: 331.h,
                                child: Divider(
                                  color: appTheme.blueGray10003,
                                ),
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.topCenter,
                            child: Padding(
                              padding: EdgeInsets.only(
                                left: 18.h,
                                right: 23.h,
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      SizedBox(
                                        height: 25.v,
                                        width: 117.h,
                                        child: Stack(
                                          alignment: Alignment.topCenter,
                                          children: [
                                            Align(
                                              alignment: Alignment.bottomCenter,
                                              child: Container(
                                                height: 22.v,
                                                width: 117.h,
                                                decoration: BoxDecoration(
                                                  color: appTheme.yellow300,
                                                ),
                                              ),
                                            ),
                                            Align(
                                              alignment: Alignment.topCenter,
                                              child: Text(
                                                "lbl_b01".tr,
                                                style:
                                                    theme.textTheme.bodyLarge,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(left: 13.h),
                                        child: Text(
                                          "lbl_babi2".tr,
                                          style: theme.textTheme.bodyLarge,
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 14.v),
                                  Padding(
                                    padding: EdgeInsets.only(left: 8.h),
                                    child: _buildSignAndSymbol(
                                      betina: "lbl_betina".tr,
                                      siapJual: "lbl_siap_jual".tr,
                                      sehat: "lbl_sehat".tr,
                                    ),
                                  ),
                                  SizedBox(height: 25.v),
                                  Padding(
                                    padding: EdgeInsets.only(left: 10.h),
                                    child: Text(
                                      "lbl_informasi_hewan".tr,
                                      style: theme.textTheme.bodyLarge,
                                    ),
                                  ),
                                  SizedBox(height: 20.v),
                                  Padding(
                                    padding: EdgeInsets.only(left: 5.h),
                                    child: Text(
                                      "msg_struktur_populasi".tr,
                                      style:
                                          CustomTextStyles.bodyLargeGray500_1,
                                    ),
                                  ),
                                  SizedBox(height: 12.v),
                                  Padding(
                                    padding: EdgeInsets.only(left: 4.h),
                                    child: Text(
                                      "lbl_kategori_hewan".tr,
                                      style:
                                          CustomTextStyles.bodyLargeGray500_1,
                                    ),
                                  ),
                                  SizedBox(height: 8.v),
                                  Padding(
                                    padding: EdgeInsets.only(left: 7.h),
                                    child: Text(
                                      "lbl_bobot_masuk".tr,
                                      style:
                                          CustomTextStyles.bodyLargeGray500_1,
                                    ),
                                  ),
                                  SizedBox(height: 10.v),
                                  Padding(
                                    padding: EdgeInsets.only(left: 8.h),
                                    child: Text(
                                      "lbl_bobot_terkini".tr,
                                      style:
                                          CustomTextStyles.bodyLargeGray500_1,
                                    ),
                                  ),
                                  SizedBox(height: 13.v),
                                  Padding(
                                    padding: EdgeInsets.only(left: 10.h),
                                    child: Text(
                                      "lbl_harga_beli".tr,
                                      style:
                                          CustomTextStyles.bodyLargeGray500_1,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.center,
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: Padding(
                                    padding: EdgeInsets.only(left: 18.h),
                                    child: Row(
                                      children: [
                                        SizedBox(
                                          height: 25.v,
                                          width: 117.h,
                                          child: Stack(
                                            alignment: Alignment.topCenter,
                                            children: [
                                              Align(
                                                alignment:
                                                    Alignment.bottomCenter,
                                                child: Container(
                                                  height: 22.v,
                                                  width: 117.h,
                                                  decoration: BoxDecoration(
                                                    color: appTheme.yellow300,
                                                  ),
                                                ),
                                              ),
                                              Align(
                                                alignment: Alignment.topCenter,
                                                child: Text(
                                                  "lbl_b01".tr,
                                                  style:
                                                      theme.textTheme.bodyLarge,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(left: 13.h),
                                          child: Text(
                                            "lbl_babi2".tr,
                                            style: theme.textTheme.bodyLarge,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                SizedBox(height: 14.v),
                                Padding(
                                  padding: EdgeInsets.only(
                                    left: 26.h,
                                    right: 23.h,
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      CustomImageView(
                                        imagePath:
                                            ImageConstant.imgSignAndSymbol,
                                        height: 24.adaptSize,
                                        width: 24.adaptSize,
                                        margin: EdgeInsets.only(top: 3.v),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(top: 2.v),
                                        child: Text(
                                          "lbl_betina".tr,
                                          style: CustomTextStyles
                                              .bodyLargeGray500_1,
                                        ),
                                      ),
                                      CustomImageView(
                                        imagePath:
                                            ImageConstant.img584091148Shock,
                                        height: 25.v,
                                        width: 34.h,
                                        margin: EdgeInsets.only(
                                          left: 14.h,
                                          bottom: 2.v,
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(
                                          left: 5.h,
                                          top: 2.v,
                                        ),
                                        child: Text(
                                          "lbl_siap_jual".tr,
                                          style: CustomTextStyles
                                              .bodyLargeGray500_1,
                                        ),
                                      ),
                                      CustomImageView(
                                        imagePath:
                                            ImageConstant.imgMedicalHealth,
                                        height: 24.adaptSize,
                                        width: 24.adaptSize,
                                        margin: EdgeInsets.only(left: 15.h),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(
                                          left: 6.h,
                                          bottom: 3.v,
                                        ),
                                        child: Text(
                                          "lbl_sehat".tr,
                                          style: CustomTextStyles
                                              .bodyLargeGray500_1,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(height: 25.v),
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: Padding(
                                    padding: EdgeInsets.only(left: 28.h),
                                    child: Text(
                                      "lbl_informasi_hewan".tr,
                                      style: theme.textTheme.bodyLarge,
                                    ),
                                  ),
                                ),
                                SizedBox(height: 17.v),
                                SizedBox(
                                  height: 28.v,
                                  width: 301.h,
                                  child: Stack(
                                    alignment: Alignment.bottomCenter,
                                    children: [
                                      Align(
                                        alignment: Alignment.bottomLeft,
                                        child: Text(
                                          "msg_struktur_populasi2".tr,
                                          style: CustomTextStyles
                                              .bodyLargeGray500_1,
                                        ),
                                      ),
                                      Align(
                                        alignment: Alignment.bottomCenter,
                                        child: SizedBox(
                                          width: 297.h,
                                          child: Divider(
                                            color: appTheme.gray500,
                                          ),
                                        ),
                                      ),
                                      Align(
                                        alignment: Alignment.centerRight,
                                        child: Padding(
                                          padding: EdgeInsets.only(right: 82.h),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            mainAxisSize: MainAxisSize.min,
                                            children: [
                                              Padding(
                                                padding:
                                                    EdgeInsets.only(top: 4.v),
                                                child: Text(
                                                  "lbl4".tr,
                                                  style:
                                                      theme.textTheme.bodyLarge,
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsets.only(
                                                  left: 19.h,
                                                  bottom: 4.v,
                                                ),
                                                child: Text(
                                                  "lbl_anak".tr,
                                                  style:
                                                      theme.textTheme.bodyLarge,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(height: 7.v),
                                SizedBox(
                                  height: 28.v,
                                  width: 304.h,
                                  child: Stack(
                                    alignment: Alignment.bottomCenter,
                                    children: [
                                      Align(
                                        alignment: Alignment.bottomLeft,
                                        child: Text(
                                          "lbl_kategori_hewan".tr,
                                          style: CustomTextStyles
                                              .bodyLargeGray500_1,
                                        ),
                                      ),
                                      Align(
                                        alignment: Alignment.bottomCenter,
                                        child: SizedBox(
                                          width: 297.h,
                                          child: Divider(
                                            color: appTheme.gray500,
                                          ),
                                        ),
                                      ),
                                      Align(
                                        alignment: Alignment.topRight,
                                        child: Padding(
                                          padding: EdgeInsets.only(right: 8.h),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.end,
                                            mainAxisSize: MainAxisSize.min,
                                            children: [
                                              Padding(
                                                padding: EdgeInsets.only(
                                                    bottom: 1.v),
                                                child: Text(
                                                  "lbl4".tr,
                                                  style:
                                                      theme.textTheme.bodyLarge,
                                                ),
                                              ),
                                              Padding(
                                                padding:
                                                    EdgeInsets.only(left: 12.h),
                                                child: Text(
                                                  "lbl_pembiakan_babi".tr,
                                                  style:
                                                      theme.textTheme.bodyLarge,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(height: 7.v),
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: Padding(
                                    padding: EdgeInsets.only(
                                      left: 25.h,
                                      right: 88.h,
                                    ),
                                    child: Row(
                                      children: [
                                        Text(
                                          "lbl_bobot_masuk".tr,
                                          style: CustomTextStyles
                                              .bodyLargeGray500_1,
                                        ),
                                        Spacer(),
                                        Text(
                                          "lbl4".tr,
                                          style: theme.textTheme.bodyLarge,
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(left: 6.h),
                                          child: Text(
                                            "lbl_30_09kg".tr,
                                            style: theme.textTheme.bodyLarge,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                SizedBox(height: 10.v),
                                SizedBox(
                                  height: 26.v,
                                  width: 301.h,
                                  child: Stack(
                                    alignment: Alignment.center,
                                    children: [
                                      Align(
                                        alignment: Alignment.topLeft,
                                        child: Text(
                                          "lbl_bobot_terkini".tr,
                                          style: CustomTextStyles
                                              .bodyLargeGray500_1,
                                        ),
                                      ),
                                      Align(
                                        alignment: Alignment.center,
                                        child: SizedBox(
                                          height: 25.v,
                                          width: 297.h,
                                          child: Stack(
                                            alignment: Alignment.topCenter,
                                            children: [
                                              Align(
                                                alignment:
                                                    Alignment.bottomCenter,
                                                child: SizedBox(
                                                  width: 297.h,
                                                  child: Divider(
                                                    color: appTheme.gray500,
                                                  ),
                                                ),
                                              ),
                                              Align(
                                                alignment: Alignment.topCenter,
                                                child: Text(
                                                  "lbl4".tr,
                                                  style:
                                                      theme.textTheme.bodyLarge,
                                                ),
                                              ),
                                              Align(
                                                alignment:
                                                    Alignment.bottomRight,
                                                child: Padding(
                                                  padding: EdgeInsets.only(
                                                      right: 75.h),
                                                  child: Text(
                                                    "lbl_70_09kg2".tr,
                                                    style: theme
                                                        .textTheme.bodyLarge,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(height: 10.v),
                                Padding(
                                  padding: EdgeInsets.only(
                                    left: 28.h,
                                    right: 37.h,
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        "lbl_harga_beli".tr,
                                        style:
                                            CustomTextStyles.bodyLargeGray500_1,
                                      ),
                                      Spacer(),
                                      Text(
                                        "lbl4".tr,
                                        style: theme.textTheme.bodyLarge,
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(left: 11.h),
                                        child: Text(
                                          "lbl_rp_15_000_000".tr,
                                          style: theme.textTheme.bodyLarge,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Divider(
                                  color: appTheme.gray500,
                                  indent: 29.h,
                                  endIndent: 15.h,
                                ),
                                SizedBox(height: 34.v),
                                Divider(
                                  color: appTheme.black900,
                                  endIndent: 3.h,
                                ),
                                SizedBox(height: 19.v),
                                Divider(
                                  color: appTheme.black900,
                                  indent: 5.h,
                                  endIndent: 3.h,
                                ),
                                SizedBox(height: 22.v),
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: Padding(
                                    padding: EdgeInsets.only(left: 35.h),
                                    child: Text(
                                      "msg_riwayat_penimbangan".tr,
                                      style: theme.textTheme.bodyLarge,
                                    ),
                                  ),
                                ),
                                SizedBox(height: 2.v),
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: Padding(
                                    padding: EdgeInsets.only(
                                      left: 39.h,
                                      right: 75.h,
                                    ),
                                    child: Row(
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.only(top: 2.v),
                                          child: Text(
                                            "lbl_timbang_1".tr,
                                            style: CustomTextStyles
                                                .bodyLargeGray500_1,
                                          ),
                                        ),
                                        Spacer(),
                                        Padding(
                                          padding: EdgeInsets.only(bottom: 2.v),
                                          child: Text(
                                            "lbl4".tr,
                                            style: theme.textTheme.bodyLarge,
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(left: 19.h),
                                          child: Text(
                                            "lbl_30_09kg".tr,
                                            style: theme.textTheme.bodyLarge,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                SizedBox(height: 11.v),
                                Divider(
                                  color: appTheme.gray500,
                                  indent: 26.h,
                                  endIndent: 16.h,
                                ),
                                SizedBox(height: 52.v),
                                Divider(
                                  color: appTheme.black900,
                                  endIndent: 3.h,
                                ),
                                SizedBox(height: 21.v),
                                Divider(
                                  color: appTheme.black900,
                                  indent: 3.h,
                                ),
                                SizedBox(height: 16.v),
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: Padding(
                                    padding: EdgeInsets.only(left: 39.h),
                                    child: Text(
                                      "msg_riwayat_kesehatan".tr,
                                      style: theme.textTheme.bodyLarge,
                                    ),
                                  ),
                                ),
                                SizedBox(height: 4.v),
                                Align(
                                  alignment: Alignment.centerRight,
                                  child: Padding(
                                    padding: EdgeInsets.only(
                                      left: 48.h,
                                      right: 8.h,
                                    ),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Text(
                                          "lbl_15_oktober".tr,
                                          style: CustomTextStyles
                                              .bodyLargeGray500_1,
                                        ),
                                        Spacer(),
                                        Text(
                                          "lbl4".tr,
                                          style: theme.textTheme.bodyLarge,
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(
                                            left: 6.h,
                                            top: 4.v,
                                          ),
                                          child: Text(
                                            "msg_gangguan_pencernaan".tr,
                                            style:
                                                CustomTextStyles.bodyMedium14_1,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        bottomNavigationBar: _buildBottomBar(),
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

  /// Common widget
  Widget _buildSignAndSymbol({
    required String betina,
    required String siapJual,
    required String sehat,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomImageView(
          imagePath: ImageConstant.imgSignAndSymbol,
          height: 24.adaptSize,
          width: 24.adaptSize,
          margin: EdgeInsets.only(top: 3.v),
        ),
        Padding(
          padding: EdgeInsets.only(top: 2.v),
          child: Text(
            betina,
            style: CustomTextStyles.bodyLargeGray500_1.copyWith(
              color: appTheme.gray500,
            ),
          ),
        ),
        CustomImageView(
          imagePath: ImageConstant.img584091148Shock,
          height: 25.v,
          width: 34.h,
          margin: EdgeInsets.only(
            left: 14.h,
            bottom: 2.v,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: 5.h,
            top: 2.v,
          ),
          child: Text(
            siapJual,
            style: CustomTextStyles.bodyLargeGray500_1.copyWith(
              color: appTheme.gray500,
            ),
          ),
        ),
        CustomImageView(
          imagePath: ImageConstant.imgMedicalHealth,
          height: 24.adaptSize,
          width: 24.adaptSize,
          margin: EdgeInsets.only(left: 15.h),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: 6.h,
            bottom: 3.v,
          ),
          child: Text(
            sehat,
            style: CustomTextStyles.bodyLargeGray500_1.copyWith(
              color: appTheme.gray500,
            ),
          ),
        ),
      ],
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
