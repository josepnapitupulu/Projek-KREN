import 'controller/hewan_kondisi_hewan_controller.dart';
import 'package:flutter/material.dart';
import 'package:example/core/app_export.dart';
import 'package:example/widgets/app_bar/appbar_leading_image.dart';
import 'package:example/widgets/app_bar/appbar_subtitle_four.dart';
import 'package:example/widgets/app_bar/appbar_subtitle_three.dart';
import 'package:example/widgets/app_bar/custom_app_bar.dart';
import 'package:example/widgets/custom_checkbox_button.dart';
import 'package:example/widgets/custom_elevated_button.dart';

// ignore_for_file: must_be_immutable
class HewanKondisiHewanScreen extends GetWidget<HewanKondisiHewanController> {
  const HewanKondisiHewanScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(),
        body: SizedBox(
          width: mediaQueryData.size.width,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Divider(
                  color: appTheme.blueGray10003,
                  indent: 29.h,
                  endIndent: 34.h,
                ),
                SizedBox(height: 19.v),
                Align(
                  alignment: Alignment.centerLeft,
                  child: SizedBox(
                    width: 124.h,
                    child: Divider(
                      color: appTheme.blueGray10001,
                      indent: 38.h,
                    ),
                  ),
                ),
                SizedBox(height: 27.v),
                _buildSehat(),
                SizedBox(height: 10.v),
                Divider(
                  color: appTheme.blueGray10003,
                  indent: 35.h,
                  endIndent: 38.h,
                ),
                SizedBox(height: 11.v),
                _buildSakit(),
                SizedBox(height: 6.v),
                Divider(
                  color: appTheme.blueGray10003,
                  indent: 38.h,
                  endIndent: 35.h,
                ),
                SizedBox(height: 9.v),
                _buildPotongPaksa(),
                SizedBox(height: 3.v),
                Divider(
                  color: appTheme.blueGray10003,
                  indent: 38.h,
                  endIndent: 35.h,
                ),
                SizedBox(height: 10.v),
                _buildMati(),
                SizedBox(height: 2.v),
                Divider(
                  color: appTheme.blueGray10003,
                  indent: 38.h,
                  endIndent: 35.h,
                ),
                SizedBox(height: 517.v),
                _buildButton(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
      height: 45.v,
      leadingWidth: 53.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgSolidArrowCircleLeft,
        margin: EdgeInsets.only(
          left: 29.h,
          top: 9.v,
          bottom: 9.v,
        ),
      ),
      title: AppbarSubtitleThree(
        text: "lbl_kondisi_hewan3".tr,
        margin: EdgeInsets.only(left: 17.h),
      ),
      actions: [
        AppbarSubtitleFour(
          text: "lbl_reset".tr,
          margin: EdgeInsets.fromLTRB(43.h, 16.v, 43.h, 9.v),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildSehat() {
    return Align(
      alignment: Alignment.centerRight,
      child: Padding(
        padding: EdgeInsets.only(
          left: 73.h,
          right: 51.h,
        ),
        child: Obx(
          () => CustomCheckboxButton(
            alignment: Alignment.centerRight,
            width: 290.h,
            text: "lbl_sehat".tr,
            value: controller.sehat.value,
            isRightCheck: true,
            onChange: (value) {
              controller.sehat.value = value;
            },
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildSakit() {
    return Align(
      alignment: Alignment.centerRight,
      child: Padding(
        padding: EdgeInsets.only(
          left: 73.h,
          right: 51.h,
        ),
        child: Obx(
          () => CustomCheckboxButton(
            alignment: Alignment.centerRight,
            width: 290.h,
            text: "lbl_sakit2".tr,
            value: controller.sakit.value,
            isRightCheck: true,
            onChange: (value) {
              controller.sakit.value = value;
            },
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildPotongPaksa() {
    return Align(
      alignment: Alignment.centerRight,
      child: Padding(
        padding: EdgeInsets.only(
          left: 73.h,
          right: 51.h,
        ),
        child: Obx(
          () => CustomCheckboxButton(
            alignment: Alignment.centerRight,
            width: 290.h,
            text: "lbl_potong_paksa".tr,
            value: controller.potongPaksa.value,
            isRightCheck: true,
            onChange: (value) {
              controller.potongPaksa.value = value;
            },
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildMati() {
    return Padding(
      padding: EdgeInsets.only(
        left: 70.h,
        right: 51.h,
      ),
      child: Obx(
        () => CustomCheckboxButton(
          width: 293.h,
          text: "lbl_mati".tr,
          value: controller.mati.value,
          isRightCheck: true,
          onChange: (value) {
            controller.mati.value = value;
          },
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildButton() {
    return Container(
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
            text: "lbl_terapkan_filter".tr,
            margin: EdgeInsets.only(left: 10.h),
            buttonStyle: CustomButtonStyles.fillPrimaryTL9,
            buttonTextStyle: CustomTextStyles.bodyMediumOnErrorContainer_1,
          ),
        ],
      ),
    );
  }
}
