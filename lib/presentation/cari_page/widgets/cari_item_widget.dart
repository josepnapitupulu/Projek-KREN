import '../controller/cari_controller.dart';
import '../models/cari_item_model.dart';
import 'package:flutter/material.dart';
import 'package:example/core/app_export.dart';

// ignore: must_be_immutable
class CariItemWidget extends StatelessWidget {
  CariItemWidget(
    this.cariItemModelObj, {
    Key? key,
    this.onTapImgHewan,
  }) : super(
          key: key,
        );

  CariItemModel cariItemModelObj;

  var controller = Get.find<CariController>();

  VoidCallback? onTapImgHewan;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(1.h),
      width: 61.h,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 1.v),
          Container(
            height: 50.v,
            width: 57.h,
            padding: EdgeInsets.symmetric(
              horizontal: 10.h,
              vertical: 11.v,
            ),
            decoration: AppDecoration.fillAmberA.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder12,
            ),
            child: Obx(
              () => CustomImageView(
                imagePath: cariItemModelObj.hewan!.value,
                height: 28.v,
                width: 36.h,
                alignment: Alignment.center,
                onTap: () {
                  onTapImgHewan!.call();
                },
              ),
            ),
          ),
          SizedBox(height: 2.v),
          Obx(
            () => Text(
              cariItemModelObj.hewan1!.value,
              style: CustomTextStyles.bodySmall11,
            ),
          ),
        ],
      ),
    );
  }
}
