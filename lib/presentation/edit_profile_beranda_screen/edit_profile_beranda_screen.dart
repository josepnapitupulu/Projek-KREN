import 'controller/edit_profile_beranda_controller.dart';
import 'package:flutter/material.dart';
import 'package:example/core/app_export.dart';
import 'package:example/core/utils/validation_functions.dart';
import 'package:example/widgets/custom_outlined_button.dart';
import 'package:example/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class EditProfileBerandaScreen extends GetWidget<EditProfileBerandaController> {
  EditProfileBerandaScreen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Form(
          key: _formKey,
          child: SizedBox(
            width: double.maxFinite,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  _buildFrame(),
                  SizedBox(height: 21.v),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.only(left: 31.h),
                      child: Text(
                        "lbl_nama_peternakan".tr,
                        style: theme.textTheme.bodyMedium,
                      ),
                    ),
                  ),
                  SizedBox(height: 22.v),
                  Divider(
                    color: appTheme.black900,
                    indent: 31.h,
                    endIndent: 39.h,
                  ),
                  SizedBox(height: 18.v),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 31.h,
                      right: 39.h,
                    ),
                    child: CustomTextFormField(
                      controller: controller.emailController,
                      hintText: "msg_email_peternakan".tr,
                      textInputAction: TextInputAction.done,
                      textInputType: TextInputType.emailAddress,
                      validator: (value) {
                        if (value == null ||
                            (!isValidEmail(value, isRequired: true))) {
                          return "err_msg_please_enter_valid_email".tr;
                        }
                        return null;
                      },
                      borderDecoration: TextFormFieldStyleHelper.underLineBlack,
                    ),
                  ),
                  SizedBox(height: 23.v),
                  _buildLokasiPeternakan(),
                  SizedBox(height: 125.v),
                  CustomOutlinedButton(
                    text: "lbl_edit_akun".tr,
                    margin: EdgeInsets.only(
                      left: 41.h,
                      right: 42.h,
                    ),
                  ),
                  SizedBox(height: 125.v),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildFrame() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 33.v),
      decoration: AppDecoration.fillPrimary,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          SizedBox(height: 51.v),
          CustomImageView(
            imagePath: ImageConstant.imgImage2025x25,
            height: 60.v,
            width: 61.h,
          ),
          SizedBox(height: 3.v),
          Align(
            alignment: Alignment.centerRight,
            child: Padding(
              padding: EdgeInsets.only(right: 129.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 2.v),
                    child: Text(
                      "lbl_edit_foto_akun".tr,
                      style: CustomTextStyles.bodyMediumOnErrorContainer_1,
                    ),
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgMultimediaCamera,
                    height: 20.adaptSize,
                    width: 20.adaptSize,
                    margin: EdgeInsets.only(
                      left: 10.h,
                      bottom: 3.v,
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 9.v),
          Text(
            "msg2".tr,
            textAlign: TextAlign.justify,
            style: theme.textTheme.titleLarge,
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildLokasiPeternakan() {
    return SizedBox(
      height: 132.v,
      width: 344.h,
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: EdgeInsets.only(bottom: 17.v),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "msg_lokasi_peternakan".tr,
                    style: theme.textTheme.bodyMedium,
                  ),
                  SizedBox(height: 22.v),
                  Divider(
                    color: appTheme.black900,
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              right: 7.h,
              bottom: 104.v,
            ),
            child: _buildJenisPeternakan(
              jenisPeternakan: "msg_jenis_peternakan".tr,
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgLocationAndMap,
            height: 25.adaptSize,
            width: 25.adaptSize,
            alignment: Alignment.bottomRight,
            margin: EdgeInsets.only(
              right: 7.h,
              bottom: 39.v,
            ),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Padding(
                  padding: EdgeInsets.only(right: 7.h),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(bottom: 7.v),
                        child: Text(
                          "msg_jenis_peternakan".tr,
                          style: theme.textTheme.bodyMedium,
                        ),
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgArrowup,
                        height: 25.adaptSize,
                        width: 25.adaptSize,
                        margin: EdgeInsets.only(top: 3.v),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 15.v),
                Divider(
                  color: appTheme.black900,
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Container(
              height: 120.v,
              width: 188.h,
              margin: EdgeInsets.only(right: 9.h),
              child: Stack(
                alignment: Alignment.center,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgLocationAndMapBlack900,
                    height: 22.v,
                    width: 25.h,
                    alignment: Alignment.bottomRight,
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      decoration: AppDecoration.fillOnErrorContainer,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          SizedBox(
                            height: 22.v,
                            width: 188.h,
                            child: Stack(
                              alignment: Alignment.topLeft,
                              children: [
                                Align(
                                  alignment: Alignment.bottomCenter,
                                  child: SizedBox(
                                    width: 188.h,
                                    child: Divider(
                                      color: appTheme.gray300,
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.topLeft,
                                  child: Padding(
                                    padding: EdgeInsets.only(left: 7.h),
                                    child: Text(
                                      "lbl_babi2".tr,
                                      style: theme.textTheme.bodyMedium,
                                    ),
                                  ),
                                ),
                                CustomImageView(
                                  imagePath: ImageConstant.imgCheckboxLine,
                                  height: 20.adaptSize,
                                  width: 20.adaptSize,
                                  alignment: Alignment.bottomRight,
                                  margin: EdgeInsets.only(right: 9.h),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 1.v),
                          SizedBox(
                            height: 50.v,
                            width: 188.h,
                            child: Stack(
                              alignment: Alignment.topLeft,
                              children: [
                                Align(
                                  alignment: Alignment.topCenter,
                                  child: Padding(
                                    padding: EdgeInsets.only(top: 22.v),
                                    child: SizedBox(
                                      width: 188.h,
                                      child: Divider(
                                        color: appTheme.gray300,
                                      ),
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.topLeft,
                                  child: Padding(
                                    padding: EdgeInsets.only(left: 7.h),
                                    child: Text(
                                      "lbl_kerbau".tr,
                                      style: theme.textTheme.bodyMedium,
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.center,
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      CustomImageView(
                                        imagePath:
                                            ImageConstant.imgCheckboxLine,
                                        height: 20.adaptSize,
                                        width: 20.adaptSize,
                                        alignment: Alignment.centerRight,
                                        margin: EdgeInsets.only(right: 9.h),
                                      ),
                                      SizedBox(height: 5.v),
                                      Padding(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 8.h),
                                        child: _buildSapi(
                                          sapi: "lbl_kambing".tr,
                                        ),
                                      ),
                                      SizedBox(height: 2.v),
                                      SizedBox(
                                        width: 188.h,
                                        child: Divider(
                                          color: appTheme.gray300,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 8.h),
                            child: _buildSapi(
                              sapi: "lbl_sapi2".tr,
                            ),
                          ),
                          SizedBox(
                            height: 21.v,
                            width: 188.h,
                            child: Stack(
                              alignment: Alignment.center,
                              children: [
                                Align(
                                  alignment: Alignment.topCenter,
                                  child: Padding(
                                    padding: EdgeInsets.only(top: 1.v),
                                    child: SizedBox(
                                      width: 188.h,
                                      child: Divider(
                                        color: appTheme.gray300,
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 8.h),
                                  child: _buildSapi(
                                    sapi: "lbl_domba".tr,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildJenisPeternakan({required String jenisPeternakan}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(bottom: 7.v),
          child: Text(
            jenisPeternakan,
            style: theme.textTheme.bodyMedium!.copyWith(
              color: appTheme.black900,
            ),
          ),
        ),
        CustomImageView(
          imagePath: ImageConstant.imgArrowup,
          height: 25.adaptSize,
          width: 25.adaptSize,
          margin: EdgeInsets.only(top: 3.v),
        ),
      ],
    );
  }

  /// Common widget
  Widget _buildSapi({required String sapi}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: EdgeInsets.only(top: 3.v),
          child: Text(
            sapi,
            style: theme.textTheme.bodyMedium!.copyWith(
              color: appTheme.black900,
            ),
          ),
        ),
        CustomImageView(
          imagePath: ImageConstant.imgCheckboxBlankLine,
          height: 20.adaptSize,
          width: 20.adaptSize,
          margin: EdgeInsets.only(bottom: 3.v),
        ),
      ],
    );
  }
}
