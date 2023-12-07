import '../controller/belum_bayar_controller.dart';
import '../models/belumbayar_item_model.dart';
import 'package:flutter/material.dart';
import 'package:example/core/app_export.dart';

// ignore: must_be_immutable
class BelumbayarItemWidget extends StatelessWidget {
  BelumbayarItemWidget(
    this.belumbayarItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  BelumbayarItemModel belumbayarItemModelObj;

  var controller = Get.find<BelumBayarController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.only(
        top: 11.v,
        bottom: 10.v,
      ),
      decoration: AppDecoration.outlineOnPrimaryContainer,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgRectangle6652x70,
            height: 52.v,
            width: 70.h,
          ),
          Padding(
            padding: EdgeInsets.only(top: 2.v),
            child: Column(
              children: [
                SizedBox(
                  width: 274.h,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(bottom: 1.v),
                        child: Obx(
                          () => Text(
                            belumbayarItemModelObj.babi!.value,
                            style: CustomTextStyles.bodyMediumGray700,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 2.v),
                        child: Obx(
                          () => Text(
                            belumbayarItemModelObj.weight!.value,
                            style: CustomTextStyles.bodySmallGray700_1,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 3.v),
                SizedBox(
                  width: 272.h,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(bottom: 3.v),
                        child: Obx(
                          () => Text(
                            belumbayarItemModelObj.rpKg!.value,
                            style: theme.textTheme.bodyMedium,
                          ),
                        ),
                      ),
                      Spacer(),
                      Padding(
                        padding: EdgeInsets.only(
                          top: 4.v,
                          bottom: 2.v,
                        ),
                        child: Obx(
                          () => Text(
                            belumbayarItemModelObj.total!.value,
                            style: CustomTextStyles.bodySmallGray700_1,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 4.h,
                          top: 7.v,
                        ),
                        child: Obx(
                          () => Text(
                            belumbayarItemModelObj.rpCounter!.value,
                            style: theme.textTheme.bodySmall,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
