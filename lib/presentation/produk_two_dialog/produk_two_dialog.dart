import 'controller/produk_two_controller.dart';
import 'package:flutter/material.dart';
import 'package:example/core/app_export.dart';

class ProdukTwoDialog extends StatelessWidget {
  ProdukTwoDialog(
    this.controller, {
    Key? key,
  }) : super(
          key: key,
        );

  ProdukTwoController controller;

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
        bottom: 441.v,
      ),
      padding: EdgeInsets.symmetric(
        horizontal: 29.h,
        vertical: 22.v,
      ),
      decoration: AppDecoration.outlineRed.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder25,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          SizedBox(height: 16.v),
          CustomImageView(
            imagePath: ImageConstant.imgIconPrimary,
            height: 106.v,
            width: 110.h,
          ),
          SizedBox(height: 27.v),
          Text(
            "msg_berhasil_ditambahkan".tr,
            style: theme.textTheme.bodyLarge,
          ),
        ],
      ),
    );
  }
}
