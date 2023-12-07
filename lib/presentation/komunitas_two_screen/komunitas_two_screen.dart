import '../komunitas_two_screen/widgets/komunitastwo_item_widget.dart';
import 'controller/komunitas_two_controller.dart';
import 'models/komunitastwo_item_model.dart';
import 'package:flutter/material.dart';
import 'package:example/core/app_export.dart';
import 'package:example/widgets/app_bar/appbar_leading_image.dart';
import 'package:example/widgets/app_bar/appbar_subtitle_two.dart';
import 'package:example/widgets/app_bar/custom_app_bar.dart';
import 'package:example/widgets/custom_elevated_button.dart';
import 'package:example/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class KomunitasTwoScreen extends GetWidget<KomunitasTwoController> {
  const KomunitasTwoScreen({Key? key})
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
              _buildAtas(),
              SizedBox(height: 12.v),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 21.h),
                        child: CustomTextFormField(
                          controller: controller.cariController,
                          hintText: "lbl_cari".tr,
                          hintStyle: CustomTextStyles.bodySmallBlack900,
                          textInputAction: TextInputAction.done,
                          prefix: Container(
                            margin: EdgeInsets.fromLTRB(11.h, 5.v, 8.h, 6.v),
                            child: CustomImageView(
                              imagePath:
                                  ImageConstant.imgSearchPrimarycontainer,
                              height: 22.v,
                              width: 21.h,
                            ),
                          ),
                          prefixConstraints: BoxConstraints(
                            maxHeight: 33.v,
                          ),
                          borderDecoration:
                              TextFormFieldStyleHelper.fillPrimary,
                          filled: true,
                          fillColor: theme.colorScheme.primary.withOpacity(0.5),
                        ),
                      ),
                      SizedBox(height: 10.v),
                      _buildLineThree(),
                      _buildKomunitasTwo(),
                      SizedBox(height: 50.v),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: EdgeInsets.only(left: 46.h),
                          child: Text(
                            "msg_rekomendasi_grup".tr,
                            style: theme.textTheme.bodyMedium,
                          ),
                        ),
                      ),
                      SizedBox(height: 19.v),
                      _buildPersonal(),
                      SizedBox(height: 19.v),
                      _buildPersonal1(),
                      SizedBox(height: 34.v),
                      _buildPersonal2(),
                      SizedBox(height: 46.v),
                      _buildButton(),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildAtas() {
    return Container(
      decoration: AppDecoration.fillPrimary,
      child: Column(
        children: [
          SizedBox(height: 7.v),
          CustomAppBar(
            leadingWidth: 49.h,
            leading: AppbarLeadingImage(
              imagePath: ImageConstant.imgRewindOnerrorcontainer,
              margin: EdgeInsets.only(
                left: 17.h,
                bottom: 1.v,
              ),
            ),
            title: AppbarSubtitleTwo(
              text: "lbl_komunitas".tr,
              margin: EdgeInsets.only(left: 11.h),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildLineThree() {
    return SizedBox(
      height: 69.v,
      width: double.maxFinite,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              decoration: AppDecoration.fillGray100,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Divider(),
                  SizedBox(height: 14.v),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 22.h,
                      right: 28.h,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 25.adaptSize,
                          width: 25.adaptSize,
                          decoration: BoxDecoration(
                            color: appTheme.greenA700,
                            borderRadius: BorderRadius.circular(
                              12.h,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: 15.h,
                            top: 2.v,
                          ),
                          child: Text(
                            "lbl_ternak_xxx2".tr,
                            style: theme.textTheme.bodyMedium,
                          ),
                        ),
                        Spacer(),
                        Padding(
                          padding: EdgeInsets.only(bottom: 3.v),
                          child: Text(
                            "lbl3".tr,
                            style: theme.textTheme.bodyMedium,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 14.v),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Container(
              decoration: AppDecoration.fillGray100,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Divider(),
                  SizedBox(height: 18.v),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 39.h,
                      right: 33.h,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgChatChatBlack900,
                          height: 24.adaptSize,
                          width: 24.adaptSize,
                          margin: EdgeInsets.only(top: 4.v),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 17.h),
                          child: Text(
                            "lbl_babi".tr,
                            style: theme.textTheme.titleLarge,
                          ),
                        ),
                        Spacer(),
                        Padding(
                          padding: EdgeInsets.only(
                            top: 4.v,
                            bottom: 2.v,
                          ),
                          child: Text(
                            "lbl".tr,
                            style: theme.textTheme.bodyMedium,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 21.v),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildKomunitasTwo() {
    return Obx(
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
        itemCount: controller
            .komunitasTwoModelObj.value.komunitastwoItemList.value.length,
        itemBuilder: (context, index) {
          KomunitastwoItemModel model = controller
              .komunitasTwoModelObj.value.komunitastwoItemList.value[index];
          return KomunitastwoItemWidget(
            model,
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildPersonal() {
    return Container(
      decoration: AppDecoration.fillGray100,
      child: Column(
        children: [
          Divider(),
          SizedBox(height: 16.v),
          Padding(
            padding: EdgeInsets.only(
              left: 35.h,
              right: 29.h,
            ),
            child: _buildPengubuyanBabi(
              pengubuyanBabi: "msg_pengubuyan_babi".tr,
            ),
          ),
          SizedBox(height: 16.v),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildPersonal1() {
    return Container(
      height: 69.v,
      width: double.maxFinite,
      decoration: AppDecoration.fillGray100,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: SizedBox(
              width: double.maxFinite,
              child: Divider(),
            ),
          ),
          _buildPengubuyanBabi(
            pengubuyanBabi: "msg_pengubuyan_babi".tr,
          ),
          Align(
            alignment: Alignment.center,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Divider(),
                SizedBox(height: 13.v),
                Padding(
                  padding: EdgeInsets.only(
                    left: 32.h,
                    right: 29.h,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgEllipse21,
                        height: 40.adaptSize,
                        width: 40.adaptSize,
                        radius: BorderRadius.circular(
                          20.h,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 8.h,
                          top: 6.v,
                          bottom: 5.v,
                        ),
                        child: Text(
                          "lbl_bovine_unity".tr,
                          style: theme.textTheme.titleLarge,
                        ),
                      ),
                      Spacer(),
                      CustomImageView(
                        imagePath: ImageConstant.imgChatAddChat,
                        height: 24.adaptSize,
                        width: 24.adaptSize,
                        margin: EdgeInsets.symmetric(vertical: 8.v),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 13.v),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildPersonal2() {
    return Container(
      margin: EdgeInsets.only(left: 5.h),
      decoration: AppDecoration.fillGray100,
      child: Column(
        children: [
          Divider(),
          SizedBox(height: 18.v),
          Align(
            alignment: Alignment.centerRight,
            child: Padding(
              padding: EdgeInsets.only(
                left: 80.h,
                right: 24.h,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "msg_horned_homestead".tr,
                    style: theme.textTheme.titleLarge,
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgChatAddChat,
                    height: 24.adaptSize,
                    width: 24.adaptSize,
                    margin: EdgeInsets.only(top: 4.v),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 21.v),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildButton() {
    return Container(
      decoration: AppDecoration.fillGray200,
      child: Container(
        width: double.maxFinite,
        padding: EdgeInsets.symmetric(
          horizontal: 17.h,
          vertical: 21.v,
        ),
        decoration: AppDecoration.fillOnErrorContainer,
        child: Column(
          children: [
            SizedBox(height: 8.v),
            CustomElevatedButton(
              height: 38.v,
              text: "lbl_lihat_semua".tr,
              margin: EdgeInsets.only(left: 10.h),
              buttonStyle: CustomButtonStyles.fillPrimaryTL9,
              buttonTextStyle: CustomTextStyles.bodyMediumOnErrorContainer_1,
            ),
          ],
        ),
      ),
    );
  }

  /// Common widget
  Widget _buildPengubuyanBabi({required String pengubuyanBabi}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomImageView(
          imagePath: ImageConstant.imgEllipse234x34,
          height: 34.adaptSize,
          width: 34.adaptSize,
          radius: BorderRadius.circular(
            17.h,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: 11.h,
            top: 3.v,
            bottom: 2.v,
          ),
          child: Text(
            pengubuyanBabi,
            style: theme.textTheme.titleLarge!.copyWith(
              color: appTheme.black900,
            ),
          ),
        ),
        CustomImageView(
          imagePath: ImageConstant.imgChatAddChat,
          height: 24.adaptSize,
          width: 24.adaptSize,
          margin: EdgeInsets.only(
            left: 27.h,
            top: 5.v,
            bottom: 5.v,
          ),
        ),
      ],
    );
  }
}
