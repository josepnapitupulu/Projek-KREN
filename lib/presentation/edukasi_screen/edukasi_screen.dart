import 'controller/edukasi_controller.dart';
import 'package:flutter/material.dart';
import 'package:example/core/app_export.dart';
import 'package:example/presentation/cari_page/cari_page.dart';
import 'package:example/widgets/custom_bottom_bar.dart';
import 'package:example/widgets/custom_elevated_button.dart';

class EdukasiScreen extends GetWidget<EdukasiController> {
  const EdukasiScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            body: SizedBox(
                width: mediaQueryData.size.width,
                child: SingleChildScrollView(
                    child: SizedBox(
                        height: mediaQueryData.size.height,
                        width: double.maxFinite,
                        child: Stack(alignment: Alignment.topCenter, children: [
                          
                          CustomImageView(
                              imagePath: ImageConstant.imgImage17,
                              height: 211.v,
                              width: 414.h,
                              // radius: BorderRadius.circular(20.h),
                              alignment: Alignment.topCenter),
                          Align(
                            alignment: Alignment.bottomLeft,
                            child: Container(
                                  // margin: EdgeInsets.only(bottom: 20.0),
                                  // symmetric(
                                  //     horizontal: 2.h, vertical: 1.v),
                                  decoration: BoxDecoration(
                                      borderRadius:
                                          BorderRadiusStyle.circleBorder15),
                                  child: Column(children: [
                                  SizedBox(height: 218.v),
                                  Padding(
                                      padding: EdgeInsets.only(
                                          left: 23.h, right: 6.h),
                                      child: _buildKiatKiatMemulai(
                                          kiatKiatMemulai:
                                              "Kontrol Gizi Hewan Ternak")),
                                ]),)
                                          
                          ),
                          CustomImageView(
                              imagePath: ImageConstant.imgImage18,
                              height: 218.v,
                              width: 414.h,
                              radius: BorderRadius.circular(20.h),
                              alignment: Alignment.topCenter,
                              margin: EdgeInsets.only(top: 247.v)),
                          Align(
                              alignment: Alignment.bottomLeft,
                              child: Container(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 4.h, vertical: 250.v),
                                decoration: BoxDecoration(
                                    borderRadius:
                                        BorderRadiusStyle.circleBorder15),
                                child: Column(children: [
                                  SizedBox(height: 218.v),
                                  Padding(
                                            padding: EdgeInsets.only(
                                                left: 23.h, right: 6.h),
                                            child: _buildKiatKiatMemulai(
                                                kiatKiatMemulai:
                                                    "msg_kiat_kiat_memulai"
                                                        .tr)),
                                        // SizedBox(height: 219.v)
                                  // Padding(
                                  //     padding: EdgeInsets.only(
                                  //         left: 23.h, right: 6.h),
                                  //     child: _buildKiatKiatMemulai(
                                  //         kiatKiatMemulai:
                                  //             "msg_kiat_kiat_memulai".tr)),
                                ]),
                              )),
                          CustomImageView(
                              imagePath: ImageConstant.imgImage19,
                              height: 218.v,
                              // width: 414.h,
                              radius: BorderRadius.circular(20.h),
                              alignment: Alignment.topCenter,
                              margin: EdgeInsets.only(top: 499.v)),
                            CustomElevatedButton(
                              width: 125.h,
                              text: "lbl_request_artikel".tr,
                              margin:
                                  EdgeInsets.only(right: 17.h, bottom: 20.v),
                              buttonStyle: CustomButtonStyles.fillGreen,
                              buttonTextStyle:
                                  CustomTextStyles.bodyMediumOnErrorContainer_1,
                              alignment: Alignment.bottomRight)
                          // Align(
                          //     alignment: Alignment.bottomLeft,
                          //     child: Container(
                          //         padding: EdgeInsets.symmetric(
                          //             horizontal: 4.h, vertical: 16.v),
                          //         decoration: BoxDecoration(
                          //             borderRadius:
                          //                 BorderRadiusStyle.circleBorder15),
                          //         child: Column(
                          //             mainAxisSize: MainAxisSize.min,
                          //             children: [
                          //               _buildKontrolGiziHewan(),
                          //               SizedBox(height: 218.v),
                          //               Padding(
                          //                   padding: EdgeInsets.only(
                          //                       left: 23.h, right: 6.h),
                          //                   child: _buildKiatKiatMemulai(
                          //                       kiatKiatMemulai:
                          //                           "msg_kiat_kiat_memulai"
                          //                               .tr)),
                          //               SizedBox(height: 219.v),
                          //               Padding(
                          //                   padding: EdgeInsets.only(
                          //                       left: 23.h, right: 6.h),
                          //                   child: _buildKiatKiatMemulai(
                          //                       kiatKiatMemulai:
                          //                           "msg_kiat_kiat_memulai"
                          //                               .tr)),
                          //               SizedBox(height: 219.v)
                          //             ]))),
                          

                          
                          
                        ]
                        )
                    )
                  )
                ),
            bottomNavigationBar: _buildBottomBar()));
  }

  /// Section Widget
  Widget _buildKontrolGiziHewan() {
    return Align(
        alignment: Alignment.centerRight,
        child: Padding(
            padding: EdgeInsets.only(left: 23.h),
            child: Row(mainAxisAlignment: MainAxisAlignment.end, children: [
              Padding(
                  padding: EdgeInsets.only(bottom: 4.v),
                  child: Text("msg_kontrol_gizi_hewan".tr,
                      style: CustomTextStyles.bodyMedium14_1)),
              CustomImageView(
                  imagePath: ImageConstant.imgArrowRight,
                  height: 23.v,
                  width: 22.h,
                  margin: EdgeInsets.only(left: 167.h),
                  onTap: () {
                    onTapImgArrowRight();
                  })
            ])));
  }

  /// Section Widget
  Widget _buildBottomBar() {
    // return CustomBottomBar(onChanged: (BottomBarEnum type) {
    //   Get.toNamed(getCurrentRoute(type), id: 1);
    return CustomBottomBar(onChanged: (BottomBarEnum type) {
      Get.toNamed(getCurrentRoute(type));
    });
  }

  /// Common widget
  Widget _buildKiatKiatMemulai({required String kiatKiatMemulai}) {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      Padding(
          padding: EdgeInsets.only(top: 2.v, bottom: 1.v),
          child: Text(kiatKiatMemulai,
              style: CustomTextStyles.bodyMedium14_1
                  .copyWith(color: appTheme.black900))),
      CustomImageView(
          imagePath: ImageConstant.imgArrowRight,
          height: 23.v,
          width: 22.h,
          margin: EdgeInsets.only(left: 124.h))
    ]);
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
      case AppRoutes.edukasiScreen:
        return EdukasiScreen();
      default:
        return DefaultWidget();
    }
  }

  /// Navigates to the cardEdukasiScreen when the action is triggered.
  onTapImgArrowRight() {
    Get.toNamed(
      AppRoutes.cardEdukasiScreen,
    );
  }
}
