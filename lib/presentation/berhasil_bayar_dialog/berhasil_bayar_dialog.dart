import 'controller/berhasil_bayar_controller.dart';
import 'package:flutter/material.dart';
import 'package:example/core/app_export.dart';
import 'package:example/widgets/custom_elevated_button.dart';
// ignore_for_file: must_be_immutable
class BerhasilBayarDialog extends StatelessWidget {BerhasilBayarDialog(this.controller, {Key? key}) : super(key: key);

BerhasilBayarController controller;

@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SingleChildScrollView(child: _buildFrame()); } 
/// Section Widget
Widget _buildFrame() { return Container(margin: EdgeInsets.only(left: 31.h, right: 31.h, bottom: 374.v), padding: EdgeInsets.symmetric(horizontal: 58.h, vertical: 24.v), decoration: AppDecoration.outlineRed.copyWith(borderRadius: BorderRadiusStyle.roundedBorder25), child: Column(mainAxisSize: MainAxisSize.min, mainAxisAlignment: MainAxisAlignment.end, children: [SizedBox(height: 7.v), CustomImageView(imagePath: ImageConstant.imgIcon, height: 70.v, width: 73.h), SizedBox(height: 28.v), Text("msg_pembayaranmu_sedang".tr, style: theme.textTheme.bodyMedium), SizedBox(height: 11.v), Text("msg_lihat_status_pembayaran".tr, style: theme.textTheme.bodySmall), SizedBox(height: 15.v), CustomElevatedButton(height: 28.v, width: 103.h, text: "lbl_lihat_status".tr, buttonStyle: CustomButtonStyles.fillYellow, buttonTextStyle: CustomTextStyles.bodySmallOnErrorContainer_1, onPressed: () {onTapLihatStatus();})])); } 
/// Navigates to the sedangDiprosesScreen when the action is triggered.
onTapLihatStatus() { Get.toNamed(AppRoutes.sedangDiprosesScreen, ); } 
 }
