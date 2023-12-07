import '../beranda_one_screen/widgets/berandaone_item_widget.dart';
import 'controller/beranda_one_controller.dart';
import 'models/berandaone_item_model.dart';
import 'package:flutter/material.dart';
import 'package:example/core/app_export.dart';
import 'package:example/presentation/cari_page/cari_page.dart';
import 'package:example/widgets/app_bar/appbar_leading_circleimage.dart';
import 'package:example/widgets/app_bar/appbar_subtitle_five.dart';
import 'package:example/widgets/app_bar/appbar_trailing_image.dart';
import 'package:example/widgets/app_bar/custom_app_bar.dart';
import 'package:example/widgets/custom_bottom_bar.dart';
import 'package:example/widgets/custom_elevated_button.dart';

class BerandaOneScreen extends GetWidget<BerandaOneController> {
  const BerandaOneScreen({Key? key}) : super(key: key);

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
                    SizedBox(height: 29.v),
                    CustomElevatedButton(
                        height: 36.v,
                        width: 150.h,
                        text: "msg_edit_profil_akun".tr,
                        buttonStyle: CustomButtonStyles.fillAmberA),
                    SizedBox(height: 30.v),
                    _buildFrame(),
                    _buildFrame1()
                  ])))
                ])),
            bottomNavigationBar: _buildButton()));
  }

  /// Section Widget
  Widget _buildAtas() {
    return Container(
        decoration: AppDecoration.fillPrimary,
        child: Column(children: [
          SizedBox(height: 28.v),
          CustomAppBar(
              height: 16.v,
              leadingWidth: 52.h,
              leading: AppbarLeadingCircleimage(
                  imagePath: ImageConstant.imgEllipse2,
                  margin: EdgeInsets.only(left: 22.h)),
              title: AppbarSubtitleFive(
                  text: "lbl_taternak".tr, margin: EdgeInsets.only(left: 14.h)),
              actions: [
                AppbarTrailingImage(
                    imagePath: ImageConstant.imgChatChat,
                    margin:
                        EdgeInsets.only(left: 31.h, right: 31.h, bottom: 1.v),
                    onTap: () {
                      onTapChatChat();
                    })
              ])
        ]));
  }

  /// Section Widget
  Widget _buildFrame() {
    return Container(
        width: double.maxFinite,
        decoration: AppDecoration.fillGray,
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Container(
              width: 207.h,
              padding: EdgeInsets.symmetric(horizontal: 30.h, vertical: 9.v),
              decoration: AppDecoration.fillLime,
              child: Text("lbl_galeri".tr, style: theme.textTheme.bodyMedium)),
          SizedBox(
              height: 40.v,
              child: VerticalDivider(
                  width: 1.h, thickness: 1.v, color: appTheme.black900)),
          CustomElevatedButton(
              height: 40.v,
              width: 207.h,
              text: "lbl_produk".tr,
              buttonStyle: CustomButtonStyles.fillLime)
        ]));
  }

  /// Section Widget
  Widget _buildFrame1() {
    return Container(
        decoration: AppDecoration.fillBlueGray,
        child: Obx(() => GridView.builder(
            shrinkWrap: true,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                mainAxisExtent: 139.v,
                crossAxisCount: 3,
                mainAxisSpacing: 0.h,
                crossAxisSpacing: 0.h),
            physics: NeverScrollableScrollPhysics(),
            itemCount: controller
                .berandaOneModelObj.value.berandaoneItemList.value.length,
            itemBuilder: (context, index) {
              BerandaoneItemModel model = controller
                  .berandaOneModelObj.value.berandaoneItemList.value[index];
              return BerandaoneItemWidget(model);
            })));
  }

  /// Section Widget
  Widget _buildButton() {
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

  /// Navigates to the chatScreen when the action is triggered.
  onTapChatChat() {
    Get.toNamed(
      AppRoutes.chatScreen,
    );
  }
}
