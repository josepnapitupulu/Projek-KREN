import 'controller/edit_profile_beranda_two_controller.dart';
import 'package:flutter/material.dart';
import 'package:example/core/app_export.dart';
import 'package:example/core/utils/validation_functions.dart';
import 'package:example/widgets/custom_drop_down.dart';
import 'package:example/widgets/custom_outlined_button.dart';
import 'package:example/widgets/custom_text_form_field.dart';
// ignore_for_file: must_be_immutable
class EditProfileBerandaTwoScreen extends GetWidget<EditProfileBerandaTwoController> {EditProfileBerandaTwoScreen({Key? key}) : super(key: key);

GlobalKey<FormState> _formKey = GlobalKey<FormState>();

@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(resizeToAvoidBottomInset: false, body: Form(key: _formKey, child: SizedBox(width: double.maxFinite, child: SingleChildScrollView(child: Column(children: [_buildEditFotoAkun(), SizedBox(height: 21.v), Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.only(left: 31.h), child: Text("lbl_nama_peternakan".tr, style: theme.textTheme.bodyMedium))), SizedBox(height: 22.v), Divider(color: appTheme.black900, indent: 31.h, endIndent: 39.h), SizedBox(height: 18.v), Padding(padding: EdgeInsets.only(left: 31.h, right: 39.h), child: CustomTextFormField(controller: controller.emailController, hintText: "msg_email_peternakan".tr, textInputAction: TextInputAction.done, textInputType: TextInputType.emailAddress, validator: (value) {if (value == null || (!isValidEmail(value, isRequired: true))) {return "err_msg_please_enter_valid_email".tr;} return null;}, borderDecoration: TextFormFieldStyleHelper.underLineBlack)), SizedBox(height: 23.v), _buildArrowup(), SizedBox(height: 24.v), _buildLokasiPeternakan(), SizedBox(height: 142.v), CustomOutlinedButton(text: "lbl_edit_akun".tr, margin: EdgeInsets.only(left: 41.h, right: 42.h), onPressed: () {onTapEditAkun();}), SizedBox(height: 142.v)])))))); } 
/// Section Widget
Widget _buildEditFotoAkun() { return SizedBox(height: 242.v, width: double.maxFinite, child: Stack(alignment: Alignment.bottomCenter, children: [Align(alignment: Alignment.center, child: Container(padding: EdgeInsets.symmetric(horizontal: 129.h, vertical: 70.v), decoration: AppDecoration.fillPrimary, child: Column(mainAxisSize: MainAxisSize.min, mainAxisAlignment: MainAxisAlignment.center, children: [SizedBox(height: 14.v), CustomImageView(imagePath: ImageConstant.imgImage2025x25, height: 60.v, width: 61.h), SizedBox(height: 3.v), Align(alignment: Alignment.centerRight, child: Padding(padding: EdgeInsets.only(left: 26.h), child: Row(mainAxisAlignment: MainAxisAlignment.end, children: [Padding(padding: EdgeInsets.only(top: 2.v), child: Text("lbl_edit_foto_akun".tr, style: CustomTextStyles.bodyMediumOnErrorContainer_1)), CustomImageView(imagePath: ImageConstant.imgMultimediaCamera, height: 20.adaptSize, width: 20.adaptSize, margin: EdgeInsets.only(left: 10.h, bottom: 3.v))])))]))), Align(alignment: Alignment.bottomCenter, child: Padding(padding: EdgeInsets.only(bottom: 33.v), child: Text("msg2".tr, textAlign: TextAlign.justify, style: theme.textTheme.titleLarge)))])); } 
/// Section Widget
Widget _buildArrowup() { return SizedBox(height: 44.v, width: 344.h, child: Stack(alignment: Alignment.center, children: [CustomDropDown(width: 337.h, icon: Container(margin: EdgeInsets.only(left: 30.h), child: CustomImageView(imagePath: ImageConstant.imgArrowup, height: 25.adaptSize, width: 25.adaptSize)), hintText: "msg_jenis_peternakan".tr, hintStyle: theme.textTheme.bodyMedium!, alignment: Alignment.topCenter, items: controller.editProfileBerandaTwoModelObj.value.dropdownItemList!.value, onChanged: (value) {controller.onSelected(value);}), CustomDropDown(width: 344.h, icon: Container(margin: EdgeInsets.fromLTRB(30.h, 3.v, 7.h, 16.v), child: CustomImageView(imagePath: ImageConstant.imgArrowup, height: 25.adaptSize, width: 25.adaptSize)), hintText: "msg_jenis_peternakan".tr, hintStyle: theme.textTheme.bodyMedium!, alignment: Alignment.center, items: controller.editProfileBerandaTwoModelObj.value.dropdownItemList1!.value, borderDecoration: DropDownStyleHelper.underLineBlack, onChanged: (value) {controller.onSelected1(value);})])); } 
/// Section Widget
Widget _buildLokasiPeternakan() { return SizedBox(height: 47.v, width: 344.h, child: Stack(alignment: Alignment.topRight, children: [Align(alignment: Alignment.center, child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.start, children: [Text("msg_lokasi_peternakan".tr, style: theme.textTheme.bodyMedium), SizedBox(height: 22.v), Divider(color: appTheme.black900)])), CustomImageView(imagePath: ImageConstant.imgLocationAndMap, height: 25.adaptSize, width: 25.adaptSize, alignment: Alignment.topRight, margin: EdgeInsets.only(right: 7.h))])); } 
/// Navigates to the akunPeternakScreen when the action is triggered.
onTapEditAkun() { Get.toNamed(AppRoutes.akunPeternakScreen, ); } 
 }
