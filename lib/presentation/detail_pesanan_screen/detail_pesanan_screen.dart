import 'controller/detail_pesanan_controller.dart';
import 'package:flutter/material.dart';
import 'package:example/core/app_export.dart';
import 'package:example/widgets/app_bar/appbar_leading_image.dart';
import 'package:example/widgets/app_bar/appbar_subtitle_two.dart';
import 'package:example/widgets/app_bar/custom_app_bar.dart';
import 'package:example/widgets/custom_outlined_button.dart';
import 'package:example/widgets/custom_radio_button.dart';class DetailPesananScreen extends GetWidget<DetailPesananController> {const DetailPesananScreen({Key? key}) : super(key: key);

@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(body: SizedBox(width: double.maxFinite, child: Column(children: [_buildAtas(), Expanded(child: SingleChildScrollView(child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [_buildSapiPotong1(), SizedBox(height: 15.v), Padding(padding: EdgeInsets.only(left: 14.h), child: Text("msg_metode_pembayaran".tr, style: theme.textTheme.bodyMedium)), SizedBox(height: 4.v), Padding(padding: EdgeInsets.only(left: 14.h), child: Row(children: [CustomImageView(imagePath: ImageConstant.imgImage25, height: 11.v, width: 32.h, margin: EdgeInsets.only(top: 3.v, bottom: 2.v)), Padding(padding: EdgeInsets.only(left: 4.h), child: Text("msg_transfer_bca_taternak".tr, style: theme.textTheme.bodySmall))])), SizedBox(height: 28.v), Padding(padding: EdgeInsets.only(left: 14.h), child: Text("msg_metode_pengambilan".tr, style: theme.textTheme.bodyMedium)), SizedBox(height: 2.v), _buildDiantar(), SizedBox(height: 16.v), Padding(padding: EdgeInsets.only(left: 14.h), child: Text("msg_alamat_pengiriman".tr, style: theme.textTheme.bodyMedium)), SizedBox(height: 4.v), Padding(padding: EdgeInsets.only(left: 31.h), child: Text("msg_sarah_rosiana".tr, style: theme.textTheme.bodySmall)), SizedBox(height: 3.v), _buildJlWonokromoPsr(), SizedBox(height: 16.v), Padding(padding: EdgeInsets.only(left: 14.h), child: Text("msg_jadwal_pengiriman_pengambilan".tr, style: theme.textTheme.bodyMedium)), SizedBox(height: 6.v), Padding(padding: EdgeInsets.only(left: 24.h), child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [CustomImageView(imagePath: ImageConstant.imgCalendar, height: 24.adaptSize, width: 24.adaptSize), Padding(padding: EdgeInsets.only(left: 16.h, top: 2.v, bottom: 4.v), child: Text("msg_01_desember_2022".tr, style: CustomTextStyles.bodySmallSecondaryContainer))])), SizedBox(height: 20.v), Padding(padding: EdgeInsets.only(left: 17.h), child: Text("msg_detail_transaksi".tr, style: theme.textTheme.bodyMedium)), SizedBox(height: 9.v), _buildSubtotalItem(), SizedBox(height: 13.v), Padding(padding: EdgeInsets.only(left: 20.h), child: Text("msg_bukti_pembayaran".tr, style: theme.textTheme.bodyMedium)), SizedBox(height: 5.v), _buildLihat(), SizedBox(height: 5.v), Padding(padding: EdgeInsets.only(left: 14.h), child: Text("msg_catatan_transaksi".tr, style: theme.textTheme.bodyMedium)), SizedBox(height: 59.v), _buildButton()])))])))); } 
/// Section Widget
Widget _buildAtas() { return Container(padding: EdgeInsets.symmetric(vertical: 10.v), decoration: AppDecoration.fillPrimary, child: Column(children: [SizedBox(height: 7.v), CustomAppBar(leadingWidth: 51.h, leading: AppbarLeadingImage(imagePath: ImageConstant.imgRewindOnerrorcontainer, margin: EdgeInsets.only(left: 19.h, bottom: 1.v), onTap: () {onTapRewind();}), title: AppbarSubtitleTwo(text: "lbl_detail_pesanan".tr, margin: EdgeInsets.only(left: 7.h)))])); } 
/// Section Widget
Widget _buildSapiPotong1() { return Container(width: double.maxFinite, padding: EdgeInsets.symmetric(vertical: 14.v), decoration: AppDecoration.outlineBlack9001, child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [CustomImageView(imagePath: ImageConstant.imgRectangle57, height: 52.v, width: 70.h), Padding(padding: EdgeInsets.only(top: 4.v), child: Column(children: [_buildRpCounter(rpCounter: "lbl_sapi_potong".tr, peternakSpiKita: "lbl_400_700_kg".tr), SizedBox(height: 5.v), _buildRpCounter(rpCounter: "lbl_rp_18_000_000".tr, peternakSpiKita: "msg_peternak_spi_kita".tr)]))])); } 
/// Section Widget
Widget _buildDiantar() { return Obx(() => Padding(padding: EdgeInsets.only(left: 28.h), child: CustomRadioButton(text: "lbl_diantar".tr, value: "lbl_diantar".tr, groupValue: controller.radioGroup.value, onChange: (value) {controller.radioGroup.value = value;}))); } 
/// Section Widget
Widget _buildJlWonokromoPsr() { return Align(alignment: Alignment.center, child: SizedBox(height: 57.v, width: 357.h, child: Stack(alignment: Alignment.bottomLeft, children: [Align(alignment: Alignment.topCenter, child: SizedBox(width: 357.h, child: Text("msg_jl_wonokromo_psr".tr, maxLines: 2, overflow: TextOverflow.ellipsis, textAlign: TextAlign.justify, style: theme.textTheme.bodySmall!.copyWith(height: 1.69)))), Align(alignment: Alignment.bottomLeft, child: Padding(padding: EdgeInsets.only(left: 1.h), child: Text("lbl_id_230033".tr, style: theme.textTheme.bodySmall)))]))); } 
/// Section Widget
Widget _buildSubtotalItem() { return Align(alignment: Alignment.center, child: Padding(padding: EdgeInsets.only(left: 25.h, right: 32.h), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Padding(padding: EdgeInsets.only(bottom: 2.v), child: Text("msg_subtotal_1_item".tr, style: CustomTextStyles.bodySmallSecondaryContainer)), Padding(padding: EdgeInsets.only(top: 2.v), child: Text("lbl_rp_18_000_000".tr, style: CustomTextStyles.bodySmallSecondaryContainer))]))); } 
/// Section Widget
Widget _buildLihat() { return Align(alignment: Alignment.center, child: Padding(padding: EdgeInsets.only(left: 19.h, right: 15.h), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, crossAxisAlignment: CrossAxisAlignment.start, children: [Padding(padding: EdgeInsets.only(top: 3.v, bottom: 7.v), child: Text("lbl_foto_jpeg".tr, style: CustomTextStyles.bodySmallSecondaryContainer)), CustomOutlinedButton(height: 28.v, width: 116.h, text: "lbl_lihat".tr, buttonTextStyle: CustomTextStyles.bodySmallOnErrorContainer_1, onPressed: () {onTapLihat();})]))); } 
/// Section Widget
Widget _buildButton() { return Container(padding: EdgeInsets.symmetric(horizontal: 30.h, vertical: 37.v), decoration: AppDecoration.fillOnErrorContainer, child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [Padding(padding: EdgeInsets.only(left: 1.h), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Padding(padding: EdgeInsets.only(top: 4.v, bottom: 1.v), child: Text("msg_total_bayar_1_produk".tr, style: CustomTextStyles.bodyLarge16)), Text("lbl_rp_18_000_000".tr, style: theme.textTheme.titleLarge)])), SizedBox(height: 17.v), Align(alignment: Alignment.centerRight, child: Padding(padding: EdgeInsets.only(left: 32.h, right: 10.h), child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [Expanded(child: CustomOutlinedButton(height: 42.v, text: "lbl_tolak".tr, margin: EdgeInsets.only(right: 18.h), buttonStyle: CustomButtonStyles.outlineOnErrorContainerTL20, buttonTextStyle: CustomTextStyles.bodyLargeOnErrorContainer)), Expanded(child: CustomOutlinedButton(height: 42.v, text: "lbl_terima2".tr, margin: EdgeInsets.only(left: 18.h), buttonStyle: CustomButtonStyles.outlineOnErrorContainerTL201, buttonTextStyle: CustomTextStyles.bodyLargeOnErrorContainer))]))), SizedBox(height: 3.v)])); } 
/// Common widget
Widget _buildRpCounter({required String rpCounter, required String peternakSpiKita, }) { return SizedBox(width: 279.h, child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Text(rpCounter, style: theme.textTheme.bodyLarge!.copyWith(color: appTheme.black900)), Padding(padding: EdgeInsets.only(top: 6.v), child: Text(peternakSpiKita, style: CustomTextStyles.bodySmallGray700_1.copyWith(color: appTheme.gray700)))])); } 
/// Navigates to the pesananScreen when the action is triggered.
onTapRewind() { Get.toNamed(AppRoutes.pesananScreen, ); } 
/// Navigates to the buktiPembayaranScreen when the action is triggered.
onTapLihat() { Get.toNamed(AppRoutes.buktiPembayaranScreen, ); } 
 }
