import 'controller/produk_one_controller.dart';
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
class ProdukOneScreen extends GetWidget<ProdukOneController> {
  const ProdukOneScreen({Key? key})
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
              Expanded(
                child: SingleChildScrollView(
                  child: SizedBox(
                    height: 788.v,
                    width: double.maxFinite,
                    child: Stack(
                      alignment: Alignment.bottomCenter,
                      children: [
                        Align(
                          alignment: Alignment.topCenter,
                          child: Container(
                            padding: EdgeInsets.symmetric(
                              horizontal: 31.h,
                              vertical: 13.v,
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    "msg_lengkapi_data_hewanmu".tr,
                                    style: CustomTextStyles.bodySmallPrimary_1,
                                  ),
                                ),
                                SizedBox(height: 3.v),
                                Text(
                                  "msg_lengkapi_terlebh".tr,
                                  style: CustomTextStyles.bodySmallPrimary_1,
                                ),
                                SizedBox(height: 20.v),
                                Padding(
                                  padding: EdgeInsets.only(
                                    left: 9.h,
                                    right: 17.h,
                                  ),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
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
                                                style: CustomTextStyles
                                                    .bodySmall_2,
                                              ),
                                            ),
                                            Align(
                                              alignment: Alignment.center,
                                              child: Text(
                                                "lbl_jenis_hewan".tr,
                                                style: CustomTextStyles
                                                    .bodySmall_2,
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
                                  indent: 9.h,
                                  endIndent: 12.h,
                                ),
                                SizedBox(height: 6.v),
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: Padding(
                                    padding: EdgeInsets.only(left: 13.h),
                                    child: Text(
                                      "lbl_harga".tr,
                                      textAlign: TextAlign.justify,
                                      style: CustomTextStyles.bodySmall_2,
                                    ),
                                  ),
                                ),
                                SizedBox(height: 18.v),
                                Divider(
                                  color: appTheme.gray300,
                                  indent: 13.h,
                                  endIndent: 8.h,
                                ),
                                SizedBox(height: 14.v),
                                _buildBerat(),
                                SizedBox(height: 5.v),
                                Padding(
                                  padding: EdgeInsets.only(
                                    left: 13.h,
                                    right: 8.h,
                                  ),
                                  child: CustomDropDown(
                                    icon: Container(
                                      margin: EdgeInsets.fromLTRB(
                                          30.h, 4.v, 9.h, 15.v),
                                      child: CustomImageView(
                                        imagePath: ImageConstant.imgArrowup,
                                        height: 20.adaptSize,
                                        width: 20.adaptSize,
                                      ),
                                    ),
                                    hintText: "lbl_kondisi_hewan".tr,
                                    items: controller.produkOneModelObj.value
                                        .dropdownItemList!.value,
                                    onChanged: (value) {
                                      controller.onSelected(value);
                                    },
                                  ),
                                ),
                                SizedBox(height: 22.v),
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: Container(
                                    height: 45.v,
                                    width: 282.h,
                                    margin: EdgeInsets.only(left: 13.h),
                                    child: Stack(
                                      alignment: Alignment.bottomRight,
                                      children: [
                                        Align(
                                          alignment: Alignment.topLeft,
                                          child: Text(
                                            "lbl_jenis_kelamin".tr,
                                            textAlign: TextAlign.justify,
                                            style: CustomTextStyles.bodySmall_2,
                                          ),
                                        ),
                                        Align(
                                          alignment: Alignment.bottomRight,
                                          child: Padding(
                                            padding:
                                                EdgeInsets.only(bottom: 8.v),
                                            child: Text(
                                              "lbl_siap_dijual".tr,
                                              textAlign: TextAlign.justify,
                                              style:
                                                  CustomTextStyles.bodySmall_2,
                                            ),
                                          ),
                                        ),
                                        CustomImageView(
                                          imagePath: ImageConstant
                                              .imgMonochromeTogglePrimary,
                                          height: 31.v,
                                          width: 40.h,
                                          alignment: Alignment.bottomRight,
                                        ),
                                        CustomImageView(
                                          imagePath:
                                              ImageConstant.imgArrowUpBlack900,
                                          height: 20.adaptSize,
                                          width: 20.adaptSize,
                                          alignment: Alignment.center,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                SizedBox(height: 11.v),
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: SizedBox(
                                    width: 166.h,
                                    child: Divider(
                                      color: appTheme.gray300,
                                      indent: 13.h,
                                    ),
                                  ),
                                ),
                                SizedBox(height: 13.v),
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: Padding(
                                    padding: EdgeInsets.only(
                                      left: 13.h,
                                      right: 27.h,
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          "msg_jenis_pengiriman".tr,
                                          textAlign: TextAlign.justify,
                                          style: CustomTextStyles.bodySmall_2,
                                        ),
                                        CustomImageView(
                                          imagePath:
                                              ImageConstant.imgArrowUpBlack900,
                                          height: 20.adaptSize,
                                          width: 20.adaptSize,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                SizedBox(height: 21.v),
                                Divider(
                                  color: appTheme.gray300,
                                  indent: 13.h,
                                  endIndent: 8.h,
                                ),
                                SizedBox(height: 26.v),
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: Padding(
                                    padding: EdgeInsets.only(left: 13.h),
                                    child: Text(
                                      "msg_deskripsi_produk".tr,
                                      textAlign: TextAlign.justify,
                                      style: CustomTextStyles.bodySmall_2,
                                    ),
                                  ),
                                ),
                                SizedBox(height: 86.v),
                                Divider(
                                  color: appTheme.gray300,
                                  indent: 13.h,
                                  endIndent: 8.h,
                                ),
                                SizedBox(height: 35.v),
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: Padding(
                                    padding: EdgeInsets.only(left: 12.h),
                                    child: Text(
                                      "lbl_tambahkan_foto".tr,
                                      style: theme.textTheme.bodySmall,
                                    ),
                                  ),
                                ),
                                SizedBox(height: 6.v),
                                _buildPilihFile1(),
                                SizedBox(height: 33.v),
                                _buildRiwayatPenimbangan(),
                                SizedBox(height: 41.v),
                              ],
                            ),
                          ),
                        ),
                        _buildEdit(),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
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
  Widget _buildBerat() {
    return Padding(
      padding: EdgeInsets.only(
        left: 10.h,
        right: 11.h,
      ),
      child: CustomTextFormField(
        controller: controller.beratController,
        hintText: "lbl_berat".tr,
        hintStyle: CustomTextStyles.bodySmall_2,
        contentPadding: EdgeInsets.symmetric(horizontal: 3.h),
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
      padding: EdgeInsets.only(
        left: 13.h,
        right: 8.h,
      ),
      child: CustomTextFormField(
        controller: controller.riwayatPenimbanganController,
        hintText: "msg_riwayat_penimbangan".tr,
        hintStyle: CustomTextStyles.bodySmall_2,
        textInputAction: TextInputAction.done,
      ),
    );
  }

  /// Section Widget
  Widget _buildEdit() {
    return CustomOutlinedButton(
      width: 331.h,
      text: "lbl_edit".tr,
      margin: EdgeInsets.only(bottom: 24.v),
      alignment: Alignment.bottomCenter,
    );
  }
}
