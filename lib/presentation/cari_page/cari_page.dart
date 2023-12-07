import '../cari_page/widgets/cari_item_widget.dart';
import 'controller/cari_controller.dart';
import 'models/cari_item_model.dart';
import 'models/cari_model.dart';
import 'package:flutter/material.dart';
import 'package:example/core/app_export.dart';
import 'package:example/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class CariPage extends StatelessWidget {
  CariPage({Key? key}) : super(key: key);

  CariController controller = Get.put(CariController(CariModel().obs));

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: Container(
                width: double.maxFinite,
                decoration: AppDecoration.fillOnErrorContainer,
                child: SingleChildScrollView(
                    child: Padding(
                        padding: EdgeInsets.only(
                            left: 21.h, right: 10.h, bottom: 3.v, top: 15.h),
                        child: Column(children: [
                          Padding(
                              padding: EdgeInsets.only(right: 10.h),
                              child: CustomTextFormField(
                                  controller: controller.cariController,
                                  hintText: "msg_kamu_ingin_mencari".tr,
                                  hintStyle: CustomTextStyles.bodySmallBlack900,
                                  textInputAction: TextInputAction.done,
                                  prefix: Container(
                                      margin: EdgeInsets.fromLTRB(
                                          11.h, 5.v, 5.h, 6.v),
                                      child: CustomImageView(
                                          imagePath: ImageConstant
                                              .imgSearchPrimarycontainer,
                                          height: 22.v,
                                          width: 21.h)),
                                  prefixConstraints:
                                      BoxConstraints(maxHeight: 33.v),
                                  borderDecoration:
                                      TextFormFieldStyleHelper.fillPrimary,
                                  filled: true,
                                  fillColor: theme.colorScheme.primary
                                      .withOpacity(0.5))),
                          SizedBox(height: 50.v),
                          _buildCari(),
                          SizedBox(height: 42.v),
                          _buildText()
                        ]))
                        ))));
  }

  /// Section Widget
  Widget _buildCari() {
    return SizedBox(
        height: 70.v,
        child: Obx(() => ListView.separated(
            padding: EdgeInsets.only(left: 10.h, right: 19.h),
            scrollDirection: Axis.horizontal,
            separatorBuilder: (context, index) {
              return SizedBox(width: 37.h);
            },
            itemCount: controller.cariModelObj.value.cariItemList.value.length,
            itemBuilder: (context, index) {
              CariItemModel model =
                  controller.cariModelObj.value.cariItemList.value[index];
              return CariItemWidget(model, onTapImgHewan: () {
                onTapImgHewan();
              });
            })));
  }

  /// Section Widget
  Widget _buildText() {
    return SizedBox(
        height: 235.v,
        width: 375.h,
        child: Stack(alignment: Alignment.topCenter, children: [
          Align(
              alignment: Alignment.bottomCenter,
              child: SizedBox(
                  height: 211.v,
                  width: 375.h,
                  child: Stack(alignment: Alignment.bottomCenter, children: [
                    Align(
                        alignment: Alignment.center,
                        child: Container(
                            margin: EdgeInsets.only(left: 1.h, right: 3.h),
                            padding: EdgeInsets.symmetric(
                                horizontal: 200.h, vertical: 7.v),
                            decoration: AppDecoration.fillGreen,
                            child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  SizedBox(height: 173.v),
                                  CustomImageView(
                                      imagePath:
                                          ImageConstant.imgMonochromeTriangle,
                                      height: 24.adaptSize,
                                      width: 24.adaptSize)
                                ]))),
                    Align(
                        alignment: Alignment.bottomCenter,
                        child: Padding(
                            padding: EdgeInsets.only(bottom: 73.v),
                            child: Text("msg".tr,
                                textAlign: TextAlign.justify,
                                style:
                                    CustomTextStyles.titleLargeBluegray10003))),
                    Align(
                        alignment: Alignment.bottomCenter,
                        child: Padding(
                            padding: EdgeInsets.only(bottom: 37.v),
                            child: Text("msg".tr,
                                textAlign: TextAlign.justify,
                                style:
                                    CustomTextStyles.titleLargeBluegray10003))),
                    Align(
                        alignment: Alignment.topCenter,
                        child: Padding(
                            padding: EdgeInsets.only(top: 50.v),
                            child: Text("msg".tr,
                                textAlign: TextAlign.justify,
                                style:
                                    CustomTextStyles.titleLargeBluegray10003))),
                    Align(
                        alignment: Alignment.topCenter,
                        child: Padding(
                            padding: EdgeInsets.only(top: 83.v),
                            child: Text("msg".tr,
                                textAlign: TextAlign.justify,
                                style:
                                    CustomTextStyles.titleLargeBluegray10003))),
                    Align(
                        alignment: Alignment.topLeft,
                        child: Padding(
                            padding: EdgeInsets.only(left: 20.h, top: 38.v),
                            child: Text("lbl_domba".tr,
                                style: theme.textTheme.bodyMedium))),
                    Align(
                        alignment: Alignment.topRight,
                        child: Padding(
                            padding: EdgeInsets.only(top: 36.v, right: 44.h),
                            child: Text("lbl_rp_56_000".tr,
                                style: theme.textTheme.bodyMedium))),
                    Align(
                        alignment: Alignment.topRight,
                        child: Padding(
                            padding: EdgeInsets.only(top: 75.v, right: 44.h),
                            child: Text("lbl_rp_56_000".tr,
                                style: theme.textTheme.bodyMedium))),
                    Align(
                        alignment: Alignment.bottomRight,
                        child: Padding(
                            padding: EdgeInsets.only(right: 44.h, bottom: 83.v),
                            child: Text("lbl_rp_56_000".tr,
                                style: theme.textTheme.bodyMedium))),
                    Align(
                        alignment: Alignment.bottomRight,
                        child: Padding(
                            padding: EdgeInsets.only(right: 44.h, bottom: 53.v),
                            child: Text("lbl_rp_56_000".tr,
                                style: theme.textTheme.bodyMedium))),
                    Align(
                        alignment: Alignment.bottomCenter,
                        child: Padding(
                            padding:
                                EdgeInsets.fromLTRB(20.h, 173.v, 23.h, 15.v),
                            child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Padding(
                                      padding: EdgeInsets.only(bottom: 3.v),
                                      child: Text("lbl_babi".tr,
                                          style: theme.textTheme.bodyMedium)),
                                  Spacer(),
                                  Padding(
                                      padding: EdgeInsets.only(top: 2.v),
                                      child: Text("lbl_rp_56_000".tr,
                                          style: theme.textTheme.bodyMedium)),
                                  Padding(
                                      padding: EdgeInsets.only(left: 14.h),
                                      child: Text("lbl".tr,
                                          style: theme.textTheme.bodyMedium))
                                ]))),
                    Align(
                        alignment: Alignment.topLeft,
                        child: Padding(
                            padding: EdgeInsets.only(left: 20.h, top: 73.v),
                            child: Text("lbl_kerbau".tr,
                                style: theme.textTheme.bodyMedium))),
                    Align(
                        alignment: Alignment.bottomLeft,
                        child: Padding(
                            padding: EdgeInsets.only(left: 20.h, bottom: 82.v),
                            child: Text("lbl_lembu".tr,
                                style: theme.textTheme.bodyMedium))),
                    Align(
                        alignment: Alignment.bottomLeft,
                        child: Padding(
                            padding: EdgeInsets.only(left: 20.h, bottom: 53.v),
                            child: Text("lbl_sapi".tr,
                                style: theme.textTheme.bodyMedium))),
                    CustomImageView(
                        imagePath: ImageConstant.imgMonochromeTriangle,
                        height: 24.adaptSize,
                        width: 24.adaptSize,
                        alignment: Alignment.topRight,
                        margin: EdgeInsets.only(top: 35.v, right: 137.h)),
                    CustomImageView(
                        imagePath: ImageConstant.imgArrowDown,
                        height: 19.v,
                        width: 29.h,
                        alignment: Alignment.topRight,
                        margin: EdgeInsets.only(top: 74.v, right: 135.h)),
                    CustomImageView(
                        imagePath: ImageConstant.imgArrowDown,
                        height: 19.v,
                        width: 29.h,
                        alignment: Alignment.bottomRight,
                        margin: EdgeInsets.only(right: 135.h, bottom: 80.v)),
                    CustomImageView(
                        imagePath: ImageConstant.imgMonochromeTriangle,
                        height: 24.adaptSize,
                        width: 24.adaptSize,
                        alignment: Alignment.bottomRight,
                        margin: EdgeInsets.only(right: 139.h, bottom: 48.v)),
                    Align(
                        alignment: Alignment.topRight,
                        child: Padding(
                            padding: EdgeInsets.only(top: 35.v, right: 23.h),
                            child: Text("lbl".tr,
                                style: theme.textTheme.bodyMedium))),
                    Align(
                        alignment: Alignment.topRight,
                        child: Padding(
                            padding: EdgeInsets.only(top: 70.v, right: 23.h),
                            child: Text("lbl".tr,
                                style: theme.textTheme.bodyMedium))),
                    Align(
                        alignment: Alignment.bottomRight,
                        child: Padding(
                            padding: EdgeInsets.only(right: 23.h, bottom: 82.v),
                            child: Text("lbl".tr,
                                style: theme.textTheme.bodyMedium))),
                    Align(
                        alignment: Alignment.bottomRight,
                        child: Padding(
                            padding: EdgeInsets.only(right: 23.h, bottom: 53.v),
                            child: Text("lbl".tr,
                                style: theme.textTheme.bodyMedium)))
                  ]))),
          Align(
              alignment: Alignment.topCenter,
              child: Padding(
                  padding: EdgeInsets.only(right: 5.h),
                  child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                            padding: EdgeInsets.only(left: 13.h),
                            child: Text("lbl_update_harga".tr,
                                style: theme.textTheme.bodyMedium)),
                        SizedBox(height: 2.v),
                        SizedBox(
                            height: 25.v,
                            width: 370.h,
                            child:
                                Stack(alignment: Alignment.topRight, children: [
                              Align(
                                  alignment: Alignment.center,
                                  child: Container(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 4.h, vertical: 1.v),
                                      decoration: AppDecoration.fillPrimary
                                          .copyWith(
                                              borderRadius: BorderRadiusStyle
                                                  .circleBorder9),
                                      child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Padding(
                                                padding: EdgeInsets.only(
                                                    left: 11.h, top: 1.v),
                                                child: Text(
                                                    "lbl_harga_produsen".tr,
                                                    style: CustomTextStyles
                                                        .bodyMediumOnErrorContainer_1)),
                                            CustomImageView(
                                                imagePath: ImageConstant
                                                    .imgIconographyCaesarzkn,
                                                height: 8.v,
                                                width: 17.h,
                                                margin: EdgeInsets.only(
                                                    top: 6.v, bottom: 7.v))
                                          ]))),
                              Align(
                                  alignment: Alignment.topRight,
                                  child: Padding(
                                      padding: EdgeInsets.only(right: 47.h),
                                      child: Text("lbl_sumatera_utara".tr,
                                          style: CustomTextStyles
                                              .bodyMediumOnErrorContainer_1)))
                            ]))
                      ])))
        ]));
  }

  /// Navigates to the cariHewanScreen when the action is triggered.
  onTapImgHewan() {
    Get.toNamed(
      AppRoutes.cariHewanScreen,
    );
  }
}
