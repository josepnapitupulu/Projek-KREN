import 'controller/register_controller.dart';
import 'package:flutter/material.dart';
import 'package:example/core/app_export.dart';
import 'package:example/core/utils/validation_functions.dart';
import 'package:example/widgets/custom_elevated_button.dart';
import 'package:example/widgets/custom_text_form_field.dart';
import 'package:example/domain/googleauth/google_auth_helper.dart';
// ignore_for_file: must_be_immutable
class RegisterScreen extends GetWidget<RegisterController> {RegisterScreen({Key? key}) : super(key: key);

GlobalKey<FormState> _formKey = GlobalKey<FormState>();

@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(resizeToAvoidBottomInset: false, body: Form(key: _formKey, child: SizedBox(width: double.maxFinite, child: SingleChildScrollView(child: Column(children: [_buildAtas(), SizedBox(height: 18.v), CustomImageView(imagePath: ImageConstant.imgImage20129x129, height: 129.adaptSize, width: 129.adaptSize), SizedBox(height: 21.v), Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.only(left: 26.h), child: Text("lbl_daftar".tr, style: theme.textTheme.headlineSmall))), SizedBox(height: 23.v), _buildNama(), SizedBox(height: 20.v), _buildEmail(), SizedBox(height: 19.v), _buildPassword(), SizedBox(height: 52.v), _buildDaftar(), SizedBox(height: 35.v), _buildLineTwentyOne(), SizedBox(height: 29.v), _buildGoogle(), SizedBox(height: 29.v)])))))); } 
/// Section Widget
Widget _buildAtas() { return Container(width: double.maxFinite, padding: EdgeInsets.symmetric(horizontal: 17.h), decoration: AppDecoration.fillOnErrorContainer1, child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [SizedBox(height: 20.v), CustomImageView(imagePath: ImageConstant.imgRewind, height: 24.v, width: 32.h)])); } 
/// Section Widget
Widget _buildNama() { return Padding(padding: EdgeInsets.only(left: 17.h, right: 16.h), child: CustomTextFormField(controller: controller.namaController, hintText: "lbl_nama".tr, hintStyle: theme.textTheme.titleLarge!, contentPadding: EdgeInsets.symmetric(horizontal: 9.h), borderDecoration: TextFormFieldStyleHelper.underLineOnPrimaryContainer)); } 
/// Section Widget
Widget _buildEmail() { return Padding(padding: EdgeInsets.only(left: 17.h, right: 16.h), child: CustomTextFormField(controller: controller.emailController, hintText: "lbl_email".tr, hintStyle: theme.textTheme.titleLarge!, textInputType: TextInputType.emailAddress, validator: (value) {if (value == null || (!isValidEmail(value, isRequired: true))) {return "err_msg_please_enter_valid_email".tr;} return null;}, contentPadding: EdgeInsets.symmetric(horizontal: 9.h), borderDecoration: TextFormFieldStyleHelper.underLineOnPrimaryContainer)); } 
/// Section Widget
Widget _buildPassword() { return Padding(padding: EdgeInsets.only(left: 17.h, right: 16.h), child: Obx(() => CustomTextFormField(controller: controller.passwordController, hintText: "lbl_password".tr, hintStyle: theme.textTheme.titleLarge!, textInputAction: TextInputAction.done, textInputType: TextInputType.visiblePassword, suffix: InkWell(onTap: () {controller.isShowPassword.value = !controller.isShowPassword.value;}, child: Container(margin: EdgeInsets.fromLTRB(30.h, 2.v, 7.h, 15.v), child: CustomImageView(imagePath: ImageConstant.imgOutlineStatusEyeclosed, height: 24.adaptSize, width: 24.adaptSize))), suffixConstraints: BoxConstraints(maxHeight: 41.v), validator: (value) {if (value == null || (!isValidPassword(value, isRequired: true))) {return "err_msg_please_enter_valid_password".tr;} return null;}, obscureText: controller.isShowPassword.value, contentPadding: EdgeInsets.only(left: 9.h), borderDecoration: TextFormFieldStyleHelper.underLineOnPrimaryContainer))); } 
/// Section Widget
Widget _buildDaftar() { return CustomElevatedButton(height: 47.v, text: "lbl_daftar".tr, margin: EdgeInsets.only(left: 17.h, right: 16.h), buttonStyle: CustomButtonStyles.fillPrimary, buttonTextStyle: CustomTextStyles.titleLargeOnErrorContainer); } 
/// Section Widget
Widget _buildLineTwentyOne() { return Padding(padding: EdgeInsets.symmetric(horizontal: 16.h), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, crossAxisAlignment: CrossAxisAlignment.start, children: [Padding(padding: EdgeInsets.only(top: 8.v, bottom: 11.v), child: SizedBox(width: 91.h, child: Divider(color: theme.colorScheme.onPrimaryContainer))), Text("msg_atau_mendaftar_dengan".tr, style: CustomTextStyles.bodyMediumOnPrimaryContainer_1), Padding(padding: EdgeInsets.only(top: 8.v, bottom: 11.v), child: SizedBox(width: 93.h, child: Divider(color: theme.colorScheme.onPrimaryContainer)))])); } 
/// Section Widget
Widget _buildGoogle() { return CustomElevatedButton(height: 47.v, text: "lbl_google".tr, margin: EdgeInsets.only(left: 17.h, right: 16.h), leftIcon: Container(margin: EdgeInsets.only(right: 3.h), child: CustomImageView(imagePath: ImageConstant.imgImage24, height: 26.v, width: 27.h)), buttonStyle: CustomButtonStyles.fillGray, buttonTextStyle: theme.textTheme.titleLarge!, onPressed: () {onTapGoogle();}); } 
/// Performs a Google sign-in and returns a [GoogleUser] object.
///
/// If the sign-in is successful, the [onSuccess] callback will be called with
/// a TODO comment needed to be modified by you.
/// If the sign-in fails, the [onError] callback will be called with the error message.
///
/// Throws an exception if the Google sign-in process fails.
onTapGoogle() async  {         await GoogleAuthHelper().googleSignInProcess().then((googleUser) {
          if(googleUser!=null){
            //TODO Actions to be performed after signin
          } else {
            Get.snackbar('Error', 'user data is empty');
          }
        }).catchError((onError) {
            Get.snackbar('Error', onError.toString());
        });
         } 
 }
