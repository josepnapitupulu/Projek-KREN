import 'controller/sedang_diproses_controller.dart';
import 'package:flutter/material.dart';
import 'package:example/core/app_export.dart';
import 'package:example/widgets/app_bar/appbar_leading_image.dart';
import 'package:example/widgets/app_bar/appbar_subtitle_two.dart';
import 'package:example/widgets/app_bar/custom_app_bar.dart';
import 'package:example/widgets/custom_outlined_button.dart';


class SedangDiprosesScreen extends GetWidget<SedangDiprosesController> {const SedangDiprosesScreen({Key? key}) : super(key: key);

@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(body: SizedBox(width: double.maxFinite, child: Column(children: [_buildAtas(), Expanded(child: SingleChildScrollView(child: _buildSedangDiproses()))])))); } 
/// Section Widget
Widget _buildAtas() { return Container(padding: EdgeInsets.symmetric(vertical: 8.v), decoration: AppDecoration.fillPrimary, child: Column(children: [SizedBox(height: 7.v), CustomAppBar(height: 29.v, leadingWidth: 49.h, leading: AppbarLeadingImage(imagePath: ImageConstant.imgRewindOnerrorcontainer, margin: EdgeInsets.only(left: 17.h, bottom: 5.v), onTap: () {onTapRewind();}), title: AppbarSubtitleTwo(text: "msg_konfirmasi_pembayaran".tr, margin: EdgeInsets.only(left: 11.h)))])); } 
/// Section Widget
Widget _buildSedangDiproses() { return Padding(padding: EdgeInsets.only(bottom: 5.v), child: Column(children: [Container(width: double.maxFinite, padding: EdgeInsets.symmetric(horizontal: 19.h, vertical: 6.v), decoration: AppDecoration.fillGreen300, child: Row(children: [CustomImageView(imagePath: ImageConstant.imgImage2025x25, height: 24.adaptSize, width: 24.adaptSize, margin: EdgeInsets.only(bottom: 1.v)), Padding(padding: EdgeInsets.only(left: 7.h, top: 3.v), child: Text("msg_peternak_sapi_kita".tr, style: theme.textTheme.bodyMedium))])), Container(width: double.maxFinite, padding: EdgeInsets.only(top: 11.v, bottom: 10.v), decoration: AppDecoration.outlineOnPrimaryContainer, child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [CustomImageView(imagePath: ImageConstant.imgRectangle57, height: 52.v, width: 70.h), Padding(padding: EdgeInsets.symmetric(vertical: 4.v), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [SizedBox(width: 273.h, child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Text("lbl_sapi_potong".tr, style: CustomTextStyles.bodyMediumGray700), Text("lbl_400_700_kg".tr, style: CustomTextStyles.bodySmallGray700_1)])), SizedBox(height: 4.v), Text("lbl_rp_18_000_000".tr, style: theme.textTheme.bodyMedium)]))])), Container(width: double.maxFinite, padding: EdgeInsets.fromLTRB(17.h, 3.v, 17.h, 2.v), decoration: AppDecoration.outlineOnPrimaryContainer, child: Row(crossAxisAlignment: CrossAxisAlignment.end, children: [Padding(padding: EdgeInsets.only(top: 3.v, bottom: 2.v), child: Text("lbl_1_produk".tr, style: CustomTextStyles.bodySmallGray500)), Spacer(), Padding(padding: EdgeInsets.only(top: 3.v), child: Text("lbl_jumlah_dibayar".tr, style: theme.textTheme.bodySmall)), Padding(padding: EdgeInsets.only(left: 13.h, top: 3.v, right: 6.h), child: Text("lbl_rp_18_000_000".tr, style: CustomTextStyles.bodySmallPrimary))])), Container(width: double.maxFinite, padding: EdgeInsets.fromLTRB(13.h, 2.v, 13.h, 1.v), decoration: AppDecoration.outlinePrimary, child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, crossAxisAlignment: CrossAxisAlignment.start, children: [Padding(padding: EdgeInsets.only(top: 5.v, bottom: 10.v), child: Text("msg_pembayaran_akan".tr, style: CustomTextStyles.bodySmallGray500)), CustomOutlinedButton(height: 28.v, width: 116.h, text: "lbl_lihat_rincian".tr, margin: EdgeInsets.only(right: 6.h, bottom: 2.v), buttonTextStyle: CustomTextStyles.bodySmallOnErrorContainer_1, onPressed: () {onTapLihatRincian();})]))])); } 
/// Navigates to the profileOneScreen when the action is triggered.
onTapRewind() { Get.toNamed(AppRoutes.profileOneScreen, ); } 
/// Navigates to the rincianPembayaranScreen when the action is triggered.
onTapLihatRincian() { Get.toNamed(AppRoutes.rincianPembayaranScreen, ); } 
 }
