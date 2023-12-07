import '../keranjang_produk_peternakan_screen/widgets/keranjangprodukpeternakan_item_widget.dart';
import 'controller/keranjang_produk_peternakan_controller.dart';
import 'models/keranjangprodukpeternakan_item_model.dart';
import 'package:flutter/material.dart';
import 'package:example/core/app_export.dart';
import 'package:example/widgets/app_bar/appbar_leading_image.dart';
import 'package:example/widgets/app_bar/appbar_subtitle_two.dart';
import 'package:example/widgets/app_bar/custom_app_bar.dart';
import 'package:example/widgets/custom_outlined_button.dart';class KeranjangProdukPeternakanScreen extends GetWidget<KeranjangProdukPeternakanController> {const KeranjangProdukPeternakanScreen({Key? key}) : super(key: key);

@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(body: SizedBox(width: double.maxFinite, child: Column(children: [_buildAtas(), SizedBox(height: 29.v), Expanded(child: SingleChildScrollView(child: Column(children: [_buildKeranjangprodukpeternakan(), SizedBox(height: 6.v), _buildFrame(), SizedBox(height: 354.v), _buildButton()])))])))); } 
/// Section Widget
Widget _buildAtas() { return Container(padding: EdgeInsets.symmetric(vertical: 8.v), decoration: AppDecoration.fillPrimary, child: Column(children: [SizedBox(height: 7.v), CustomAppBar(height: 29.v, leadingWidth: 49.h, leading: AppbarLeadingImage(imagePath: ImageConstant.imgRewindOnerrorcontainer, margin: EdgeInsets.only(left: 17.h, bottom: 5.v), onTap: () {onTapRewind();}), title: AppbarSubtitleTwo(text: "msg_keranjang_peternak".tr, margin: EdgeInsets.only(left: 11.h)))])); } 
/// Section Widget
Widget _buildKeranjangprodukpeternakan() { return Obx(() => ListView.separated(physics: NeverScrollableScrollPhysics(), shrinkWrap: true, separatorBuilder: (context, index) {return SizedBox(height: 1.v);}, itemCount: controller.keranjangProdukPeternakanModelObj.value.keranjangprodukpeternakanItemList.value.length, itemBuilder: (context, index) {KeranjangprodukpeternakanItemModel model = controller.keranjangProdukPeternakanModelObj.value.keranjangprodukpeternakanItemList.value[index]; return KeranjangprodukpeternakanItemWidget(model);})); } 
/// Section Widget
Widget _buildFrame() { return GestureDetector(onTap: () {onTapFrame();}, child: Container(padding: EdgeInsets.symmetric(horizontal: 135.h, vertical: 7.v), decoration: AppDecoration.outlineBlack9004, child: Column(mainAxisSize: MainAxisSize.min, mainAxisAlignment: MainAxisAlignment.center, children: [SizedBox(height: 2.v), CustomImageView(imagePath: ImageConstant.imgAddCircleLine, height: 30.adaptSize, width: 30.adaptSize, alignment: Alignment.centerRight, margin: EdgeInsets.only(right: 27.h)), SizedBox(height: 2.v), Text("lbl_tambah_produk".tr, style: CustomTextStyles.bodyMediumGray700)]))); } 
/// Section Widget
Widget _buildButton() { return Container(padding: EdgeInsets.symmetric(horizontal: 29.h, vertical: 33.v), decoration: AppDecoration.fillOnErrorContainer, child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [SizedBox(height: 4.v), Padding(padding: EdgeInsets.only(left: 2.h), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Padding(padding: EdgeInsets.only(top: 5.v), child: Text("msg_total_bayar_belanja".tr, style: CustomTextStyles.bodyLarge16)), Text("lbl_rp_38_000_000".tr, style: theme.textTheme.titleLarge)])), SizedBox(height: 25.v), CustomOutlinedButton(height: 42.v, text: "lbl_check_out".tr, buttonStyle: CustomButtonStyles.outlineOnErrorContainerTL201, buttonTextStyle: CustomTextStyles.bodyLargeOnErrorContainer, onPressed: () {onTapCheckOut();})])); } 
/// Navigates to the cariContainerScreen when the action is triggered.
onTapRewind() { Get.toNamed(AppRoutes.cariContainerScreen, ); } 
/// Navigates to the profileScreen when the action is triggered.
onTapFrame() { Get.toNamed(AppRoutes.profileScreen, ); } 
/// Navigates to the checkoutScreen when the action is triggered.
onTapCheckOut() { Get.toNamed(AppRoutes.checkoutScreen, ); } 
 }
