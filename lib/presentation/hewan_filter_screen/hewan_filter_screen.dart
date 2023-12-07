import 'controller/hewan_filter_controller.dart';
import 'package:flutter/material.dart';
import 'package:example/core/app_export.dart';
import 'package:example/widgets/app_bar/appbar_leading_image.dart';
import 'package:example/widgets/app_bar/appbar_subtitle_four.dart';
import 'package:example/widgets/app_bar/appbar_subtitle_three.dart';
import 'package:example/widgets/app_bar/custom_app_bar.dart';
import 'package:example/widgets/custom_elevated_button.dart';
import 'package:example/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class HewanFilterScreen extends GetWidget<HewanFilterController> {
  const HewanFilterScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(),
        body: SizedBox(
          width: mediaQueryData.size.width,
          child: SingleChildScrollView(
            child: _buildHewanFILTER(),
          ),
        ),
        bottomNavigationBar: _buildTerapkanFilter(),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
      height: 43.v,
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
        text: "lbl_filter".tr,
        margin: EdgeInsets.only(left: 16.h),
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
  Widget _buildHewanFILTER() {
    return Padding(
      padding: EdgeInsets.only(
        left: 29.h,
        right: 34.h,
        bottom: 5.v,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Divider(
            color: appTheme.blueGray10003,
          ),
          SizedBox(height: 19.v),
          SizedBox(
            width: 96.h,
            child: Divider(
              color: appTheme.blueGray10001,
              indent: 10.h,
            ),
          ),
          SizedBox(height: 11.v),
          Padding(
            padding: EdgeInsets.only(
              left: 4.h,
              right: 20.h,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.only(bottom: 1.v),
                  child: Text(
                    "lbl_jenis_hewan3".tr,
                    style: theme.textTheme.bodyMedium,
                  ),
                ),
                Text(
                  "lbl".tr,
                  style: theme.textTheme.bodyMedium,
                ),
              ],
            ),
          ),
          SizedBox(height: 35.v),
          Divider(
            color: appTheme.blueGray10003,
            indent: 5.h,
            endIndent: 4.h,
          ),
          SizedBox(height: 35.v),
          Align(
            alignment: Alignment.center,
            child: Padding(
              padding: EdgeInsets.only(
                left: 7.h,
                right: 17.h,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 34.v,
                    width: 100.h,
                    child: Stack(
                      alignment: Alignment.bottomLeft,
                      children: [
                        Align(
                          alignment: Alignment.topCenter,
                          child: Text(
                            "lbl_rentang_bobot".tr,
                            style: theme.textTheme.bodyMedium,
                          ),
                        ),
                        Align(
                          alignment: Alignment.bottomLeft,
                          child: Padding(
                            padding: EdgeInsets.only(left: 5.h),
                            child: Text(
                              "lbl_minimal".tr,
                              style: CustomTextStyles.bodySmallGray600,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Spacer(
                    flex: 21,
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgUserInterfaceGray60001,
                    height: 10.adaptSize,
                    width: 10.adaptSize,
                    margin: EdgeInsets.only(top: 25.v),
                  ),
                  Spacer(
                    flex: 22,
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 20.v),
                    child: Text(
                      "lbl_maksimal".tr,
                      style: CustomTextStyles.bodySmallGray60001,
                    ),
                  ),
                  Spacer(
                    flex: 55,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Align(
                        alignment: Alignment.centerRight,
                        child: Text(
                          "lbl".tr,
                          style: theme.textTheme.bodyMedium,
                        ),
                      ),
                      SizedBox(height: 4.v),
                      CustomImageView(
                        imagePath: ImageConstant.imgUserInterfaceGray60001,
                        height: 10.adaptSize,
                        width: 10.adaptSize,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 19.v),
          Padding(
            padding: EdgeInsets.only(
              left: 7.h,
              right: 24.h,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(top: 1.v),
                    child: Divider(
                      color: appTheme.blueGray10003,
                      endIndent: 20.h,
                    ),
                  ),
                ),
                Expanded(
                  child: Divider(
                    color: appTheme.blueGray10003,
                    indent: 20.h,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 133.v),
          Align(
            alignment: Alignment.center,
            child: Divider(
              color: appTheme.blueGray10003,
              indent: 7.h,
              endIndent: 14.h,
            ),
          ),
          SizedBox(height: 19.v),
          Padding(
            padding: EdgeInsets.only(left: 12.h),
            child: Text(
              "lbl_jenis_kelamin".tr,
              style: theme.textTheme.bodyMedium,
            ),
          ),
          SizedBox(height: 13.v),
          Align(
            alignment: Alignment.center,
            child: Padding(
              padding: EdgeInsets.only(
                left: 16.h,
                right: 24.h,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "lbl_jantan".tr,
                    style: theme.textTheme.bodyMedium,
                  ),
                  Container(
                    height: 17.v,
                    width: 18.h,
                    margin: EdgeInsets.only(bottom: 3.v),
                    decoration: BoxDecoration(
                      color: appTheme.blueGray10001,
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 14.v),
          Container(
            height: 32.v,
            width: 343.h,
            margin: EdgeInsets.only(left: 2.h),
            child: Stack(
              alignment: Alignment.topRight,
              children: [
                CustomTextFormField(
                  width: 343.h,
                  controller: controller.hargaController,
                  hintText: "lbl_betina".tr,
                  textInputAction: TextInputAction.done,
                  alignment: Alignment.center,
                  contentPadding: EdgeInsets.symmetric(horizontal: 15.h),
                  borderDecoration: TextFormFieldStyleHelper.underLineBlueGray1,
                ),
                Align(
                  alignment: Alignment.topRight,
                  child: Container(
                    height: 17.v,
                    width: 18.h,
                    margin: EdgeInsets.only(right: 17.h),
                    decoration: BoxDecoration(
                      color: appTheme.blueGray10001,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildTerapkanFilter() {
    return CustomElevatedButton(
      height: 38.v,
      text: "lbl_terapkan_filter".tr,
      margin: EdgeInsets.only(
        left: 27.h,
        right: 17.h,
        bottom: 21.v,
      ),
      buttonStyle: CustomButtonStyles.fillPrimaryTL9,
      buttonTextStyle: CustomTextStyles.bodyMediumOnErrorContainer_1,
    );
  }
}
