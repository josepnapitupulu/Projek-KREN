import 'controller/profile_one_controller.dart';
import 'package:flutter/material.dart';
import 'package:example/core/app_export.dart';
import 'package:example/presentation/cari_page/cari_page.dart';
import 'package:example/widgets/custom_bottom_bar.dart';
import 'package:example/widgets/custom_elevated_button.dart';

class ProfileOneScreen extends GetWidget<ProfileOneController> {
  const ProfileOneScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            body: SizedBox(
                width: mediaQueryData.size.width,
                child: SingleChildScrollView(
                    child: Padding(
                        padding: EdgeInsets.only(bottom: 5.v),
                        child: Column(children: [
                          _buildFrame(),
                          SizedBox(height: 12.v),
                          _buildFrame1(),
                          SizedBox(height: 20.v),
                          _buildFrame2(),
                          SizedBox(height: 14.v),
                          Divider(color: appTheme.gray40002),
                          SizedBox(height: 18.v),
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                  padding: EdgeInsets.only(left: 8.h),
                                  child: Row(children: [
                                    CustomImageView(
                                        imagePath: ImageConstant.imgSettings,
                                        height: 36.adaptSize,
                                        width: 36.adaptSize),
                                    Padding(
                                        padding: EdgeInsets.only(
                                            left: 12.h, top: 6.v),
                                        child: Text("lbl_pengaturan_umum".tr,
                                            style:
                                                CustomTextStyles.titleLarge_1))
                                  ]))),
                          SizedBox(height: 10.v),
                          _buildFAQ(),
                          SizedBox(height: 11.v),
                          _buildPrivacy(),
                          SizedBox(height: 11.v),
                          _buildTentangKami(),
                          SizedBox(height: 11.v),
                          _buildPengguna(),
                          SizedBox(height: 11.v),
                          _buildKontak()
                        ])))),
            bottomNavigationBar: _buildBottomBar()));
  }

  /// Section Widget
  Widget _buildFrame() {
    return Container(
        decoration: AppDecoration.fillPrimary,
        child: Column(children: [
          SizedBox(
              height: 145.v,
              width: double.maxFinite,
              child: Stack(alignment: Alignment.center, children: [
                Align(
                    alignment: Alignment.topRight,
                    child: Padding(
                        padding: EdgeInsets.only(top: 50.v, right: 68.h),
                        child: Text("msg_sarah_rosiana_naibaho".tr,
                            style:
                                CustomTextStyles.titleLargeOnErrorContainer))),
                Align(
                    alignment: Alignment.center,
                    child: SizedBox(
                        height: 145.v,
                        width: double.maxFinite,
                        child:
                            Stack(alignment: Alignment.bottomCenter, children: [
                          CustomElevatedButton(
                              height: 29.v,
                              width: 73.h,
                              text: "lbl_atur_akun".tr,
                              margin:
                                  EdgeInsets.only(right: 19.h, bottom: 24.v),
                              buttonStyle: CustomButtonStyles.fillTeal,
                              buttonTextStyle:
                                  CustomTextStyles.bodyMediumOnErrorContainer,
                              alignment: Alignment.bottomRight),
                          Align(
                              alignment: Alignment.bottomCenter,
                              child: Text("msg2".tr,
                                  style: theme.textTheme.titleLarge)),
                          CustomImageView(
                              imagePath: ImageConstant.img2b1,
                              height: 118.v,
                              width: 106.h,
                              alignment: Alignment.topLeft,
                              margin: EdgeInsets.only(left: 22.h))
                        ])))
              ])),
          SizedBox(height: 15.v),
          Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                  padding: EdgeInsets.only(left: 25.h, right: 52.h),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                            padding: EdgeInsets.only(bottom: 2.v),
                            child: Text("lbl_email2".tr,
                                style: CustomTextStyles
                                    .bodyMediumOnErrorContainer14)),
                        Padding(
                            padding: EdgeInsets.only(top: 2.v),
                            child: Text("lbl_no_telepon".tr,
                                style: CustomTextStyles
                                    .bodyMediumOnErrorContainer14))
                      ]))),
          SizedBox(height: 4.v),
          Padding(
              padding: EdgeInsets.only(left: 25.h, right: 32.h),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                        padding: EdgeInsets.only(top: 1.v),
                        child: Text("msg_sarahrosiana9_gmail_com".tr,
                            style: CustomTextStyles.bodyMediumOnErrorContainer14
                                .copyWith(
                                    decoration: TextDecoration.underline))),
                    Text("lbl_62_85242_2211".tr,
                        style: CustomTextStyles.bodyMediumOnErrorContainer14)
                  ])),
          SizedBox(height: 42.v)
        ]));
  }

  /// Section Widget
  Widget _buildFrame1() {
    return Padding(
        padding: EdgeInsets.only(left: 11.h, right: 19.h),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              CustomImageView(
                  imagePath: ImageConstant.imgShoppingBasket2Line,
                  height: 36.adaptSize,
                  width: 36.adaptSize),
              Padding(
                  padding: EdgeInsets.only(left: 6.h, top: 5.v, bottom: 2.v),
                  child: Text("lbl_pesanan".tr,
                      style: CustomTextStyles.titleLarge_1)),
              Spacer(),
              Padding(
                  padding: EdgeInsets.only(top: 11.v, bottom: 7.v),
                  child: Text("msg_lihat_riwayat_pesanan".tr,
                      style: CustomTextStyles.bodySmallGray700_1))
            ]));
  }

  /// Section Widget
  Widget _buildFrame2() {
    return Padding(
        padding: EdgeInsets.only(left: 30.h, right: 37.h),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              GestureDetector(
                  onTap: () {
                    onTapFrame();
                  },
                  child: Column(children: [
                    SizedBox(
                        height: 30.v,
                        width: 33.h,
                        child: Stack(alignment: Alignment.topRight, children: [
                          CustomImageView(
                              imagePath: ImageConstant.imgWallet3Line,
                              height: 25.adaptSize,
                              width: 25.adaptSize,
                              alignment: Alignment.bottomLeft),
                          Align(
                              alignment: Alignment.topRight,
                              child: Container(
                                  width: 18.h,
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 7.h, vertical: 1.v),
                                  decoration: AppDecoration.fillRed.copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.circleBorder9),
                                  child: Text("lbl_1".tr,
                                      style: CustomTextStyles
                                          .bodySmallOnErrorContainer)))
                        ])),
                    SizedBox(height: 2.v),
                    Text("lbl_belum_dibayar".tr,
                        style: CustomTextStyles.bodySmallPrimary10)
                  ])),
              Spacer(flex: 33),
              GestureDetector(
                  onTap: () {
                    onTapFrame1();
                  },
                  child: Padding(
                      padding: EdgeInsets.only(top: 4.v),
                      child: Column(children: [
                        CustomImageView(
                            imagePath: ImageConstant.imgUserInterface,
                            height: 25.adaptSize,
                            width: 25.adaptSize),
                        SizedBox(height: 2.v),
                        Text("lbl_sedang_diproses".tr,
                            style: CustomTextStyles.bodySmallPrimary10)
                      ]))),
              Spacer(flex: 33),
              Padding(
                  padding: EdgeInsets.only(top: 5.v),
                  child: Column(children: [
                    CustomImageView(
                        imagePath: ImageConstant.imgTransportShipping,
                        height: 25.adaptSize,
                        width: 25.adaptSize),
                    SizedBox(height: 1.v),
                    Text("lbl_ambil_dikirim".tr,
                        style: CustomTextStyles.bodySmallPrimary10)
                  ])),
              Spacer(flex: 32),
              Padding(
                  padding: EdgeInsets.only(top: 5.v),
                  child: Column(children: [
                    CustomImageView(
                        imagePath: ImageConstant.imgShoppingTag,
                        height: 25.adaptSize,
                        width: 25.adaptSize,
                        alignment: Alignment.centerRight,
                        margin: EdgeInsets.only(right: 2.h)),
                    SizedBox(height: 1.v),
                    Text("lbl_selesai".tr,
                        style: CustomTextStyles.bodySmallPrimary10)
                  ]))
            ]));
  }

  /// Section Widget
  Widget _buildFAQ() {
    return GestureDetector(
        onTap: () {
          onTapFAQ();
        },
        child: Padding(
            padding: EdgeInsets.only(left: 25.h, right: 18.h),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomImageView(
                      imagePath: ImageConstant.imgImage8,
                      height: 31.adaptSize,
                      width: 31.adaptSize),
                  Padding(
                      padding:
                          EdgeInsets.only(left: 6.h, top: 6.v, bottom: 5.v),
                      child: Text("lbl_faq".tr,
                          style: CustomTextStyles.bodyMedium14_1)),
                  Spacer(),
                  CustomImageView(
                      imagePath: ImageConstant.imgArrowRightPrimarycontainer,
                      height: 23.v,
                      width: 22.h,
                      margin: EdgeInsets.only(bottom: 8.v))
                ])));
  }

  /// Section Widget
  Widget _buildPrivacy() {
    return Padding(
        padding: EdgeInsets.only(left: 25.h, right: 17.h),
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          CustomImageView(
              imagePath: ImageConstant.imgImage9,
              height: 32.adaptSize,
              width: 32.adaptSize),
          Padding(
              padding: EdgeInsets.only(left: 7.h, top: 8.v, bottom: 4.v),
              child: Text("msg_kebijakan_privasi".tr,
                  style: CustomTextStyles.bodyMedium14_1)),
          Spacer(),
          CustomImageView(
              imagePath: ImageConstant.imgArrowRightPrimarycontainer,
              height: 23.v,
              width: 22.h,
              margin: EdgeInsets.only(top: 5.v, bottom: 4.v))
        ]));
  }

  /// Section Widget
  Widget _buildTentangKami() {
    return Padding(
        padding: EdgeInsets.only(left: 25.h, right: 19.h),
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          CustomImageView(
              imagePath: ImageConstant.imgImage10, height: 28.v, width: 35.h),
          Padding(
              padding: EdgeInsets.only(left: 4.h, top: 6.v, bottom: 2.v),
              child: Text("lbl_tentang_kami".tr,
                  style: CustomTextStyles.bodyMedium14_1)),
          Spacer(),
          CustomImageView(
              imagePath: ImageConstant.imgArrowRightPrimarycontainer,
              height: 23.v,
              width: 21.h,
              margin: EdgeInsets.only(top: 3.v))
        ]));
  }

  /// Section Widget
  Widget _buildPengguna() {
    return Padding(
        padding: EdgeInsets.only(left: 25.h, right: 19.h),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomImageView(
                  imagePath: ImageConstant.imgFile,
                  height: 27.adaptSize,
                  width: 27.adaptSize),
              Padding(
                  padding: EdgeInsets.only(left: 15.h, top: 5.v, bottom: 2.v),
                  child: Text("msg_ketentuan_penggunaan".tr,
                      style: CustomTextStyles.bodyMedium14_1)),
              Spacer(),
              CustomImageView(
                  imagePath: ImageConstant.imgArrowRightPrimarycontainer,
                  height: 25.v,
                  width: 22.h)
            ]));
  }

  /// Section Widget
  Widget _buildKontak() {
    return Padding(
        padding: EdgeInsets.only(left: 25.h, right: 19.h),
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          CustomImageView(
              imagePath: ImageConstant.imgImage11, height: 33.v, width: 34.h),
          Padding(
              padding: EdgeInsets.only(left: 8.h, top: 4.v, bottom: 9.v),
              child: Text("lbl_kontak".tr,
                  style: CustomTextStyles.bodyMedium14_1)),
          Spacer(),
          CustomImageView(
              imagePath: ImageConstant.imgArrowRightPrimarycontainer,
              height: 23.v,
              width: 21.h,
              margin: EdgeInsets.symmetric(vertical: 5.v))
        ]));
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
        return AppRoutes.profileOneScreen;
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.profileOneScreen:
        return ProfileOneScreen();
      default:
        return DefaultWidget();
    }
  }

  /// Navigates to the belumBayarScreen when the action is triggered.
  onTapFrame() {
    Get.toNamed(
      AppRoutes.belumBayarScreen,
    );
  }

  /// Navigates to the sedangDiprosesScreen when the action is triggered.
  onTapFrame1() {
    Get.toNamed(
      AppRoutes.sedangDiprosesScreen,
    );
  }

  /// Navigates to the faqTwoScreen when the action is triggered.
  onTapFAQ() {
    Get.toNamed(
      AppRoutes.faqTwoScreen,
    );
  }
}
