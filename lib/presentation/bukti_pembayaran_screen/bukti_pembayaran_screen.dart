import 'controller/bukti_pembayaran_controller.dart';
import 'package:flutter/material.dart';
import 'package:example/core/app_export.dart';
import 'package:example/widgets/app_bar/appbar_leading_image.dart';
import 'package:example/widgets/app_bar/appbar_subtitle_two.dart';
import 'package:example/widgets/app_bar/custom_app_bar.dart';
import 'package:example/widgets/custom_outlined_button.dart';class BuktiPembayaranScreen extends GetWidget<BuktiPembayaranController> {const BuktiPembayaranScreen({Key? key}) : super(key: key);

@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(body: SizedBox(width: double.maxFinite, child: Column(children: [_buildAtas(), SizedBox(height: 62.v), Expanded(child: SingleChildScrollView(child: Container(margin: EdgeInsets.only(left: 21.h, right: 21.h, bottom: 5.v), padding: EdgeInsets.symmetric(horizontal: 10.h, vertical: 22.v), decoration: AppDecoration.outlineBlack9002, child: Column(mainAxisSize: MainAxisSize.min, children: [SizedBox(height: 9.v), CustomImageView(imagePath: ImageConstant.imgImage26, height: 465.v, width: 303.h), SizedBox(height: 36.v), CustomOutlinedButton(height: 42.v, text: "lbl_ok".tr, buttonStyle: CustomButtonStyles.outlineOnErrorContainerTL201, buttonTextStyle: CustomTextStyles.bodyLargeOnErrorContainer, onPressed: () {onTapOK();})]))))])))); } 
/// Section Widget
Widget _buildAtas() { return Container(padding: EdgeInsets.symmetric(vertical: 6.v), decoration: AppDecoration.fillPrimary, child: Column(children: [SizedBox(height: 15.v), CustomAppBar(leadingWidth: 49.h, leading: AppbarLeadingImage(imagePath: ImageConstant.imgRewindOnerrorcontainer, margin: EdgeInsets.only(left: 17.h, bottom: 1.v), onTap: () {onTapRewind();}), title: AppbarSubtitleTwo(text: "msg_bukti_pembayaran".tr, margin: EdgeInsets.only(left: 11.h)))])); } 
/// Navigates to the detailPesananScreen when the action is triggered.
onTapRewind() { Get.toNamed(AppRoutes.detailPesananScreen, ); } 
/// Navigates to the detailPesananScreen when the action is triggered.
onTapOK() { Get.toNamed(AppRoutes.detailPesananScreen, ); } 
 }
