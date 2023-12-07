import '../hewan_urutan_screen/widgets/hewanurutan_item_widget.dart';
import 'controller/hewan_urutan_controller.dart';
import 'models/hewanurutan_item_model.dart';
import 'package:flutter/material.dart';
import 'package:example/core/app_export.dart';
import 'package:example/widgets/app_bar/appbar_leading_image.dart';
import 'package:example/widgets/app_bar/appbar_subtitle_four.dart';
import 'package:example/widgets/app_bar/appbar_subtitle_three.dart';
import 'package:example/widgets/app_bar/custom_app_bar.dart';
import 'package:example/widgets/custom_elevated_button.dart';

// ignore_for_file: must_be_immutable
class HewanUrutanScreen extends GetWidget<HewanUrutanController> {
  const HewanUrutanScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(),
        body: SizedBox(
          width: mediaQueryData.size.width,
          child: SingleChildScrollView(
            child: _buildHewanUrutan(),
          ),
        ),
        bottomNavigationBar: _buildTerapkanFilter(),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
      height: 43.v,
      leadingWidth: 53.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgSolidArrowCircleLeft,
        margin: EdgeInsets.only(
          left: 29.h,
          top: 9.v,
          bottom: 9.v,
        ),
      ),
      title: AppbarSubtitleThree(
        text: "lbl_urutan".tr,
        margin: EdgeInsets.only(left: 17.h),
      ),
      actions: [
        AppbarSubtitleFour(
          text: "lbl_reset".tr,
          margin: EdgeInsets.fromLTRB(43.h, 16.v, 43.h, 9.v),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildHewanUrutan() {
    return Padding(
      padding: EdgeInsets.only(
        left: 29.h,
        right: 33.h,
        bottom: 5.v,
      ),
      child: Column(
        children: [
          Divider(
            color: appTheme.blueGray10003,
          ),
          SizedBox(height: 19.v),
          Align(
            alignment: Alignment.centerLeft,
            child: SizedBox(
              width: 95.h,
              child: Divider(
                color: appTheme.blueGray10001,
                indent: 9.h,
              ),
            ),
          ),
          SizedBox(height: 33.v),
          Padding(
            padding: EdgeInsets.only(
              left: 24.h,
              right: 18.h,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 1.v),
                  child: Text(
                    "lbl_tampilkan_semua".tr,
                    style: theme.textTheme.bodyMedium,
                  ),
                ),
                Container(
                  height: 20.adaptSize,
                  width: 20.adaptSize,
                  margin: EdgeInsets.only(bottom: 2.v),
                  decoration: BoxDecoration(
                    color: appTheme.blueGray10001,
                    borderRadius: BorderRadius.circular(
                      10.h,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 4.v),
          Divider(
            color: appTheme.blueGray10003,
            indent: 6.h,
            endIndent: 5.h,
          ),
          SizedBox(height: 17.v),
          Padding(
            padding: EdgeInsets.only(
              left: 24.h,
              right: 18.h,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "msg_tanggal_masuk_terbaru".tr,
                  style: theme.textTheme.bodyMedium,
                ),
                Container(
                  height: 20.adaptSize,
                  width: 20.adaptSize,
                  decoration: BoxDecoration(
                    color: appTheme.blueGray10001,
                    borderRadius: BorderRadius.circular(
                      10.h,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 1.v),
          Divider(
            color: appTheme.blueGray10003,
            indent: 9.h,
            endIndent: 2.h,
          ),
          SizedBox(height: 12.v),
          Padding(
            padding: EdgeInsets.only(
              left: 24.h,
              right: 18.h,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 1.v),
                  child: Text(
                    "msg_tanggal_masuk_tedahulu".tr,
                    style: theme.textTheme.bodyMedium,
                  ),
                ),
                Container(
                  height: 20.adaptSize,
                  width: 20.adaptSize,
                  margin: EdgeInsets.only(bottom: 2.v),
                  decoration: BoxDecoration(
                    color: appTheme.blueGray10001,
                    borderRadius: BorderRadius.circular(
                      10.h,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 2.v),
          Divider(
            color: appTheme.blueGray10003,
            indent: 9.h,
            endIndent: 2.h,
          ),
          SizedBox(height: 12.v),
          Padding(
            padding: EdgeInsets.only(
              left: 24.h,
              right: 18.h,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "msg_tanggal_keluar_terbaru".tr,
                  style: theme.textTheme.bodyMedium,
                ),
                Container(
                  height: 20.adaptSize,
                  width: 20.adaptSize,
                  decoration: BoxDecoration(
                    color: appTheme.blueGray10001,
                    borderRadius: BorderRadius.circular(
                      10.h,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 3.v),
          Divider(
            color: appTheme.blueGray10003,
            indent: 9.h,
            endIndent: 2.h,
          ),
          SizedBox(height: 16.v),
          Padding(
            padding: EdgeInsets.only(left: 9.h),
            child: Obx(
              () => ListView.separated(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                separatorBuilder: (
                  context,
                  index,
                ) {
                  return SizedBox(
                    height: 12.v,
                  );
                },
                itemCount: controller
                    .hewanUrutanModelObj.value.hewanurutanItemList.value.length,
                itemBuilder: (context, index) {
                  HewanurutanItemModel model = controller.hewanUrutanModelObj
                      .value.hewanurutanItemList.value[index];
                  return HewanurutanItemWidget(
                    model,
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildTerapkanFilter() {
    return CustomElevatedButton(
      height: 38.v,
      text: "lbl_terapkan_filter".tr,
      margin: EdgeInsets.only(
        left: 27.h,
        right: 17.h,
        bottom: 21.v,
      ),
      buttonStyle: CustomButtonStyles.fillPrimaryTL9,
      buttonTextStyle: CustomTextStyles.bodyMediumOnErrorContainer_1,
    );
  }
}
