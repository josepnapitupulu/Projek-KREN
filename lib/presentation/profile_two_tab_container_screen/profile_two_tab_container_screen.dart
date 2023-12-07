import 'controller/profile_two_tab_container_controller.dart';
import 'package:flutter/material.dart';
import 'package:example/core/app_export.dart';
import 'package:example/presentation/cari_page/cari_page.dart';
import 'package:example/presentation/profile_two_page/profile_two_page.dart';
import 'package:example/widgets/app_bar/appbar_leading_image.dart';
import 'package:example/widgets/app_bar/custom_app_bar.dart';
import 'package:example/widgets/custom_bottom_bar.dart';
import 'package:example/widgets/custom_elevated_button.dart';

class ProfileTwoTabContainerScreen extends GetWidget<ProfileTwoTabContainerController> {const ProfileTwoTabContainerScreen({Key? key}) : super(key: key);

@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(body: SizedBox(width: double.maxFinite, child: Column(children: [_buildAtas(), SizedBox(height: 18.v), Expanded(child: SingleChildScrollView(child: Column(children: [CustomImageView(imagePath: ImageConstant.imgImage2025x25, height: 100.adaptSize, width: 100.adaptSize), SizedBox(height: 15.v), Row(mainAxisAlignment: MainAxisAlignment.center, children: [Padding(padding: EdgeInsets.only(top: 1.v), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Padding(padding: EdgeInsets.only(left: 1.h), child: Text("lbl_100".tr, style: CustomTextStyles.titleLarge_1)), SizedBox(height: 3.v), Align(alignment: Alignment.center, child: Text("lbl_foto".tr, style: theme.textTheme.bodyMedium))])), Padding(padding: EdgeInsets.only(left: 68.h), child: Column(children: [Text("lbl_100".tr, style: CustomTextStyles.titleLarge_1), SizedBox(height: 4.v), Text("lbl_produk".tr, style: theme.textTheme.bodyMedium)]))]), SizedBox(height: 24.v), Text("msg_peternak_sapi_kita".tr, style: theme.textTheme.titleLarge), SizedBox(height: 2.v), SizedBox(width: 161.h, child: Text("msg_peternak_kambing".tr, maxLines: 2, overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: theme.textTheme.bodySmall!.copyWith(height: 1.69))), SizedBox(height: 4.v), Row(mainAxisAlignment: MainAxisAlignment.center, children: [CustomImageView(imagePath: ImageConstant.imgLocationAndMap, height: 28.v, width: 30.h, margin: EdgeInsets.only(bottom: 4.v)), Padding(padding: EdgeInsets.only(left: 4.h), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("msg_jl_diponegoro_xxxx".tr, style: CustomTextStyles.bodySmall10), SizedBox(height: 5.v), Text("msg_sidorejo_sumatera".tr, style: CustomTextStyles.bodySmall10)]))]), SizedBox(height: 34.v), _buildSukai(), SizedBox(height: 25.v), _buildTabview(), _buildTabBarView()])))])), bottomNavigationBar: _buildBottomBar())); } 
/// Section Widget
Widget _buildAtas() { return Container(padding: EdgeInsets.symmetric(vertical: 10.v), decoration: AppDecoration.fillPrimary, child: Column(children: [SizedBox(height: 9.v), CustomAppBar(height: 24.v, leadingWidth: double.maxFinite, leading: AppbarLeadingImage(imagePath: ImageConstant.imgRewindOnerrorcontainer, margin: EdgeInsets.only(left: 17.h, right: 365.h), onTap: () {onTapRewind();}))])); } 
/// Section Widget
Widget _buildSukai() { return Padding(padding: EdgeInsets.only(left: 40.h, right: 28.h), child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [Expanded(child: CustomElevatedButton(height: 36.v, text: "lbl_sukai".tr, margin: EdgeInsets.only(right: 23.h), leftIcon: Container(margin: EdgeInsets.only(right: 20.h), child: CustomImageView(imagePath: ImageConstant.imgShapesLove, height: 24.adaptSize, width: 24.adaptSize)), buttonStyle: CustomButtonStyles.fillAmberA)), Expanded(child: CustomElevatedButton(height: 36.v, text: "lbl_kirim_pesan".tr, margin: EdgeInsets.only(left: 23.h), leftIcon: Container(margin: EdgeInsets.only(right: 13.h), child: CustomImageView(imagePath: ImageConstant.imgCommunicationMessage, height: 24.adaptSize, width: 24.adaptSize)), buttonStyle: CustomButtonStyles.fillAmberA))])); } 
/// Section Widget
Widget _buildTabview() { return Container(height: 40.v, width: double.maxFinite, decoration: BoxDecoration(color: appTheme.gray30001), child: TabBar(controller: controller.tabviewController, isScrollable: true, labelColor: appTheme.black900, labelStyle: TextStyle(fontSize: 15.fSize, fontFamily: 'Patrick Hand', fontWeight: FontWeight.w400), unselectedLabelColor: appTheme.black900, unselectedLabelStyle: TextStyle(fontSize: 15.fSize, fontFamily: 'Patrick Hand', fontWeight: FontWeight.w400), indicator: BoxDecoration(color: appTheme.lime400), tabs: [Tab(child: Text("lbl_galeri".tr)), Tab(child: Text("lbl_produk".tr))])); } 
/// Section Widget
Widget _buildTabBarView() { return SizedBox(height: 254.v, child: TabBarView(controller: controller.tabviewController, children: [ProfileTwoPage(), ProfileTwoPage()])); } 
/// Section Widget
Widget _buildBottomBar() { return CustomBottomBar(onChanged: (BottomBarEnum type) {Get.toNamed(getCurrentRoute(type), id: 1);}); } 
///Handling route based on bottom click actions
String getCurrentRoute(BottomBarEnum type) { switch (type) {case BottomBarEnum.Beranda: return AppRoutes.cariPage; case BottomBarEnum.Cari: return "/"; case BottomBarEnum.Edukasi: return "/"; case BottomBarEnum.Akun: return "/"; default: return "/";} } 
///Handling page based on route
Widget getCurrentPage(String currentRoute) { switch (currentRoute) {case AppRoutes.cariPage: return CariPage(); default: return DefaultWidget();} } 
/// Navigates to the berandaScreen when the action is triggered.
onTapRewind() { Get.toNamed(AppRoutes.berandaScreen, ); } 
 }
