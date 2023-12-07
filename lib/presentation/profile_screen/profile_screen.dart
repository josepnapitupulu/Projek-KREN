import '../profile_screen/widgets/profile_item_widget.dart';
import 'controller/profile_controller.dart';
import 'models/profile_item_model.dart';
import 'package:flutter/material.dart';
import 'package:example/core/app_export.dart';
import 'package:example/presentation/cari_page/cari_page.dart';
import 'package:example/widgets/app_bar/appbar_leading_image.dart';
import 'package:example/widgets/app_bar/custom_app_bar.dart';
import 'package:example/widgets/custom_bottom_bar.dart';
import 'package:example/widgets/custom_elevated_button.dart';

class ProfileScreen extends GetWidget<ProfileController> {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            body: SizedBox(
                width: double.maxFinite,
                child: Column(children: [
                  _buildAtas(),
                  SizedBox(height: 18.v),
                  Expanded(
                      child: SingleChildScrollView(
                          child: Column(children: [
                    CustomImageView(
                        imagePath: ImageConstant.imgImage2025x25,
                        height: 100.adaptSize,
                        width: 100.adaptSize),
                    SizedBox(height: 15.v),
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                      Padding(
                          padding: EdgeInsets.only(top: 1.v),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                    padding: EdgeInsets.only(left: 1.h),
                                    child: Text("lbl_100".tr,
                                        style: CustomTextStyles.titleLarge_1)),
                                SizedBox(height: 3.v),
                                Align(
                                    alignment: Alignment.center,
                                    child: Text("lbl_foto".tr,
                                        style: theme.textTheme.bodyMedium))
                              ])),
                      Padding(
                          padding: EdgeInsets.only(left: 68.h),
                          child: Column(children: [
                            Text("lbl_100".tr,
                                style: CustomTextStyles.titleLarge_1),
                            SizedBox(height: 4.v),
                            Text("lbl_produk".tr,
                                style: theme.textTheme.bodyMedium)
                          ]))
                    ]),
                    SizedBox(height: 23.v),
                    Text("msg_peternak_sapi_kita".tr,
                        style: theme.textTheme.titleLarge),
                    SizedBox(height: 2.v),
                    SizedBox(
                        width: 161.h,
                        child: Text("msg_peternak_kambing".tr,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.center,
                            style: theme.textTheme.bodySmall!
                                .copyWith(height: 1.69))),
                    SizedBox(height: 3.v),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CustomImageView(
                              imagePath: ImageConstant.imgLocationAndMap,
                              height: 28.v,
                              width: 30.h,
                              margin: EdgeInsets.only(bottom: 4.v)),
                          Padding(
                              padding: EdgeInsets.only(left: 4.h),
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("msg_jl_diponegoro_xxxx".tr,
                                        style: CustomTextStyles.bodySmall10),
                                    SizedBox(height: 5.v),
                                    Text("msg_sidorejo_sumatera".tr,
                                        style: CustomTextStyles.bodySmall10)
                                  ]))
                        ]),
                    SizedBox(height: 34.v),
                    _buildBatalSukai(),
                    SizedBox(height: 25.v),
                    _buildGleroProduk(),
                    SizedBox(height: 2.v),
                    Padding(
                        padding: EdgeInsets.symmetric(horizontal: 26.h),
                        child: _buildJenisKelamin(
                            jenisKelamin: "lbl_hewan2".tr,
                            semua: "lbl_semua".tr)),
                    SizedBox(height: 4.v),
                    Divider(color: appTheme.gray30002),
                    SizedBox(height: 1.v),
                    Padding(
                        padding: EdgeInsets.symmetric(horizontal: 26.h),
                        child: _buildJenisKelamin(
                            jenisKelamin: "lbl_jenis_kelamin".tr,
                            semua: "lbl_semua".tr)),
                    SizedBox(height: 4.v),
                    _buildProfile(),
                    SizedBox(height: 210.v, width: 390.h),
                    SizedBox(height: 13.v),
                    _buildProduk()
                  ])))
                ])),
            bottomNavigationBar: _buildBottomBar()));
  }

  /// Section Widget
  Widget _buildAtas() {
    return Container(
        padding: EdgeInsets.symmetric(vertical: 10.v),
        decoration: AppDecoration.fillPrimary,
        child: Column(children: [
          SizedBox(height: 9.v),
          CustomAppBar(
              height: 24.v,
              leadingWidth: double.maxFinite,
              leading: AppbarLeadingImage(
                  imagePath: ImageConstant.imgRewindOnerrorcontainer,
                  margin: EdgeInsets.only(left: 17.h, right: 365.h),
                  onTap: () {
                    onTapRewind();
                  }))
        ]));
  }

  /// Section Widget
  Widget _buildBatalSukai() {
    return Padding(
        padding: EdgeInsets.only(left: 40.h, right: 26.h),
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Expanded(
              child: CustomElevatedButton(
                  height: 36.v,
                  text: "lbl_batal_sukai".tr,
                  margin: EdgeInsets.only(right: 23.h),
                  leftIcon: Container(
                      margin: EdgeInsets.only(right: 11.h),
                      child: CustomImageView(
                          imagePath: ImageConstant.imgHeart3fill,
                          height: 24.adaptSize,
                          width: 24.adaptSize)),
                  buttonStyle: CustomButtonStyles.fillAmberA)),
          Expanded(
              child: CustomElevatedButton(
                  height: 36.v,
                  text: "lbl_kirim_pesan".tr,
                  margin: EdgeInsets.only(left: 23.h),
                  leftIcon: Container(
                      margin: EdgeInsets.only(right: 13.h),
                      child: CustomImageView(
                          imagePath: ImageConstant.imgCommunicationMessage,
                          height: 24.adaptSize,
                          width: 24.adaptSize)),
                  buttonStyle: CustomButtonStyles.fillAmberA))
        ]));
  }

  /// Section Widget
  Widget _buildGleroProduk() {
    return SizedBox(
        width: double.maxFinite,
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          CustomElevatedButton(
              height: 40.v,
              width: 207.h,
              text: "lbl_galeri".tr,
              buttonStyle: CustomButtonStyles.fillLime,
              onPressed: () {
                onTapGaleri();
              }),
          Container(
              width: 207.h,
              decoration: AppDecoration.fillLime,
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                        height: 40.v,
                        child: VerticalDivider(
                            width: 1.h,
                            thickness: 1.v,
                            color: appTheme.black900)),
                    Padding(
                        padding:
                            EdgeInsets.only(top: 9.v, right: 78.h, bottom: 9.v),
                        child: Text("lbl_produk".tr,
                            style: theme.textTheme.bodyMedium))
                  ]))
        ]));
  }

  /// Section Widget
  Widget _buildProfile() {
    return Container(
        height: 212.v,
        padding: EdgeInsets.symmetric(horizontal: 10.h),
        child: Obx(() => ListView.separated(
            scrollDirection: Axis.horizontal,
            separatorBuilder: (context, index) {
              return SizedBox(
                  width: 415.0.h,
                  child: Divider(
                      height: 1.v,
                      thickness: 1.v,
                      color: appTheme.gray30002,
                      indent: 0.5.h,
                      endIndent: 0.5.h));
            },
            itemCount:
                controller.profileModelObj.value.profileItemList.value.length,
            itemBuilder: (context, index) {
              ProfileItemModel model =
                  controller.profileModelObj.value.profileItemList.value[index];
              return ProfileItemWidget(model);
            })));
  }

  /// Section Widget
  Widget _buildProduk() {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 12.h),
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Expanded(
              child: Container(
                  margin: EdgeInsets.only(right: 10.h),
                  decoration: AppDecoration.fillBluegray10002,
                  child: Column(children: [
                    Container(
                        height: 136.v,
                        width: 185.h,
                        decoration: BoxDecoration(color: appTheme.gray60002)),
                    SizedBox(height: 8.v),
                    Padding(
                        padding: EdgeInsets.only(left: 12.h, right: 8.h),
                        child: _buildRpCounter(
                            rpCounter: "lbl_sapi_potong".tr,
                            jantanDewasa: "lbl_400_700_kg".tr)),
                    SizedBox(height: 13.v),
                    Padding(
                        padding: EdgeInsets.only(left: 12.h, right: 8.h),
                        child: _buildRpCounter(
                            rpCounter: "lbl_rp_18_000_000".tr,
                            jantanDewasa: "lbl_jantan_dewasa".tr)),
                    SizedBox(height: 9.v)
                  ]))),
          Expanded(
              child: Container(
                  margin: EdgeInsets.only(left: 10.h),
                  decoration: AppDecoration.fillBluegray10002,
                  child: Column(children: [
                    Container(
                        height: 136.v,
                        width: 185.h,
                        decoration: BoxDecoration(color: appTheme.gray60002)),
                    SizedBox(height: 8.v),
                    Padding(
                        padding: EdgeInsets.only(left: 12.h, right: 8.h),
                        child: _buildRpCounter(
                            rpCounter: "lbl_sapi_potong".tr,
                            jantanDewasa: "lbl_400_700_kg".tr)),
                    SizedBox(height: 13.v),
                    Padding(
                        padding: EdgeInsets.only(left: 12.h, right: 8.h),
                        child: _buildRpCounter(
                            rpCounter: "lbl_rp_18_000_000".tr,
                            jantanDewasa: "lbl_jantan_dewasa".tr)),
                    SizedBox(height: 9.v)
                  ])))
        ]));
  }

  /// Section Widget
  Widget _buildBottomBar() {
    return CustomBottomBar(onChanged: (BottomBarEnum type) {
      Get.toNamed(getCurrentRoute(type), id: 1);
    });
  }

  /// Common widget
  Widget _buildJenisKelamin({
    required String jenisKelamin,
    required String semua,
  }) {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      Text(jenisKelamin,
          style:
              CustomTextStyles.bodyMedium13.copyWith(color: appTheme.black900)),
      Spacer(),
      Text(semua,
          style:
              CustomTextStyles.bodyMedium13.copyWith(color: appTheme.black900)),
      CustomImageView(
          imagePath: ImageConstant.imgArrowDownBlack900,
          height: 20.adaptSize,
          width: 20.adaptSize,
          margin: EdgeInsets.only(left: 6.h))
    ]);
  }

  /// Common widget
  Widget _buildRpCounter({
    required String rpCounter,
    required String jantanDewasa,
  }) {
    return SizedBox(
        width: 165.h,
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Text(rpCounter,
              textAlign: TextAlign.center,
              style: CustomTextStyles.bodyMedium13
                  .copyWith(color: appTheme.black900)),
          Padding(
              padding: EdgeInsets.symmetric(vertical: 4.v),
              child: Text(jantanDewasa,
                  textAlign: TextAlign.center,
                  style: CustomTextStyles.bodySmall8
                      .copyWith(color: appTheme.black900)))
        ]));
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

  /// Navigates to the berandaScreen when the action is triggered.
  onTapRewind() {
    Get.toNamed(
      AppRoutes.berandaScreen,
    );
  }

  /// Navigates to the profileTwoTabContainerScreen when the action is triggered.
  onTapGaleri() {
    Get.toNamed(
      AppRoutes.profileTwoTabContainerScreen,
    );
  }
}
