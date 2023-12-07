import '../controller/card_edukasi_controller.dart';
import '../models/cardedukasi_item_model.dart';
import 'package:flutter/material.dart';
import 'package:example/core/app_export.dart';
import 'package:example/widgets/custom_elevated_button.dart';

// ignore: must_be_immutable
class CardedukasiItemWidget extends StatelessWidget {
  CardedukasiItemWidget(
    this.cardedukasiItemModelObj, {
    Key? key,
    this.onTapBacaSelengkapnya,
  }) : super(
          key: key,
        );

  CardedukasiItemModel cardedukasiItemModelObj;

  var controller = Get.find<CardEdukasiController>();

  VoidCallback? onTapBacaSelengkapnya;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 18.h,
        vertical: 17.v,
      ),
      decoration: AppDecoration.outlineBlack900.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder5,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgImage17,
            height: 89.v,
            width: 148.h,
            radius: BorderRadius.circular(
              20.h,
            ),
          ),
          SizedBox(height: 13.v),
          SizedBox(
            width: 142.h,
            child: Obx(
              () => Text(
                cardedukasiItemModelObj.strategiPemberian!.value,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.center,
                style: CustomTextStyles.bodyMedium14,
              ),
            ),
          ),
          SizedBox(height: 7.v),
          CustomElevatedButton(
            height: 30.v,
            width: 117.h,
            text: "msg_baca_selengkapnya".tr,
            buttonStyle: CustomButtonStyles.fillGreen,
            buttonTextStyle: CustomTextStyles.bodyMediumOnErrorContainer,
            onPressed: () {
              onTapBacaSelengkapnya!.call();
            },
          ),
          SizedBox(height: 15.v),
        ],
      ),
    );
  }
}
