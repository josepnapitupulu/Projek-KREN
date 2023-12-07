import 'controller/faq_controller.dart';
import 'package:flutter/material.dart';
import 'package:example/core/app_export.dart';
import 'package:example/widgets/app_bar/appbar_title.dart';
import 'package:example/widgets/app_bar/appbar_title_image.dart';
import 'package:example/widgets/app_bar/custom_app_bar.dart';

// ignore_for_file: must_be_immutable
class FaqScreen extends GetWidget<FaqController> {
  const FaqScreen({Key? key})
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
            padding: EdgeInsets.only(top: 20.v),
            child: _buildFAQ(),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
      height: 55.v,
      centerTitle: true,
      title: SizedBox(
        height: 55.v,
        width: double.maxFinite,
        child: Stack(
          alignment: Alignment.center,
          children: [
            AppbarTitleImage(
              imagePath: ImageConstant.imgArrow1,
              margin: EdgeInsets.fromLTRB(13.h, 27.v, 375.h, 26.v),
            ),
            AppbarTitle(
              text: "lbl_faq".tr,
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildFAQ() {
    return Padding(
      padding: EdgeInsets.only(
        left: 13.h,
        right: 8.h,
        bottom: 5.v,
      ),
      child: Column(
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              "lbl_pertanyaan_umum".tr,
              style: theme.textTheme.headlineSmall,
            ),
          ),
          SizedBox(height: 19.v),
          Padding(
            padding: EdgeInsets.only(right: 8.h),
            child: _buildApaPeranTaternak(
              apaPeranTaternak: "msg_apa_itu_taternak2".tr,
            ),
          ),
          SizedBox(height: 12.v),
          Divider(
            color: theme.colorScheme.onPrimaryContainer,
          ),
          SizedBox(height: 17.v),
          Padding(
            padding: EdgeInsets.only(right: 8.h),
            child: _buildApaPeranTaternak(
              apaPeranTaternak: "msg_apa_peran_taternak2".tr,
            ),
          ),
          SizedBox(height: 12.v),
          Divider(
            color: theme.colorScheme.onPrimaryContainer,
          ),
          SizedBox(height: 4.v),
          Padding(
            padding: EdgeInsets.only(right: 8.h),
            child: _buildApaPeranTaternak(
              apaPeranTaternak: "msg_kapan_pembeli_harus2".tr,
            ),
          ),
          SizedBox(height: 3.v),
          Divider(
            color: theme.colorScheme.onPrimaryContainer,
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildApaPeranTaternak({required String apaPeranTaternak}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          apaPeranTaternak,
          style: theme.textTheme.titleLarge!.copyWith(
            color: appTheme.black900,
          ),
        ),
        CustomImageView(
          imagePath: ImageConstant.imgArrowRightPrimarycontainer,
          height: 23.v,
          width: 22.h,
          margin: EdgeInsets.only(bottom: 4.v),
        ),
      ],
    );
  }
}
