import 'controller/tambah_postingan_controller.dart';
import 'package:flutter/material.dart';
import 'package:example/core/app_export.dart';
import 'package:example/presentation/cari_page/cari_page.dart';
import 'package:example/widgets/app_bar/appbar_leading_image.dart';
import 'package:example/widgets/app_bar/appbar_subtitle_two.dart';
import 'package:example/widgets/app_bar/custom_app_bar.dart';
import 'package:example/widgets/custom_bottom_bar.dart';
import 'package:example/widgets/custom_drop_down.dart';
import 'package:example/widgets/custom_elevated_button.dart';
import 'package:example/widgets/custom_outlined_button.dart';

class TambahPostinganScreen extends GetWidget<TambahPostinganController> {const TambahPostinganScreen({Key? key}) : super(key: key);

@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(body: SizedBox(width: double.maxFinite, child: Column(children: [_buildAtas(), SizedBox(height: 36.v), Expanded(child: SingleChildScrollView(child: _buildTambahPostingan()))])), bottomNavigationBar: _buildEightySeven())); } 
/// Section Widget
Widget _buildAtas() { return Container(padding: EdgeInsets.symmetric(vertical: 3.v), decoration: AppDecoration.fillPrimary, child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [SizedBox(height: 1.v), CustomAppBar(height: 24.v, leadingWidth: 50.h, leading: AppbarLeadingImage(imagePath: ImageConstant.imgRewindOnerrorcontainer, margin: EdgeInsets.only(left: 18.h)), title: AppbarSubtitleTwo(text: "lbl_postingan_baru".tr, margin: EdgeInsets.only(left: 8.h)))])); } 
/// Section Widget
Widget _buildTambahPostingan() { return Padding(padding: EdgeInsets.only(bottom: 330.v), child: Column(children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.only(left: 34.h), child: Row(children: [CustomImageView(imagePath: ImageConstant.imgImage2025x25, height: 36.v, width: 35.h), Padding(padding: EdgeInsets.only(left: 16.h, top: 8.v, bottom: 3.v), child: Text("msg_tulis_keterangan".tr, style: theme.textTheme.bodyLarge))]))), SizedBox(height: 41.v), Divider(color: appTheme.gray40003), SizedBox(height: 54.v), Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.only(left: 20.h), child: Text("lbl_tambahkan_foto".tr, style: theme.textTheme.bodyMedium))), SizedBox(height: 11.v), Container(width: 375.h, margin: EdgeInsets.symmetric(horizontal: 19.h), decoration: AppDecoration.outlineGray, child: CustomElevatedButton(width: 64.h, text: "lbl_pilih_file".tr, buttonTextStyle: CustomTextStyles.bodySmall10_1)), SizedBox(height: 26.v), Padding(padding: EdgeInsets.only(left: 12.h, right: 17.h), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [CustomDropDown(width: 122.h, icon: Container(margin: EdgeInsets.only(left: 1.h), child: CustomImageView(imagePath: ImageConstant.imgArrowdownOnerrorcontainer, height: 24.adaptSize, width: 24.adaptSize)), hintText: "lbl_koleksi_foto".tr, items: controller.tambahPostinganModelObj.value.dropdownItemList!.value, onChanged: (value) {controller.onSelected(value);}), CustomImageView(imagePath: ImageConstant.imgMultimediaAdd, height: 24.adaptSize, width: 24.adaptSize)])), SizedBox(height: 16.v), Divider(color: appTheme.gray40003), SizedBox(height: 24.v), CustomOutlinedButton(text: "lbl_bagikan".tr, margin: EdgeInsets.only(left: 50.h, right: 33.h), onPressed: () {onTapBagikan();})])); } 
/// Section Widget
Widget _buildEightySeven() { return CustomBottomBar(onChanged: (BottomBarEnum type) {Get.toNamed(getCurrentRoute(type), id: 1);}); } 
///Handling route based on bottom click actions
String getCurrentRoute(BottomBarEnum type) { switch (type) {case BottomBarEnum.Beranda: return AppRoutes.cariPage; case BottomBarEnum.Cari: return "/"; case BottomBarEnum.Edukasi: return "/"; case BottomBarEnum.Akun: return "/"; default: return "/";} } 
///Handling page based on route
Widget getCurrentPage(String currentRoute) { switch (currentRoute) {case AppRoutes.cariPage: return CariPage(); default: return DefaultWidget();} } 
/// Navigates to the berandaOneScreen when the action is triggered.
onTapBagikan() { Get.toNamed(AppRoutes.berandaOneScreen, ); } 
 }
