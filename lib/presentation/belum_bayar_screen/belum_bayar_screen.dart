import '../belum_bayar_screen/widgets/belumbayar_item_widget.dart';
import 'controller/belum_bayar_controller.dart';
import 'models/belumbayar_item_model.dart';
import 'package:flutter/material.dart';
import 'package:example/core/app_export.dart';
import 'package:example/widgets/app_bar/appbar_leading_image.dart';
import 'package:example/widgets/app_bar/appbar_subtitle_two.dart';
import 'package:example/widgets/app_bar/custom_app_bar.dart';
import 'package:example/widgets/custom_outlined_button.dart';class BelumBayarScreen extends GetWidget<BelumBayarController> {const BelumBayarScreen({Key? key}) : super(key: key);

@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(body: SizedBox(width: double.maxFinite, child: Column(children: [_buildAtas(), Expanded(child: SingleChildScrollView(child: Padding(padding: EdgeInsets.only(bottom: 5.v), child: Column(children: [_buildFrame1(), _buildSapiPotong(), _buildFrame(produkCounter: "lbl_1_produk".tr, jumlahHarusDibayar: "msg_jumlah_harus_dibayar".tr, rpCounter: "lbl_rp_18_000_000".tr), _buildFrame3(), _buildFrame4(), _buildBelumBayar(), _buildFrame(produkCounter: "lbl_3_produk".tr, jumlahHarusDibayar: "msg_jumlah_harus_dibayar".tr, rpCounter: "lbl_rp_5_146_000".tr), _buildFrame6()]))))])))); } 
/// Section Widget
Widget _buildAtas() { return Container(padding: EdgeInsets.symmetric(vertical: 8.v), decoration: AppDecoration.fillPrimary, child: Column(children: [SizedBox(height: 7.v), CustomAppBar(height: 29.v, leadingWidth: 49.h, leading: AppbarLeadingImage(imagePath: ImageConstant.imgRewindOnerrorcontainer, margin: EdgeInsets.only(left: 17.h, bottom: 5.v), onTap: () {onTapRewind();}), title: AppbarSubtitleTwo(text: "lbl_pesanan_saya".tr, margin: EdgeInsets.only(left: 11.h)))])); } 
/// Section Widget
Widget _buildFrame1() { return Container(width: double.maxFinite, padding: EdgeInsets.symmetric(horizontal: 19.h, vertical: 4.v), decoration: AppDecoration.fillGreen300, child: Row(children: [CustomImageView(imagePath: ImageConstant.imgImage2025x25, height: 24.adaptSize, width: 24.adaptSize, margin: EdgeInsets.only(top: 1.v)), Padding(padding: EdgeInsets.only(left: 7.h, top: 4.v), child: Text("msg_peternak_sapi_kita".tr, style: theme.textTheme.bodyMedium))])); } 
/// Section Widget
Widget _buildSapiPotong() { return Container(width: double.maxFinite, padding: EdgeInsets.only(top: 11.v, bottom: 10.v), decoration: AppDecoration.outlineOnPrimaryContainer, child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [CustomImageView(imagePath: ImageConstant.imgRectangle57, height: 52.v, width: 70.h), Padding(padding: EdgeInsets.symmetric(vertical: 4.v), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [SizedBox(width: 273.h, child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Text("lbl_sapi_potong".tr, style: CustomTextStyles.bodyMediumGray700), Text("lbl_400_700_kg".tr, style: CustomTextStyles.bodySmallGray700_1)])), SizedBox(height: 4.v), Text("lbl_rp_18_000_000".tr, style: theme.textTheme.bodyMedium)]))])); } 
/// Section Widget
Widget _buildFrame3() { return Container(width: double.maxFinite, padding: EdgeInsets.fromLTRB(19.h, 2.v, 19.h, 1.v), decoration: AppDecoration.outlinePrimary, child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, crossAxisAlignment: CrossAxisAlignment.start, children: [Padding(padding: EdgeInsets.only(top: 8.v, bottom: 7.v), child: Text("msg_bayar_sebelum_21".tr, style: CustomTextStyles.bodySmallGray500)), CustomOutlinedButton(height: 28.v, width: 116.h, text: "lbl_bayar_sekarang".tr, margin: EdgeInsets.only(bottom: 2.v), buttonTextStyle: CustomTextStyles.bodySmallOnErrorContainer_1, onPressed: () {onTapBayarSekarang();})])); } 
/// Section Widget
Widget _buildFrame4() { return Container(width: double.maxFinite, padding: EdgeInsets.symmetric(horizontal: 19.h, vertical: 4.v), decoration: AppDecoration.fillGreen300, child: Row(children: [CustomImageView(imagePath: ImageConstant.imgEllipse224x24, height: 24.adaptSize, width: 24.adaptSize, radius: BorderRadius.circular(12.h), margin: EdgeInsets.only(top: 1.v)), Padding(padding: EdgeInsets.only(left: 7.h, top: 5.v), child: Text("lbl_ternak_segar".tr, style: theme.textTheme.bodyMedium))])); } 
/// Section Widget
Widget _buildBelumBayar() { return Obx(() => ListView.separated(physics: NeverScrollableScrollPhysics(), shrinkWrap: true, separatorBuilder: (context, index) {return SizedBox(height: 1.v);}, itemCount: controller.belumBayarModelObj.value.belumbayarItemList.value.length, itemBuilder: (context, index) {BelumbayarItemModel model = controller.belumBayarModelObj.value.belumbayarItemList.value[index]; return BelumbayarItemWidget(model);})); } 
/// Section Widget
Widget _buildFrame6() { return Container(width: double.maxFinite, padding: EdgeInsets.fromLTRB(19.h, 2.v, 19.h, 1.v), decoration: AppDecoration.outlinePrimary, child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, crossAxisAlignment: CrossAxisAlignment.start, children: [Padding(padding: EdgeInsets.only(top: 8.v, bottom: 7.v), child: Text("msg_bayar_sebelum_19".tr, style: CustomTextStyles.bodySmallGray500)), CustomOutlinedButton(height: 28.v, width: 116.h, text: "lbl_bayar_sekarang".tr, margin: EdgeInsets.only(bottom: 2.v), buttonTextStyle: CustomTextStyles.bodySmallOnErrorContainer_1, onPressed: () {onTapBayarSekarang1();})])); } 
/// Common widget
Widget _buildFrame({required String produkCounter, required String jumlahHarusDibayar, required String rpCounter, }) { return Container(width: double.maxFinite, padding: EdgeInsets.fromLTRB(17.h, 3.v, 17.h, 2.v), decoration: AppDecoration.outlineOnPrimaryContainer, child: Row(crossAxisAlignment: CrossAxisAlignment.end, children: [Padding(padding: EdgeInsets.only(top: 3.v, bottom: 2.v), child: Text(produkCounter, style: CustomTextStyles.bodySmallGray500.copyWith(color: appTheme.gray500))), Spacer(), Padding(padding: EdgeInsets.only(top: 3.v), child: Text(jumlahHarusDibayar, style: theme.textTheme.bodySmall!.copyWith(color: appTheme.black900))), Padding(padding: EdgeInsets.only(left: 13.h, top: 3.v, right: 6.h), child: Text(rpCounter, style: CustomTextStyles.bodySmallPrimary.copyWith(color: theme.colorScheme.primary)))])); } 
/// Navigates to the profileOneScreen when the action is triggered.
onTapRewind() { Get.toNamed(AppRoutes.profileOneScreen, ); } 
/// Navigates to the checkoutScreen when the action is triggered.
onTapBayarSekarang() { Get.toNamed(AppRoutes.checkoutScreen, ); } 
/// Navigates to the checkoutScreen when the action is triggered.
onTapBayarSekarang1() { Get.toNamed(AppRoutes.checkoutScreen, ); } 
 }
