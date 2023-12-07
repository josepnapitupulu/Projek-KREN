import 'controller/detail_edukasi_controller.dart';
import 'package:flutter/material.dart';
import 'package:example/core/app_export.dart';
import 'package:example/presentation/cari_page/cari_page.dart';
import 'package:example/widgets/app_bar/appbar_subtitle_two.dart';
import 'package:example/widgets/app_bar/custom_app_bar.dart';
import 'package:example/widgets/custom_bottom_bar.dart';class DetailEdukasiScreen extends GetWidget<DetailEdukasiController> {const DetailEdukasiScreen({Key? key}) : super(key: key);

@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(appBar: _buildAppBar(), body: SizedBox(width: double.maxFinite, child: Column(children: [SizedBox(height: 58.v), Expanded(child: SingleChildScrollView(child: Padding(padding: EdgeInsets.only(left: 17.h, right: 8.h, bottom: 10.v), child: Column(children: [CustomImageView(imagePath: ImageConstant.imgImage23, height: 200.v, width: 320.h, radius: BorderRadius.circular(20.h)), SizedBox(height: 33.v), Container(width: 380.h, margin: EdgeInsets.only(right: 8.h), child: Text("msg_lorem_ipsum_dolor2".tr, maxLines: 7, overflow: TextOverflow.ellipsis, textAlign: TextAlign.justify, style: CustomTextStyles.bodyMedium14.copyWith(height: 1.42))), SizedBox(height: 219.v), _buildApakahAdaYang()]))))])), bottomNavigationBar: _buildBottomBar())); } 
/// Section Widget
PreferredSizeWidget _buildAppBar() { return CustomAppBar(height: 53.v, leadingWidth: 49.h, leading: Container(height: 37.v, width: 35.h, margin: EdgeInsets.only(left: 14.h, top: 8.v, bottom: 8.v), child: Stack(alignment: Alignment.topCenter, children: [CustomImageView(imagePath: ImageConstant.imgArrowLeft, height: 23.v, width: 22.h, alignment: Alignment.bottomLeft, margin: EdgeInsets.only(top: 14.v, right: 13.h), onTap: () {onTapImgArrowLeft();}), CustomImageView(imagePath: ImageConstant.imgRewindOnerrorcontainer, height: 24.v, width: 32.h, alignment: Alignment.topCenter, margin: EdgeInsets.only(left: 3.h, bottom: 13.v))])), centerTitle: true, title: AppbarSubtitleTwo(text: "msg_cara_mengukur_kebutuhan".tr), styleType: Style.bgFill); } 
/// Section Widget
Widget _buildApakahAdaYang() { return Row(mainAxisAlignment: MainAxisAlignment.center, children: [Expanded(child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("msg_apakah_ada_yang".tr, style: CustomTextStyles.bodyMedium14), SizedBox(height: 1.v), Row(crossAxisAlignment: CrossAxisAlignment.start, children: [Container(height: 25.adaptSize, width: 25.adaptSize, decoration: AppDecoration.fillGreenA.copyWith(borderRadius: BorderRadiusStyle.roundedBorder12), child: CustomImageView(imagePath: ImageConstant.imgImage201, height: 25.adaptSize, width: 25.adaptSize, alignment: Alignment.center)), Padding(padding: EdgeInsets.only(left: 4.h, top: 4.v, bottom: 7.v), child: Text("msg_tambahkan_komentar".tr, style: CustomTextStyles.bodySmallPoiretOne11))])])), Padding(padding: EdgeInsets.only(left: 8.h, top: 27.v, bottom: 2.v), child: Text("msg_14_november_2023".tr, style: CustomTextStyles.bodySmallPompiere_1))]); } 
/// Section Widget
Widget _buildBottomBar() { return CustomBottomBar(onChanged: (BottomBarEnum type) {Get.toNamed(getCurrentRoute(type), id: 1);}); } 
///Handling route based on bottom click actions
String getCurrentRoute(BottomBarEnum type) { switch (type) {case BottomBarEnum.Beranda: return AppRoutes.cariPage; case BottomBarEnum.Cari: return "/"; case BottomBarEnum.Edukasi: return "/"; case BottomBarEnum.Akun: return "/"; default: return "/";} } 
///Handling page based on route
Widget getCurrentPage(String currentRoute) { switch (currentRoute) {case AppRoutes.cariPage: return CariPage(); default: return DefaultWidget();} } 

/// Navigates to the previous screen.
onTapImgArrowLeft() { Get.back(); } 
 }
