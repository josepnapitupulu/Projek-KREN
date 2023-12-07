import 'controller/profile_three_controller.dart';
import 'package:flutter/material.dart';
import 'package:example/core/app_export.dart';

class ProfileThreeDialog extends StatelessWidget {
  ProfileThreeDialog(
    this.controller, {
    Key? key,
  }) : super(
          key: key,
        );

  ProfileThreeController controller;

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SingleChildScrollView(
      child: _buildFrame(),
    );
  }

  /// Section Widget
  Widget _buildFrame() {
    return Container(
      margin: EdgeInsets.only(
        left: 31.h,
        right: 31.h,
        bottom: 388.v,
      ),
      padding: EdgeInsets.symmetric(
        horizontal: 19.h,
        vertical: 3.v,
      ),
      decoration: AppDecoration.outlineRed.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder25,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          SizedBox(height: 32.v),
          CustomImageView(
            imagePath: ImageConstant.imgVector,
            height: 115.v,
            width: 125.h,
          ),
          SizedBox(height: 21.v),
          Text(
            "msg_berhasil_menyukai".tr,
            style: theme.textTheme.bodyLarge,
          ),
          SizedBox(height: 3.v),
          Text(
            "msg_anda_akan_mendapatkan".tr,
            style: CustomTextStyles.bodySmall11,
          ),
        ],
      ),
    );
  }
}
