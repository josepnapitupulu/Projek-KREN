import 'controller/rincian_pembayaran_controller.dart';
import 'package:flutter/material.dart';
import 'package:example/core/app_export.dart';
import 'package:example/widgets/app_bar/appbar_leading_image.dart';
import 'package:example/widgets/app_bar/appbar_subtitle_two.dart';
import 'package:example/widgets/app_bar/custom_app_bar.dart';
import 'package:example/widgets/custom_outlined_button.dart';

class RincianPembayaranScreen extends GetWidget<RincianPembayaranController> {const RincianPembayaranScreen({Key? key}) : super(key: key);

@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(body: SizedBox(width: double.maxFinite, child: Column(children: [_buildAtas(), SizedBox(height: 28.v), Expanded(child: SingleChildScrollView(child: Container(height: 629.v, width: 372.h, margin: EdgeInsets.only(left: 21.h, right: 21.h, bottom: 5.v), child: Stack(alignment: Alignment.topCenter, children: [Align(alignment: Alignment.bottomCenter, child: Container(padding: EdgeInsets.symmetric(horizontal: 10.h, vertical: 22.v), decoration: AppDecoration.outlineBlack9002, child: Column(mainAxisSize: MainAxisSize.min, mainAxisAlignment: MainAxisAlignment.end, children: [SizedBox(height: 61.v), Text("msg_menunggu_konfirmasi".tr, style: CustomTextStyles.bodySmallOnPrimaryContainer), SizedBox(height: 12.v), Padding(padding: EdgeInsets.symmetric(horizontal: 16.h), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Padding(padding: EdgeInsets.only(top: 1.v), child: Text("msg_waktu_pengiriman".tr, style: theme.textTheme.bodySmall)), Text("lbl_10_00_wib".tr, style: theme.textTheme.bodySmall)])), SizedBox(height: 1.v), Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.only(left: 16.h), child: Text("lbl_bukti_transfer2".tr, style: theme.textTheme.bodySmall))), SizedBox(height: 13.v), CustomImageView(imagePath: ImageConstant.imgImage26, height: 351.v, width: 268.h), SizedBox(height: 18.v), CustomOutlinedButton(height: 42.v, text: "lbl_ok".tr, buttonStyle: CustomButtonStyles.outlineOnErrorContainerTL201, buttonTextStyle: CustomTextStyles.bodyLargeOnErrorContainer, onPressed: () {onTapOK();})]))), CustomImageView(imagePath: ImageConstant.imgRefresh, height: 67.adaptSize, width: 67.adaptSize, alignment: Alignment.topCenter), Align(alignment: Alignment.topCenter, child: Padding(padding: EdgeInsets.only(top: 65.v), child: Text("lbl_rp_18_000_000".tr, style: theme.textTheme.titleLarge)))]))))])))); } 
/// Section Widget
Widget _buildAtas() { return Container(padding: EdgeInsets.symmetric(vertical: 8.v), decoration: AppDecoration.fillPrimary, child: Column(children: [SizedBox(height: 7.v), CustomAppBar(height: 29.v, leadingWidth: 49.h, leading: AppbarLeadingImage(imagePath: ImageConstant.imgRewindOnerrorcontainer, margin: EdgeInsets.only(left: 17.h, bottom: 5.v), onTap: () {onTapRewind();}), title: AppbarSubtitleTwo(text: "msg_rincian_pembayaran".tr, margin: EdgeInsets.only(left: 11.h)))])); } 
/// Navigates to the sedangDiprosesScreen when the action is triggered.
onTapRewind() { Get.toNamed(AppRoutes.sedangDiprosesScreen, ); } 
/// Navigates to the sedangDiprosesScreen when the action is triggered.
onTapOK() { Get.toNamed(AppRoutes.sedangDiprosesScreen, ); } 
 }
