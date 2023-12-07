import '../controller/komunitas_two_controller.dart';
import '../models/komunitastwo_item_model.dart';
import 'package:flutter/material.dart';
import 'package:example/core/app_export.dart';

// ignore: must_be_immutable
class KomunitastwoItemWidget extends StatelessWidget {
  KomunitastwoItemWidget(
    this.komunitastwoItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  KomunitastwoItemModel komunitastwoItemModelObj;

  var controller = Get.find<KomunitasTwoController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: AppDecoration.fillGray100,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Divider(),
          SizedBox(height: 18.v),
          Padding(
            padding: EdgeInsets.only(
              left: 39.h,
              right: 33.h,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 129.h,
                      margin: EdgeInsets.only(right: 15.h),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.imgChatChatBlack900,
                            height: 24.adaptSize,
                            width: 24.adaptSize,
                            margin: EdgeInsets.only(bottom: 6.v),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 2.v),
                            child: Obx(
                              () => Text(
                                komunitastwoItemModelObj.sapisehat!.value,
                                style: theme.textTheme.titleLarge,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Align(
                      alignment: Alignment.centerRight,
                      child: Obx(
                        () => Text(
                          komunitastwoItemModelObj.percakapan!.value,
                          style: CustomTextStyles.bodySmall10,
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(
                    top: 9.v,
                    bottom: 13.v,
                  ),
                  child: Obx(
                    () => Text(
                      komunitastwoItemModelObj.text!.value,
                      style: theme.textTheme.bodyMedium,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 4.v),
        ],
      ),
    );
  }
}
