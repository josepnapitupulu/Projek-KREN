import '../controller/hewan_controller.dart';
import '../models/hewan_item_model.dart';
import 'package:flutter/material.dart';
import 'package:example/core/app_export.dart';

// ignore: must_be_immutable
class HewanItemWidget extends StatelessWidget {
  HewanItemWidget(
    this.hewanItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  HewanItemModel hewanItemModelObj;

  var controller = Get.find<HewanController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 3.h,
        vertical: 2.v,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 114.v,
            width: 119.h,
            child: Stack(
              alignment: Alignment.center,
              children: [
                Align(
                  alignment: Alignment.center,
                  child: Container(
                    height: 114.v,
                    width: 110.h,
                    decoration: BoxDecoration(
                      color: appTheme.blueGray10001,
                    ),
                  ),
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgRectangle62,
                  height: 100.v,
                  width: 119.h,
                  alignment: Alignment.center,
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    width: 117.h,
                    padding: EdgeInsets.symmetric(horizontal: 30.h),
                    decoration: AppDecoration.fillYellow,
                    child: Obx(
                      () => Text(
                        hewanItemModelObj.b!.value,
                        style: theme.textTheme.bodyLarge,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 11.h,
              top: 10.v,
              bottom: 19.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 9.h),
                          child: Obx(
                            () => Text(
                              hewanItemModelObj.babi!.value,
                              style: theme.textTheme.bodyLarge,
                            ),
                          ),
                        ),
                        SizedBox(height: 1.v),
                        Row(
                          children: [
                            Obx(
                              () => CustomImageView(
                                imagePath: hewanItemModelObj.betina!.value,
                                height: 24.adaptSize,
                                width: 24.adaptSize,
                                margin: EdgeInsets.only(top: 1.v),
                              ),
                            ),
                            Obx(
                              () => Text(
                                hewanItemModelObj.betina1!.value,
                                style: CustomTextStyles.bodyLargeGray500_1,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.img584091148Shock,
                      height: 24.adaptSize,
                      width: 24.adaptSize,
                      margin: EdgeInsets.only(
                        left: 20.h,
                        top: 23.v,
                        bottom: 3.v,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 5.h,
                        top: 21.v,
                        bottom: 5.v,
                      ),
                      child: Obx(
                        () => Text(
                          hewanItemModelObj.siapJual!.value,
                          style: CustomTextStyles.bodyLargeGray500_1,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 4.v),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgDeviceWeight,
                      height: 24.adaptSize,
                      width: 24.adaptSize,
                      margin: EdgeInsets.only(top: 5.v),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 3.h,
                        top: 3.v,
                        bottom: 2.v,
                      ),
                      child: Obx(
                        () => Text(
                          hewanItemModelObj.weight!.value,
                          style: CustomTextStyles.bodyLargeGray500_1,
                        ),
                      ),
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.imgMedicalHealth,
                      height: 24.adaptSize,
                      width: 24.adaptSize,
                      margin: EdgeInsets.only(
                        left: 4.h,
                        top: 2.v,
                        bottom: 3.v,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 4.h,
                        bottom: 5.v,
                      ),
                      child: Obx(
                        () => Text(
                          hewanItemModelObj.sehat!.value,
                          style: CustomTextStyles.bodyLargeGray500_1,
                        ),
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
}
