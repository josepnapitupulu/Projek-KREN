import 'package:flutter/material.dart';
import 'package:example/core/app_export.dart';
import 'package:example/widgets/custom_elevated_button.dart';

// ignore: must_be_immutable
class AppbarTrailingButton extends StatelessWidget {
  AppbarTrailingButton({
    Key? key,
    this.margin,
    this.onTap,
  }) : super(
          key: key,
        );

  EdgeInsetsGeometry? margin;

  Function? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap!.call();
      },
      child: Padding(
        padding: margin ?? EdgeInsets.zero,
        child: CustomElevatedButton(
          height: 29.v,
          width: 73.h,
          text: "lbl_atur_akun".tr,
          buttonStyle: CustomButtonStyles.fillTeal,
          buttonTextStyle: CustomTextStyles.bodyMediumOnErrorContainer,
        ),
      ),
    );
  }
}
