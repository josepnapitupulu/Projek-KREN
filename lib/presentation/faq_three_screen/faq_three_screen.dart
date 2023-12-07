import 'controller/faq_three_controller.dart';
import 'package:flutter/material.dart';
import 'package:example/core/app_export.dart';
import 'package:example/widgets/app_bar/appbar_title.dart';
import 'package:example/widgets/app_bar/appbar_title_image.dart';
import 'package:example/widgets/app_bar/custom_app_bar.dart';

// ignore_for_file: must_be_immutable
class FaqThreeScreen extends GetWidget<FaqThreeController> {
  const FaqThreeScreen({Key? key})
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
            padding: EdgeInsets.only(top: 29.v),
            child: Padding(
              padding: EdgeInsets.only(
                left: 13.h,
                right: 80.h,
                bottom: 5.v,
              ),
              child: Text(
                "msg_bagaimana_kami_bisa".tr,
                style: CustomTextStyles.bodyLarge18,
              ),
            ),
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
              text: "lbl_hubungi_kami".tr,
            ),
          ],
        ),
      ),
    );
  }
}
