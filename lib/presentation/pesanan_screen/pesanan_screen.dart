import 'controller/pesanan_controller.dart';
import 'package:flutter/material.dart';
import 'package:example/core/app_export.dart';
import 'package:example/widgets/app_bar/appbar_leading_image.dart';
import 'package:example/widgets/app_bar/appbar_subtitle_two.dart';
import 'package:example/widgets/app_bar/custom_app_bar.dart';
import 'package:example/widgets/custom_outlined_button.dart';

// ignore_for_file: must_be_immutable
class PesananScreen extends GetWidget<PesananController> {
  const PesananScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              _buildAtas(),
              SizedBox(height: 8.v),
              Expanded(
                child: SingleChildScrollView(
                  child: Padding(
                    padding: EdgeInsets.only(bottom: 5.v),
                    child: Column(
                      children: [
                        _buildFrame(
                          yohannaSihotang: "msg_yohanna_sihotang".tr,
                        ),
                        _buildSapiPotong(
                          sapiPotong: "lbl_sapi_potong".tr,
                          weight: "lbl_400_700_kg".tr,
                          rpCounter: "lbl_rp_18_000_000".tr,
                        ),
                        _buildFrame1(
                          produkCounter: "lbl_1_produk".tr,
                          rpCounter: "lbl_rp_18_000_000".tr,
                        ),
                        _buildFrame4(),
                        _buildFrame(
                          yohannaSihotang: "msg_yohanna_sihotang".tr,
                        ),
                        _buildSapiPotong(
                          sapiPotong: "lbl_sapi_potong".tr,
                          weight: "lbl_400_700_kg".tr,
                          rpCounter: "lbl_rp_18_000_000".tr,
                        ),
                        _buildFrame1(
                          produkCounter: "lbl_1_produk".tr,
                          rpCounter: "lbl_rp_18_000_000".tr,
                        ),
                        _buildFrame7(),
                        SizedBox(height: 62.v),
                        _buildFrame(
                          yohannaSihotang: "msg_yohanna_sihotang".tr,
                        ),
                        _buildSapiPotong(
                          sapiPotong: "lbl_sapi_potong".tr,
                          weight: "lbl_400_700_kg".tr,
                          rpCounter: "lbl_rp_18_000_000".tr,
                        ),
                        _buildFrame1(
                          produkCounter: "lbl_1_produk".tr,
                          rpCounter: "lbl_rp_18_000_000".tr,
                        ),
                        _buildFrame10(),
                      ],
                    ),
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
      padding: EdgeInsets.symmetric(vertical: 5.v),
      decoration: AppDecoration.fillPrimary,
      child: Column(
        children: [
          SizedBox(height: 17.v),
          CustomAppBar(
            leadingWidth: 51.h,
            leading: AppbarLeadingImage(
              imagePath: ImageConstant.imgRewindOnerrorcontainer,
              margin: EdgeInsets.only(
                left: 19.h,
                bottom: 1.v,
              ),
            ),
            title: AppbarSubtitleTwo(
              text: "lbl_pesanan".tr,
              margin: EdgeInsets.only(left: 16.h),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildFrame4() {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.fromLTRB(9.h, 3.v, 9.h, 2.v),
      decoration: AppDecoration.outlinePrimary,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(
              left: 10.h,
              top: 3.v,
              bottom: 10.v,
            ),
            child: Text(
              "lbl_terima".tr,
              style: CustomTextStyles.bodySmallGray500,
            ),
          ),
          Card(
            clipBehavior: Clip.antiAlias,
            elevation: 0,
            margin: EdgeInsets.all(0),
            color: theme.colorScheme.primary,
            shape: RoundedRectangleBorder(
              side: BorderSide(
                color: theme.colorScheme.onErrorContainer.withOpacity(1),
                width: 1.h,
              ),
              borderRadius: BorderRadiusStyle.roundedBorder12,
            ),
            child: Container(
              height: 28.v,
              width: 116.h,
              padding: EdgeInsets.symmetric(
                horizontal: 40.h,
                vertical: 4.v,
              ),
              decoration: AppDecoration.outlineOnErrorContainer.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder12,
              ),
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: Text(
                      "lbl_detail".tr,
                      style: CustomTextStyles.bodySmallOnErrorContainer_1,
                    ),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Text(
                      "lbl_detail".tr,
                      style: CustomTextStyles.bodySmallOnErrorContainer_1,
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
  Widget _buildFrame7() {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.fromLTRB(19.h, 2.v, 19.h, 1.v),
      decoration: AppDecoration.outlinePrimary,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(
              top: 3.v,
              bottom: 12.v,
            ),
            child: Text(
              "lbl_tolak".tr,
              style: CustomTextStyles.bodySmallGray500,
            ),
          ),
          CustomOutlinedButton(
            height: 28.v,
            width: 116.h,
            text: "lbl_detail".tr,
            margin: EdgeInsets.only(bottom: 2.v),
            buttonTextStyle: CustomTextStyles.bodySmallOnErrorContainer_1,
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildFrame10() {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.fromLTRB(19.h, 2.v, 19.h, 1.v),
      decoration: AppDecoration.outlinePrimary,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(
              top: 4.v,
              bottom: 11.v,
            ),
            child: Text(
              "lbl_terima2".tr,
              style: CustomTextStyles.bodySmallGray500,
            ),
          ),
          CustomOutlinedButton(
            height: 28.v,
            width: 116.h,
            text: "lbl_detail".tr,
            margin: EdgeInsets.only(bottom: 2.v),
            buttonTextStyle: CustomTextStyles.bodySmallOnErrorContainer_1,
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildFrame({required String yohannaSihotang}) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(
        horizontal: 17.h,
        vertical: 2.v,
      ),
      decoration: AppDecoration.fillGreen300,
      child: Row(
        children: [
          CustomImageView(
            imagePath: ImageConstant.img2b130x24,
            height: 30.v,
            width: 24.h,
            margin: EdgeInsets.only(top: 1.v),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 8.h,
              top: 7.v,
              bottom: 2.v,
            ),
            child: Text(
              yohannaSihotang,
              style: theme.textTheme.bodyMedium!.copyWith(
                color: appTheme.black900,
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildSapiPotong({
    required String sapiPotong,
    required String weight,
    required String rpCounter,
  }) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.only(
        top: 11.v,
        bottom: 10.v,
      ),
      decoration: AppDecoration.outlineOnPrimaryContainer,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgRectangle57,
            height: 52.v,
            width: 70.h,
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 4.v),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: 273.h,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        sapiPotong,
                        style: CustomTextStyles.bodyMediumGray700.copyWith(
                          color: appTheme.gray700,
                        ),
                      ),
                      Text(
                        weight,
                        style: CustomTextStyles.bodySmallGray700_1.copyWith(
                          color: appTheme.gray700,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 4.v),
                Text(
                  rpCounter,
                  style: theme.textTheme.bodyMedium!.copyWith(
                    color: appTheme.black900,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildFrame1({
    required String produkCounter,
    required String rpCounter,
  }) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.fromLTRB(17.h, 3.v, 17.h, 2.v),
      decoration: AppDecoration.outlineOnPrimaryContainer,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.only(
              top: 3.v,
              bottom: 2.v,
            ),
            child: Text(
              produkCounter,
              style: CustomTextStyles.bodySmallGray500.copyWith(
                color: appTheme.gray500,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              top: 3.v,
              right: 6.h,
            ),
            child: Text(
              rpCounter,
              style: CustomTextStyles.bodySmallPrimary.copyWith(
                color: theme.colorScheme.primary,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
