import 'controller/detail_komunitas_controller.dart';
import 'package:flutter/material.dart';
import 'package:example/core/app_export.dart';
import 'package:example/widgets/app_bar/appbar_leading_image.dart';
import 'package:example/widgets/app_bar/appbar_subtitle_two.dart';
import 'package:example/widgets/app_bar/custom_app_bar.dart';
import 'package:example/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class DetailKomunitasScreen extends GetWidget<DetailKomunitasController> {
  const DetailKomunitasScreen({Key? key})
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
              SizedBox(height: 14.v),
              Expanded(
                child: SingleChildScrollView(
                  child: Padding(
                    padding: EdgeInsets.only(
                      left: 15.h,
                      right: 116.h,
                      bottom: 5.v,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        _buildFrame(
                          haloSapikuTibaTiba: "msg_halo_ada_yang_tau".tr,
                          polygonOne: ImageConstant.imgPolygon1,
                        ),
                        SizedBox(height: 13.v),
                        Container(
                          width: 269.h,
                          margin: EdgeInsets.only(
                            left: 2.h,
                            right: 12.h,
                          ),
                          padding: EdgeInsets.symmetric(
                            horizontal: 10.h,
                            vertical: 6.v,
                          ),
                          decoration: AppDecoration.fillGray20001,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SizedBox(height: 3.v),
                              Text(
                                "msg_coba_kasih_diarex".tr,
                                style: theme.textTheme.bodySmall,
                              ),
                            ],
                          ),
                        ),
                        CustomImageView(
                          imagePath: ImageConstant.imgPolygon1BlueGray10001,
                          height: 19.v,
                          width: 30.h,
                          margin: EdgeInsets.only(left: 2.h),
                        ),
                        SizedBox(height: 14.v),
                        Container(
                          width: 269.h,
                          margin: EdgeInsets.only(
                            left: 2.h,
                            right: 12.h,
                          ),
                          padding: EdgeInsets.symmetric(
                            horizontal: 10.h,
                            vertical: 5.v,
                          ),
                          decoration: AppDecoration.fillBlue,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SizedBox(height: 4.v),
                              Text(
                                "msg_makasih_info_nya".tr,
                                style: theme.textTheme.bodySmall,
                              ),
                            ],
                          ),
                        ),
                        CustomImageView(
                          imagePath: ImageConstant.imgPolygon1Teal50,
                          height: 19.v,
                          width: 30.h,
                          margin: EdgeInsets.only(left: 2.h),
                        ),
                        SizedBox(height: 10.v),
                        SizedBox(
                          height: 68.v,
                          width: 271.h,
                          child: Stack(
                            alignment: Alignment.bottomLeft,
                            children: [
                              Align(
                                alignment: Alignment.topCenter,
                                child: Container(
                                  margin: EdgeInsets.only(left: 2.h),
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 11.h,
                                    vertical: 4.v,
                                  ),
                                  decoration: AppDecoration.fillGray20001,
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      SizedBox(height: 4.v),
                                      SizedBox(
                                        width: 246.h,
                                        child: Text(
                                          "msg_halo_sapiku_tiba_tiba".tr,
                                          maxLines: 2,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.justify,
                                          style: theme.textTheme.bodySmall!
                                              .copyWith(
                                            height: 1.69,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              CustomImageView(
                                imagePath:
                                    ImageConstant.imgPolygon1BlueGray10001,
                                height: 19.v,
                                width: 30.h,
                                alignment: Alignment.bottomLeft,
                              ),
                              _buildFrame(
                                haloSapikuTibaTiba:
                                    "msg_halo_sapiku_tiba_tiba".tr,
                                polygonOne: ImageConstant.imgPolygon1Pink100,
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 17.v),
                        Container(
                          margin: EdgeInsets.only(right: 14.h),
                          padding: EdgeInsets.symmetric(
                            horizontal: 6.h,
                            vertical: 5.v,
                          ),
                          decoration: AppDecoration.fillLime100,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SizedBox(height: 4.v),
                              Text(
                                "msg_coba_periksa_kakinya".tr,
                                style: theme.textTheme.bodySmall,
                              ),
                            ],
                          ),
                        ),
                        CustomImageView(
                          imagePath: ImageConstant.imgPolygon1LightGreen100,
                          height: 19.v,
                          width: 30.h,
                        ),
                        SizedBox(height: 14.v),
                        Container(
                          margin: EdgeInsets.only(left: 2.h),
                          padding: EdgeInsets.symmetric(
                            horizontal: 8.h,
                            vertical: 5.v,
                          ),
                          decoration: AppDecoration.fillGray20001,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SizedBox(height: 4.v),
                              Text(
                                "msg_iya_takutnya_nanti".tr,
                                style: theme.textTheme.bodySmall,
                              ),
                            ],
                          ),
                        ),
                        CustomImageView(
                          imagePath: ImageConstant.imgPolygon1BlueGray10001,
                          height: 19.v,
                          width: 30.h,
                          margin: EdgeInsets.only(left: 2.h),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: _buildFrame3(),
      ),
    );
  }

  /// Section Widget
  Widget _buildAtas() {
    return Container(
      decoration: AppDecoration.fillPrimary,
      child: Column(
        children: [
          SizedBox(height: 16.v),
          CustomAppBar(
            height: 27.v,
            leadingWidth: 49.h,
            leading: AppbarLeadingImage(
              imagePath: ImageConstant.imgRewindOnerrorcontainer,
              margin: EdgeInsets.only(
                left: 17.h,
                bottom: 3.v,
              ),
            ),
            title: AppbarSubtitleTwo(
              text: "lbl_komunitas_sapi".tr,
              margin: EdgeInsets.only(left: 11.h),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildFrame3() {
    return Container(
      margin: EdgeInsets.only(
        left: 17.h,
        right: 17.h,
        bottom: 35.v,
      ),
      decoration: AppDecoration.fillPrimary1,
      child: Container(
        decoration: AppDecoration.fillPrimary1,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: CustomTextFormField(
                controller: controller.ketikpesanController,
                hintText: "lbl_ketik_pesan".tr,
                textInputAction: TextInputAction.done,
                contentPadding: EdgeInsets.symmetric(
                  horizontal: 20.h,
                  vertical: 18.v,
                ),
                borderDecoration: TextFormFieldStyleHelper.fillOnErrorContainer,
                filled: true,
                fillColor: theme.colorScheme.onErrorContainer.withOpacity(1),
              ),
            ),
            CustomImageView(
              imagePath: ImageConstant.imgSendPlaneFill,
              height: 24.adaptSize,
              width: 24.adaptSize,
              margin: EdgeInsets.only(
                left: 13.h,
                top: 15.v,
                bottom: 15.v,
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Common widget
  Widget _buildFrame({
    required String haloSapikuTibaTiba,
    required String polygonOne,
  }) {
    return SizedBox(
      height: 68.v,
      width: 271.h,
      child: Stack(
        alignment: Alignment.bottomLeft,
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              margin: EdgeInsets.only(left: 2.h),
              padding: EdgeInsets.symmetric(
                horizontal: 11.h,
                vertical: 4.v,
              ),
              decoration: AppDecoration.fillDeepOrange,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 4.v),
                  SizedBox(
                    width: 246.h,
                    child: Text(
                      haloSapikuTibaTiba,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.justify,
                      style: theme.textTheme.bodySmall!.copyWith(
                        color: appTheme.black900,
                        height: 1.69,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          CustomImageView(
            imagePath: polygonOne,
            height: 19.v,
            width: 30.h,
            alignment: Alignment.bottomLeft,
          ),
        ],
      ),
    );
  }
}
