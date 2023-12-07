import 'controller/produk_controller.dart';
import 'package:flutter/material.dart';
import 'package:example/core/app_export.dart';
import 'package:example/widgets/app_bar/appbar_leading_image.dart';
import 'package:example/widgets/app_bar/appbar_subtitle_two.dart';
import 'package:example/widgets/app_bar/custom_app_bar.dart';
import 'package:example/widgets/custom_drop_down.dart';
import 'package:example/widgets/custom_elevated_button.dart';
import 'package:example/widgets/custom_outlined_button.dart';
import 'package:example/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class ProdukScreen extends GetWidget<ProdukController> {
  const ProdukScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              _buildAtas(),
              SizedBox(height: 13.v),
              Expanded(
                child: SingleChildScrollView(
                  child: Padding(
                    padding: EdgeInsets.only(
                      left: 12.h,
                      right: 39.h,
                      bottom: 5.v,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: EdgeInsets.only(left: 19.h),
                            child: Text(
                              "msg_lengkapi_data_hewanmu".tr,
                              style: CustomTextStyles.bodySmallPrimary_1,
                            ),
                          ),
                        ),
                        SizedBox(height: 3.v),
                        Align(
                          alignment: Alignment.center,
                          child: Text(
                            "msg_lengkapi_terlebh".tr,
                            style: CustomTextStyles.bodySmallPrimary_1,
                          ),
                        ),
                        SizedBox(height: 20.v),
                        Padding(
                          padding: EdgeInsets.only(
                            left: 28.h,
                            right: 9.h,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                height: 17.v,
                                width: 50.h,
                                margin: EdgeInsets.only(bottom: 6.v),
                                child: Stack(
                                  alignment: Alignment.center,
                                  children: [
                                    Align(
                                      alignment: Alignment.center,
                                      child: Text(
                                        "lbl_jenis_hewan".tr,
                                        style: CustomTextStyles.bodySmall_2,
                                      ),
                                    ),
                                    Align(
                                      alignment: Alignment.center,
                                      child: Text(
                                        "lbl_jenis_hewan".tr,
                                        style: CustomTextStyles.bodySmall_2,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              CustomImageView(
                                imagePath: ImageConstant.imgArrowup,
                                height: 20.adaptSize,
                                width: 20.adaptSize,
                                margin: EdgeInsets.only(top: 3.v),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 14.v),
                        Divider(
                          color: appTheme.gray300,
                          indent: 28.h,
                          endIndent: 4.h,
                        ),
                        SizedBox(height: 9.v),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: EdgeInsets.only(left: 32.h),
                            child: Text(
                              "lbl_harga".tr,
                              style: CustomTextStyles.bodySmall_2,
                            ),
                          ),
                        ),
                        SizedBox(height: 17.v),
                        Divider(
                          color: appTheme.gray300,
                          indent: 32.h,
                        ),
                        SizedBox(height: 15.v),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: EdgeInsets.only(left: 32.h),
                            child: Text(
                              "lbl_berat".tr,
                              style: CustomTextStyles.bodySmall_2,
                            ),
                          ),
                        ),
                        SizedBox(height: 16.v),
                        Padding(
                          padding: EdgeInsets.only(left: 29.h),
                          child: CustomDropDown(
                            icon: Container(
                              margin:
                                  EdgeInsets.fromLTRB(30.h, 10.v, 9.h, 15.v),
                              child: CustomImageView(
                                imagePath: ImageConstant.imgArrowup,
                                height: 20.adaptSize,
                                width: 20.adaptSize,
                              ),
                            ),
                            hintText: "lbl_kondisi_hewan".tr,
                            items: controller
                                .produkModelObj.value.dropdownItemList!.value,
                            onChanged: (value) {
                              controller.onSelected(value);
                            },
                          ),
                        ),
                        SizedBox(height: 23.v),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: EdgeInsets.only(
                              left: 32.h,
                              right: 49.h,
                            ),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(bottom: 26.v),
                                  child: Text(
                                    "lbl_jenis_kelamin".tr,
                                    style: CustomTextStyles.bodySmall_2,
                                  ),
                                ),
                                Spacer(),
                                CustomImageView(
                                  imagePath: ImageConstant.imgArrowup,
                                  height: 20.adaptSize,
                                  width: 20.adaptSize,
                                  margin: EdgeInsets.only(bottom: 23.v),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                    left: 25.h,
                                    top: 18.v,
                                    bottom: 7.v,
                                  ),
                                  child: Text(
                                    "lbl_siap_dijual".tr,
                                    style: CustomTextStyles.bodySmall_2,
                                  ),
                                ),
                                CustomImageView(
                                  imagePath: ImageConstant.imgMonochromeToggle,
                                  height: 31.v,
                                  width: 40.h,
                                  margin: EdgeInsets.only(
                                    left: 10.h,
                                    top: 12.v,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        _buildBetina1(),
                        SizedBox(height: 32.v),
                        Divider(
                          color: appTheme.gray300,
                          indent: 32.h,
                        ),
                        SizedBox(height: 35.v),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: EdgeInsets.only(left: 31.h),
                            child: Text(
                              "lbl_tambahkan_foto".tr,
                              style: theme.textTheme.bodySmall,
                            ),
                          ),
                        ),
                        SizedBox(height: 6.v),
                        _buildPilihFile1(),
                        SizedBox(height: 36.v),
                        _buildRiwayatPenimbangan(),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: _buildButton(),
      ),
    );
  }

  /// Section Widget
  Widget _buildAtas() {
    return Container(
      decoration: AppDecoration.fillPrimary,
      child: Column(
        children: [
          SizedBox(height: 27.v),
          CustomAppBar(
            leadingWidth: 49.h,
            leading: AppbarLeadingImage(
              imagePath: ImageConstant.imgRewindOnerrorcontainer,
              margin: EdgeInsets.only(
                left: 17.h,
                bottom: 1.v,
              ),
            ),
            title: AppbarSubtitleTwo(
              text: "lbl_tambah_produk".tr,
              margin: EdgeInsets.only(left: 11.h),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildBetina() {
    return CustomTextFormField(
      width: 200.h,
      controller: controller.betinaController,
      hintText: "lbl_betina".tr,
      contentPadding: EdgeInsets.symmetric(horizontal: 7.h),
    );
  }

  /// Section Widget
  Widget _buildBetina1() {
    return SizedBox(
      height: 167.v,
      width: 363.h,
      child: Stack(
        alignment: Alignment.bottomLeft,
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: EdgeInsets.only(
                left: 32.h,
                top: 11.v,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 153.h,
                    child: Divider(
                      color: appTheme.gray300,
                    ),
                  ),
                  SizedBox(height: 16.v),
                  Text(
                    "msg_jenis_pengiriman".tr,
                    style: CustomTextStyles.bodySmall_2,
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Padding(
              padding: EdgeInsets.only(
                left: 32.h,
                bottom: 53.v,
              ),
              child: Text(
                "msg_deskripsi_produk".tr,
                style: CustomTextStyles.bodySmall_2,
              ),
            ),
          ),
          Align(
            alignment: Alignment.topRight,
            child: Padding(
              padding: EdgeInsets.only(top: 66.v),
              child: SizedBox(
                width: 331.h,
                child: Divider(
                  color: appTheme.gray300,
                ),
              ),
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgArrowup,
            height: 20.adaptSize,
            width: 20.adaptSize,
            alignment: Alignment.topRight,
            margin: EdgeInsets.only(
              top: 25.v,
              right: 19.h,
            ),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  padding: EdgeInsets.symmetric(vertical: 2.v),
                  decoration: AppDecoration.fillOnErrorContainer,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(height: 4.v),
                      Padding(
                        padding: EdgeInsets.only(left: 7.h),
                        child: Text(
                          "lbl_jantan".tr,
                          style: theme.textTheme.bodyMedium,
                        ),
                      ),
                      SizedBox(height: 1.v),
                      _buildBetina(),
                    ],
                  ),
                ),
                SizedBox(
                  width: 200.h,
                  child: Divider(
                    color: appTheme.gray300,
                  ),
                ),
                SizedBox(height: 71.v),
                Align(
                  alignment: Alignment.centerRight,
                  child: SizedBox(
                    height: 30.v,
                    width: 26.h,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildPilihFile() {
    return CustomElevatedButton(
      width: 64.h,
      text: "lbl_pilih_file".tr,
      buttonTextStyle: CustomTextStyles.bodySmall10_1,
      alignment: Alignment.centerRight,
    );
  }

  /// Section Widget
  Widget _buildPilihFile1() {
    return SizedBox(
      height: 25.v,
      width: 332.h,
      child: Stack(
        alignment: Alignment.centerRight,
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Container(
              height: 25.v,
              width: 300.h,
              decoration: BoxDecoration(
                border: Border.all(
                  color: appTheme.gray300,
                  width: 1.h,
                ),
              ),
            ),
          ),
          _buildPilihFile(),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildRiwayatPenimbangan() {
    return Padding(
      padding: EdgeInsets.only(left: 32.h),
      child: CustomTextFormField(
        controller: controller.riwayatPenimbanganController,
        hintText: "msg_riwayat_penimbangan".tr,
        hintStyle: CustomTextStyles.bodySmall_2,
        textInputAction: TextInputAction.done,
      ),
    );
  }

  /// Section Widget
  Widget _buildTambah() {
    return CustomOutlinedButton(
      text: "lbl_tambah".tr,
    );
  }

  /// Section Widget
  Widget _buildButton() {
    return Container(
      margin: EdgeInsets.only(
        left: 50.h,
        right: 33.h,
        bottom: 24.v,
      ),
      decoration: AppDecoration.fillOnErrorContainer,
      child: _buildTambah(),
    );
  }
}
