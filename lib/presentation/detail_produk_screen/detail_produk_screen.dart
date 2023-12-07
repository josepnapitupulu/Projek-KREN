import 'controller/detail_produk_controller.dart';
import 'package:flutter/material.dart';
import 'package:example/core/app_export.dart';
import 'package:example/widgets/app_bar/appbar_leading_image.dart';
import 'package:example/widgets/app_bar/appbar_subtitle_two.dart';
import 'package:example/widgets/app_bar/custom_app_bar.dart';
import 'package:example/widgets/custom_outlined_button.dart';

// ignore_for_file: must_be_immutable
class DetailProdukScreen extends GetWidget<DetailProdukController> {
  const DetailProdukScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              _buildAtas(),
              SizedBox(height: 41.v),
              Expanded(
                child: SingleChildScrollView(
                  child: Padding(
                    padding: EdgeInsets.only(bottom: 5.v),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgRectangle58,
                          height: 208.v,
                          width: 344.h,
                          alignment: Alignment.center,
                        ),
                        SizedBox(height: 9.v),
                        _buildSixtyFour(),
                        SizedBox(height: 14.v),
                        _buildFrame(),
                        SizedBox(height: 14.v),
                        Divider(
                          color: appTheme.blueGray10002,
                        ),
                        SizedBox(height: 16.v),
                        Padding(
                          padding: EdgeInsets.only(left: 26.h),
                          child: Text(
                            "msg_jenis_pengiriman2".tr,
                            style: theme.textTheme.bodyMedium,
                          ),
                        ),
                        SizedBox(height: 1.v),
                        Container(
                          width: 58.h,
                          margin: EdgeInsets.only(left: 33.h),
                          child: Text(
                            "msg_diantar_dijemput".tr,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.justify,
                            style: theme.textTheme.bodySmall!.copyWith(
                              height: 1.69,
                            ),
                          ),
                        ),
                        SizedBox(height: 13.v),
                        Padding(
                          padding: EdgeInsets.only(left: 26.h),
                          child: Text(
                            "msg_deskripsi_produk2".tr,
                            style: theme.textTheme.bodyMedium,
                          ),
                        ),
                        SizedBox(height: 1.v),
                        Align(
                          alignment: Alignment.center,
                          child: Container(
                            width: 362.h,
                            margin: EdgeInsets.only(
                              left: 26.h,
                              right: 25.h,
                            ),
                            child: Text(
                              "msg_lorem_ipsum_dolor".tr,
                              maxLines: 4,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.justify,
                              style: CustomTextStyles.bodySmall_2.copyWith(
                                height: 1.42,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 7.v),
                        Padding(
                          padding: EdgeInsets.only(left: 26.h),
                          child: Text(
                            "msg_riwayat_penimbangan".tr,
                            style: theme.textTheme.bodyMedium,
                          ),
                        ),
                        SizedBox(height: 6.v),
                        Padding(
                          padding: EdgeInsets.only(left: 26.h),
                          child: Text(
                            "msg_senin_20_november2".tr,
                            style: CustomTextStyles.bodySmall_2,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 26.h),
                          child: Text(
                            "msg_senin_27_november2".tr,
                            style: CustomTextStyles.bodySmall_2,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 26.h),
                          child: Text(
                            "msg_senin_04_november2".tr,
                            style: CustomTextStyles.bodySmall_2,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 26.h),
                          child: Text(
                            "msg_senin_11_november2".tr,
                            style: CustomTextStyles.bodySmall_2,
                          ),
                        ),
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
              text: "lbl_detail_produk".tr,
              margin: EdgeInsets.only(left: 11.h),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildSixtyFour() {
    return Container(
      padding: EdgeInsets.fromLTRB(26.h, 2.v, 26.h, 1.v),
      decoration: AppDecoration.outlineBlueGray,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.only(right: 18.h),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "lbl_babi".tr,
                  style: theme.textTheme.bodyLarge,
                ),
                Spacer(),
                CustomImageView(
                  imagePath: ImageConstant.imgMedicalHealth,
                  height: 20.adaptSize,
                  width: 20.adaptSize,
                  margin: EdgeInsets.only(bottom: 5.v),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 9.h,
                    bottom: 7.v,
                  ),
                  child: Text(
                    "lbl_sehat".tr,
                    style: CustomTextStyles.bodySmallGray500_1,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 2.v),
          Padding(
            padding: EdgeInsets.only(right: 2.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    top: 10.v,
                    bottom: 3.v,
                  ),
                  child: Text(
                    "lbl_rp_40_000_kg".tr,
                    style: theme.textTheme.titleLarge,
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Align(
                      alignment: Alignment.centerRight,
                      child: Text(
                        "msg_betina_siap_jual".tr,
                        style: CustomTextStyles.bodySmall10,
                      ),
                    ),
                    SizedBox(height: 4.v),
                    Align(
                      alignment: Alignment.center,
                      child: Text(
                        "lbl_40_kg_ekor".tr,
                        style: theme.textTheme.bodyLarge,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildFrame() {
    return Align(
      alignment: Alignment.center,
      child: Padding(
        padding: EdgeInsets.only(
          left: 23.h,
          right: 28.h,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgEllipse235x35,
              height: 35.adaptSize,
              width: 35.adaptSize,
              radius: BorderRadius.circular(
                17.h,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 14.h,
                top: 5.v,
                bottom: 5.v,
              ),
              child: Text(
                "lbl_ternak_segar".tr,
                style: theme.textTheme.bodyLarge,
              ),
            ),
            Spacer(),
            CustomOutlinedButton(
              height: 26.v,
              width: 98.h,
              text: "lbl_kunjungi_profil".tr,
              margin: EdgeInsets.only(
                top: 3.v,
                bottom: 6.v,
              ),
              buttonStyle: CustomButtonStyles.outlineYellow,
              buttonTextStyle: theme.textTheme.bodySmall!,
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildButton() {
    return Container(
      margin: EdgeInsets.only(
        left: 31.h,
        right: 39.h,
        bottom: 27.v,
      ),
      decoration: AppDecoration.fillOnErrorContainer,
      child: Container(
        decoration: AppDecoration.fillOnErrorContainer,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: CustomOutlinedButton(
                text: "lbl_keranjang2".tr,
                margin: EdgeInsets.only(right: 18.h),
                buttonStyle: CustomButtonStyles.outlinePrimary,
                buttonTextStyle: CustomTextStyles.bodyMedium14_1,
              ),
            ),
            Expanded(
              child: CustomOutlinedButton(
                text: "lbl_beli_langsung".tr,
                margin: EdgeInsets.only(left: 18.h),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
