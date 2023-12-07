import 'controller/checkout_one_controller.dart';
import 'package:flutter/material.dart';
import 'package:example/core/app_export.dart';
import 'package:example/widgets/custom_elevated_button.dart';
import 'package:example/widgets/custom_outlined_button.dart';
// ignore_for_file: must_be_immutable
class CheckoutOneDialog extends StatelessWidget {CheckoutOneDialog(this.controller, {Key? key}) : super(key: key);

CheckoutOneController controller;

@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SingleChildScrollView(child: _buildFrame()); } 
/// Section Widget
Widget _buildFrame() { return Container(margin: EdgeInsets.only(left: 31.h, right: 31.h, bottom: 403.v), padding: EdgeInsets.symmetric(horizontal: 37.h, vertical: 19.v), decoration: AppDecoration.outlineRed.copyWith(borderRadius: BorderRadiusStyle.roundedBorder25), child: Column(mainAxisSize: MainAxisSize.min, mainAxisAlignment: MainAxisAlignment.center, children: [CustomImageView(imagePath: ImageConstant.imgCalendarPrimarycontainer, height: 82.v, width: 67.h), SizedBox(height: 13.v), Text("msg_checkout_sekarang".tr, style: theme.textTheme.bodyLarge), SizedBox(height: 2.v), Text("msg_pastikan_pesananmu".tr, style: CustomTextStyles.bodySmallGray500_1), SizedBox(height: 8.v), Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.only(right: 10.h), child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [Expanded(child: CustomOutlinedButton(height: 28.v, text: "lbl_batal".tr, margin: EdgeInsets.only(right: 22.h), buttonStyle: CustomButtonStyles.outlineYellowTL14, buttonTextStyle: theme.textTheme.bodySmall!, onPressed: () {onTapBatal();})), Expanded(child: CustomElevatedButton(height: 28.v, text: "lbl_checkout2".tr, margin: EdgeInsets.only(left: 22.h), buttonStyle: CustomButtonStyles.fillYellow, buttonTextStyle: CustomTextStyles.bodySmallOnErrorContainer_1, onPressed: () {onTapCheckout();}))]))), SizedBox(height: 5.v)])); } 
/// Navigates to the checkoutScreen when the action is triggered.
onTapBatal() { Get.toNamed(AppRoutes.checkoutScreen, ); } 
/// Navigates to the pembayaranScreen when the action is triggered.
onTapCheckout() { Get.toNamed(AppRoutes.pembayaranScreen, ); } 
 }
