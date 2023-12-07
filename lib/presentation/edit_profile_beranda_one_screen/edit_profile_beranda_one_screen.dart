import 'controller/edit_profile_beranda_one_controller.dart';
import 'package:flutter/material.dart';
import 'package:example/core/app_export.dart';
import 'package:example/presentation/cari_page/cari_page.dart';
import 'package:example/widgets/custom_bottom_bar.dart';
import 'package:example/widgets/custom_outlined_button.dart';class EditProfileBerandaOneScreen extends GetWidget<EditProfileBerandaOneController> {const EditProfileBerandaOneScreen({Key? key}) : super(key: key);

@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(body: SizedBox(width: mediaQueryData.size.width, child: SingleChildScrollView(child: Padding(padding: EdgeInsets.only(bottom: 241.v), child: Column(children: [_buildEditFotoProfil(), SizedBox(height: 21.v), Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.only(left: 31.h), child: Text("lbl_bio".tr, style: theme.textTheme.bodyMedium))), SizedBox(height: 107.v), Divider(color: appTheme.black900, indent: 31.h, endIndent: 39.h), SizedBox(height: 48.v), CustomOutlinedButton(text: "lbl_edit_profil".tr, margin: EdgeInsets.only(left: 41.h, right: 42.h), onPressed: () {onTapEditProfil();})])))), bottomNavigationBar: _buildButton())); } 
/// Section Widget
Widget _buildEditFotoProfil() { return SizedBox(height: 242.v, width: double.maxFinite, child: Stack(alignment: Alignment.bottomCenter, children: [Align(alignment: Alignment.center, child: Container(padding: EdgeInsets.symmetric(horizontal: 129.h, vertical: 68.v), decoration: AppDecoration.fillPrimary, child: Column(mainAxisSize: MainAxisSize.min, mainAxisAlignment: MainAxisAlignment.center, children: [SizedBox(height: 16.v), CustomImageView(imagePath: ImageConstant.imgImage2025x25, height: 60.v, width: 61.h), SizedBox(height: 3.v), Align(alignment: Alignment.centerRight, child: Padding(padding: EdgeInsets.only(left: 26.h), child: Row(mainAxisAlignment: MainAxisAlignment.end, crossAxisAlignment: CrossAxisAlignment.start, children: [Padding(padding: EdgeInsets.only(top: 4.v), child: Text("msg_edit_foto_profil".tr, style: CustomTextStyles.bodyMediumOnErrorContainer_1)), CustomImageView(imagePath: ImageConstant.imgMultimediaCamera, height: 20.adaptSize, width: 20.adaptSize, margin: EdgeInsets.only(left: 6.h, bottom: 5.v))])))]))), Align(alignment: Alignment.bottomCenter, child: Padding(padding: EdgeInsets.only(bottom: 33.v), child: Text("msg2".tr, textAlign: TextAlign.justify, style: theme.textTheme.titleLarge)))])); } 
/// Section Widget
Widget _buildButton() { return CustomBottomBar(onChanged: (BottomBarEnum type) {Get.toNamed(getCurrentRoute(type), id: 1);}); } 
///Handling route based on bottom click actions
String getCurrentRoute(BottomBarEnum type) { switch (type) {case BottomBarEnum.Beranda: return AppRoutes.cariPage; case BottomBarEnum.Cari: return "/"; case BottomBarEnum.Edukasi: return "/"; case BottomBarEnum.Akun: return "/"; default: return "/";} } 
///Handling page based on route
Widget getCurrentPage(String currentRoute) { switch (currentRoute) {case AppRoutes.cariPage: return CariPage(); default: return DefaultWidget();} } 
/// Navigates to the berandaOneScreen when the action is triggered.
onTapEditProfil() { Get.toNamed(AppRoutes.berandaOneScreen, ); } 
 }
