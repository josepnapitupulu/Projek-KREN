import 'controller/checkout_controller.dart';
import 'package:flutter/material.dart';
import 'package:example/core/app_export.dart';
import 'package:example/widgets/app_bar/appbar_leading_image.dart';
import 'package:example/widgets/app_bar/appbar_subtitle_two.dart';
import 'package:example/widgets/app_bar/custom_app_bar.dart';
import 'package:example/widgets/custom_outlined_button.dart';
import 'package:example/widgets/custom_radio_button.dart';
import 'package:example/widgets/custom_text_form_field.dart';
import 'package:example/presentation/checkout_one_dialog/checkout_one_dialog.dart';
import 'package:example/presentation/checkout_one_dialog/controller/checkout_one_controller.dart';class CheckoutScreen extends GetWidget<CheckoutController> {const CheckoutScreen({Key? key}) : super(key: key);

@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(resizeToAvoidBottomInset: false, body: SizedBox(width: double.maxFinite, child: Column(children: [_buildAtas(), SizedBox(height: 13.v), Expanded(child: SingleChildScrollView(child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [_buildSapiPotong1(), SizedBox(height: 15.v), Padding(padding: EdgeInsets.only(left: 15.h, right: 23.h), child: _buildAlamatPengiriman(alamatPengiriman: "msg_metode_pembayaran".tr, pilihAlamat: "lbl_pilih_metode".tr)), SizedBox(height: 4.v), Padding(padding: EdgeInsets.only(left: 15.h), child: Row(children: [CustomImageView(imagePath: ImageConstant.imgImage25, height: 11.v, width: 32.h, margin: EdgeInsets.only(top: 3.v, bottom: 2.v)), Padding(padding: EdgeInsets.only(left: 4.h), child: Text("msg_transfer_bca_taternak".tr, style: theme.textTheme.bodySmall))])), SizedBox(height: 28.v), _buildMetodePengambilan(), SizedBox(height: 4.v), Padding(padding: EdgeInsets.only(left: 25.h), child: Row(children: [CustomImageView(imagePath: ImageConstant.imgCheckboxBlankCircleLine, height: 17.adaptSize, width: 17.adaptSize, margin: EdgeInsets.only(bottom: 2.v)), Padding(padding: EdgeInsets.only(left: 11.h, top: 2.v), child: Text("lbl_ambil_ditempat".tr, style: theme.textTheme.bodySmall))])), SizedBox(height: 6.v), _buildDiantar(), SizedBox(height: 27.v), Padding(padding: EdgeInsets.only(left: 15.h, right: 23.h), child: _buildAlamatPengiriman(alamatPengiriman: "msg_alamat_pengiriman".tr, pilihAlamat: "lbl_pilih_alamat".tr)), SizedBox(height: 4.v), Padding(padding: EdgeInsets.only(left: 32.h), child: Text("msg_sarah_rosiana".tr, style: theme.textTheme.bodySmall)), SizedBox(height: 3.v), Align(alignment: Alignment.center, child: Container(width: 357.h, margin: EdgeInsets.only(left: 32.h, right: 23.h), child: Text("msg_jl_wonokromo_psr".tr, maxLines: 2, overflow: TextOverflow.ellipsis, textAlign: TextAlign.justify, style: theme.textTheme.bodySmall!.copyWith(height: 1.69)))), Padding(padding: EdgeInsets.only(left: 33.h), child: Text("lbl_id_230033".tr, style: theme.textTheme.bodySmall)), SizedBox(height: 27.v), _buildJadwalPengirimanPengambilan(), SizedBox(height: 6.v), Padding(padding: EdgeInsets.only(left: 25.h), child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [CustomImageView(imagePath: ImageConstant.imgCalendar, height: 24.adaptSize, width: 24.adaptSize), Padding(padding: EdgeInsets.only(left: 16.h, top: 2.v, bottom: 4.v), child: Text("msg_01_desember_2022".tr, style: CustomTextStyles.bodySmallSecondaryContainer))])), SizedBox(height: 20.v), Padding(padding: EdgeInsets.only(left: 15.h), child: Text("msg_detail_transaksi".tr, style: theme.textTheme.bodyMedium)), SizedBox(height: 9.v), _buildSubtotalItem(), SizedBox(height: 23.v), Padding(padding: EdgeInsets.only(left: 15.h), child: Text("msg_catatan_transaksi".tr, style: theme.textTheme.bodyMedium)), SizedBox(height: 20.v), Padding(padding: EdgeInsets.only(left: 18.h, right: 27.h), child: CustomTextFormField(controller: controller.masukkancatatanController, hintText: "msg_masukkan_catatan".tr, hintStyle: CustomTextStyles.bodySmallSecondaryContainer, textInputAction: TextInputAction.done, alignment: Alignment.center, contentPadding: EdgeInsets.symmetric(horizontal: 6.h), borderDecoration: TextFormFieldStyleHelper.underLineSecondaryContainer)), SizedBox(height: 5.v), _buildButton()])))])))); } 
/// Section Widget
Widget _buildAtas() { return Container(padding: EdgeInsets.symmetric(vertical: 8.v), decoration: AppDecoration.fillPrimary, child: Column(children: [SizedBox(height: 9.v), CustomAppBar(height: 27.v, leadingWidth: 49.h, leading: AppbarLeadingImage(imagePath: ImageConstant.imgRewindOnerrorcontainer, margin: EdgeInsets.only(left: 17.h, bottom: 3.v), onTap: () {onTapRewind();}), title: AppbarSubtitleTwo(text: "lbl_check_out2".tr, margin: EdgeInsets.only(left: 11.h)))])); } 
/// Section Widget
Widget _buildSapiPotong1() { return Container(width: double.maxFinite, padding: EdgeInsets.symmetric(vertical: 14.v), decoration: AppDecoration.outlineBlack9001, child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [CustomImageView(imagePath: ImageConstant.imgRectangle57, height: 52.v, width: 70.h), Padding(padding: EdgeInsets.only(top: 4.v), child: Column(children: [_buildRpCounter(rpCounter: "lbl_sapi_potong".tr, peternakSpiKita: "lbl_400_700_kg".tr), SizedBox(height: 5.v), _buildRpCounter(rpCounter: "lbl_rp_18_000_000".tr, peternakSpiKita: "msg_peternak_spi_kita".tr)]))])); } 
/// Section Widget
Widget _buildMetodePengambilan() { return Align(alignment: Alignment.center, child: Padding(padding: EdgeInsets.only(left: 15.h, right: 21.h), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, crossAxisAlignment: CrossAxisAlignment.start, children: [Text("msg_metode_pengambilan".tr, style: theme.textTheme.bodyMedium), Padding(padding: EdgeInsets.only(bottom: 6.v), child: Text("lbl_pilih_metode".tr, style: CustomTextStyles.bodySmallPrimary10))]))); } 
/// Section Widget
Widget _buildDiantar() { return Obx(() => Padding(padding: EdgeInsets.only(left: 25.h), child: CustomRadioButton(text: "lbl_diantar".tr, value: "lbl_diantar".tr, groupValue: controller.radioGroup.value, onChange: (value) {controller.radioGroup.value = value;}))); } 
/// Section Widget
Widget _buildJadwalPengirimanPengambilan() { return Align(alignment: Alignment.center, child: Padding(padding: EdgeInsets.only(left: 15.h, right: 23.h), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Text("msg_jadwal_pengiriman_pengambilan".tr, style: theme.textTheme.bodyMedium), Padding(padding: EdgeInsets.only(top: 5.v), child: Text("lbl_ganti_hari".tr, style: CustomTextStyles.bodySmallPrimary10))]))); } 
/// Section Widget
Widget _buildSubtotalItem() { return Align(alignment: Alignment.center, child: Padding(padding: EdgeInsets.symmetric(horizontal: 23.h), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Padding(padding: EdgeInsets.only(bottom: 2.v), child: Text("msg_subtotal_1_item".tr, style: CustomTextStyles.bodySmallSecondaryContainer)), Padding(padding: EdgeInsets.only(top: 2.v), child: Text("lbl_rp_18_000_000".tr, style: CustomTextStyles.bodySmallSecondaryContainer))]))); } 
/// Section Widget
Widget _buildButton() { return Container(padding: EdgeInsets.symmetric(horizontal: 30.h, vertical: 33.v), decoration: AppDecoration.fillOnErrorContainer, child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [SizedBox(height: 4.v), Padding(padding: EdgeInsets.only(left: 1.h), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Padding(padding: EdgeInsets.only(top: 4.v, bottom: 1.v), child: Text("msg_total_bayar_1_produk".tr, style: CustomTextStyles.bodyLarge16)), Text("lbl_rp_18_000_000".tr, style: theme.textTheme.titleLarge)])), SizedBox(height: 25.v), CustomOutlinedButton(height: 42.v, text: "lbl_check_out".tr, buttonStyle: CustomButtonStyles.outlineOnErrorContainerTL201, buttonTextStyle: CustomTextStyles.bodyLargeOnErrorContainer, onPressed: () {onTapCheckOut();})])); } 
/// Common widget
Widget _buildRpCounter({required String rpCounter, required String peternakSpiKita, }) { return SizedBox(width: 279.h, child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Text(rpCounter, style: theme.textTheme.bodyLarge!.copyWith(color: appTheme.black900)), Padding(padding: EdgeInsets.only(top: 6.v), child: Text(peternakSpiKita, style: CustomTextStyles.bodySmallGray700_1.copyWith(color: appTheme.gray700)))])); } 
/// Common widget
Widget _buildAlamatPengiriman({required String alamatPengiriman, required String pilihAlamat, }) { return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Text(alamatPengiriman, style: theme.textTheme.bodyMedium!.copyWith(color: appTheme.black900)), Padding(padding: EdgeInsets.only(top: 4.v, bottom: 2.v), child: Text(pilihAlamat, style: CustomTextStyles.bodySmallPrimary10.copyWith(color: theme.colorScheme.primary)))]); } 
/// Navigates to the keranjangProdukPeternakanScreen when the action is triggered.
onTapRewind() { Get.toNamed(AppRoutes.keranjangProdukPeternakanScreen, ); } 

/// Displays a dialog with the [CheckoutOneDialog] content.
onTapCheckOut() { Get.dialog(AlertDialog(backgroundColor: Colors.transparent, contentPadding: EdgeInsets.zero, insetPadding: const EdgeInsets.only(left: 0), content:CheckoutOneDialog(Get.put(CheckoutOneController(),),),)); } 
 }