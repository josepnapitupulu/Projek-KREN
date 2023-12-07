import 'controller/tambah_controller.dart';
import 'package:flutter/material.dart';
import 'package:example/core/app_export.dart';
import 'package:example/presentation/cari_page/cari_page.dart';
import 'package:example/widgets/app_bar/appbar_leading_image.dart';
import 'package:example/widgets/app_bar/appbar_subtitle_two.dart';
import 'package:example/widgets/app_bar/custom_app_bar.dart';
import 'package:example/widgets/custom_bottom_bar.dart';
import 'package:example/widgets/custom_drop_down.dart';

class TambahScreen extends GetWidget<TambahController> {const TambahScreen({Key? key}) : super(key: key);

@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(appBar: _buildAppBar(), body: SizedBox(width: mediaQueryData.size.width, child: SingleChildScrollView(child: _buildTambah())), bottomNavigationBar: _buildNinetyOne())); } 
/// Section Widget
PreferredSizeWidget _buildAppBar() { return CustomAppBar(height: 33.v, leadingWidth: 50.h, leading: AppbarLeadingImage(imagePath: ImageConstant.imgRewindOnerrorcontainer, margin: EdgeInsets.only(left: 18.h, top: 5.v, bottom: 4.v)), title: AppbarSubtitleTwo(text: "lbl_tambah".tr, margin: EdgeInsets.only(left: 8.h)), styleType: Style.bgFill); } 
/// Section Widget
Widget _buildTambah() { return Padding(padding: EdgeInsets.only(bottom: 408.v), child: Column(children: [Container(decoration: AppDecoration.fillGray100, child: Column(children: [Divider(), SizedBox(height: 14.v), Padding(padding: EdgeInsets.only(left: 47.h, right: 30.h), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, crossAxisAlignment: CrossAxisAlignment.start, children: [Text("lbl_galeri".tr, style: theme.textTheme.titleLarge), Padding(padding: EdgeInsets.only(top: 2.v, bottom: 4.v), child: Text("lbl".tr, style: theme.textTheme.bodyMedium))])), SizedBox(height: 14.v)])), GestureDetector(onTap: () {onTapPersonal();}, child: Container(decoration: AppDecoration.fillGray100, child: Column(children: [Divider(), SizedBox(height: 14.v), Padding(padding: EdgeInsets.only(left: 49.h, right: 30.h), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, crossAxisAlignment: CrossAxisAlignment.start, children: [Text("lbl_produk".tr, style: theme.textTheme.titleLarge), Padding(padding: EdgeInsets.only(top: 2.v, bottom: 4.v), child: Text("lbl".tr, style: theme.textTheme.bodyMedium))])), SizedBox(height: 14.v)]))), SizedBox(height: 136.v), Padding(padding: EdgeInsets.only(left: 12.h, right: 17.h), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [CustomDropDown(width: 122.h, icon: Container(margin: EdgeInsets.only(left: 1.h), child: CustomImageView(imagePath: ImageConstant.imgArrowdownOnerrorcontainer, height: 24.adaptSize, width: 24.adaptSize)), hintText: "lbl_koleksi_foto".tr, items: controller.tambahModelObj.value.dropdownItemList!.value, onChanged: (value) {controller.onSelected(value);}), CustomImageView(imagePath: ImageConstant.imgMultimediaAdd, height: 24.adaptSize, width: 24.adaptSize)]))])); } 
/// Section Widget
Widget _buildNinetyOne() { return CustomBottomBar(onChanged: (BottomBarEnum type) {Get.toNamed(getCurrentRoute(type), id: 1);}); } 
///Handling route based on bottom click actions
String getCurrentRoute(BottomBarEnum type) { switch (type) {case BottomBarEnum.Beranda: return AppRoutes.cariPage; case BottomBarEnum.Cari: return "/"; case BottomBarEnum.Edukasi: return "/"; case BottomBarEnum.Akun: return "/"; default: return "/";} } 
///Handling page based on route
Widget getCurrentPage(String currentRoute) { switch (currentRoute) {case AppRoutes.cariPage: return CariPage(); default: return DefaultWidget();} } 
/// Navigates to the produkFiveScreen when the action is triggered.
onTapPersonal() { Get.toNamed(AppRoutes.produkFiveScreen, ); } 
 }
