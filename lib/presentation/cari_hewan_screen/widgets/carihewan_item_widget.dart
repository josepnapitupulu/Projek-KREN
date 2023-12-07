import '../controller/cari_hewan_controller.dart';
import '../models/carihewan_item_model.dart';
import 'package:flutter/material.dart';
import 'package:example/core/app_export.dart';

// ignore: must_be_immutable
class CarihewanItemWidget extends StatelessWidget {
  CarihewanItemWidget(
    this.carihewanItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  CarihewanItemModel carihewanItemModelObj;

  var controller = Get.find<CariHewanController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 1.h),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 103.v,
            width: 117.h,
            margin: EdgeInsets.only(top: 3.v),
            child: Stack(
              alignment: Alignment.bottomCenter,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgRectangle62,
                  height: 100.v,
                  width: 117.h,
                  alignment: Alignment.topCenter,
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    height: 22.v,
                    width: 117.h,
                    margin: EdgeInsets.only(bottom: 2.v),
                    decoration: BoxDecoration(
                      color: appTheme.yellow300,
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Obx(
                    () => Text(
                      carihewanItemModelObj.b!.value,
                      style: theme.textTheme.bodyLarge,
                    ),
                  ),
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgRectangle62,
                  height: 100.v,
                  width: 117.h,
                  alignment: Alignment.topCenter,
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    height: 22.v,
                    width: 117.h,
                    margin: EdgeInsets.only(bottom: 2.v),
                    decoration: BoxDecoration(
                      color: appTheme.yellow300,
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Obx(
                    () => Text(
                      carihewanItemModelObj.b1!.value,
                      style: theme.textTheme.bodyLarge,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 25.h,
              top: 8.v,
              bottom: 11.v,
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
                        Container(
                          height: 24.v,
                          width: 32.h,
                          margin: EdgeInsets.only(left: 9.h),
                          child: Stack(
                            alignment: Alignment.center,
                            children: [
                              Align(
                                alignment: Alignment.center,
                                child: Obx(
                                  () => Text(
                                    carihewanItemModelObj.babi!.value,
                                    style: theme.textTheme.bodyLarge,
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.center,
                                child: Obx(
                                  () => Text(
                                    carihewanItemModelObj.babi1!.value,
                                    style: theme.textTheme.bodyLarge,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 1.v),
                        Row(
                          children: [
                            Container(
                              height: 24.adaptSize,
                              width: 24.adaptSize,
                              margin: EdgeInsets.only(top: 1.v),
                              child: Stack(
                                alignment: Alignment.center,
                                children: [
                                  CustomImageView(
                                    imagePath: ImageConstant.imgSignAndSymbol,
                                    height: 24.adaptSize,
                                    width: 24.adaptSize,
                                    alignment: Alignment.center,
                                  ),
                                  CustomImageView(
                                    imagePath: ImageConstant.imgSignAndSymbol,
                                    height: 24.adaptSize,
                                    width: 24.adaptSize,
                                    alignment: Alignment.center,
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 24.v,
                              width: 51.h,
                              child: Stack(
                                alignment: Alignment.center,
                                children: [
                                  Align(
                                    alignment: Alignment.center,
                                    child: Obx(
                                      () => Text(
                                        carihewanItemModelObj.betina!.value,
                                        style:
                                            CustomTextStyles.bodyLargeGray500_1,
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment.center,
                                    child: Obx(
                                      () => Text(
                                        carihewanItemModelObj.betina1!.value,
                                        style:
                                            CustomTextStyles.bodyLargeGray500_1,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Container(
                      height: 21.v,
                      width: 24.h,
                      margin: EdgeInsets.only(
                        left: 20.h,
                        top: 21.v,
                        bottom: 8.v,
                      ),
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.img584091148Shock,
                            height: 21.v,
                            width: 24.h,
                            alignment: Alignment.center,
                          ),
                          CustomImageView(
                            imagePath: ImageConstant.img584091148Shock,
                            height: 21.v,
                            width: 24.h,
                            alignment: Alignment.center,
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 24.v,
                      width: 72.h,
                      margin: EdgeInsets.only(
                        left: 5.h,
                        top: 21.v,
                        bottom: 5.v,
                      ),
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          Align(
                            alignment: Alignment.center,
                            child: Obx(
                              () => Text(
                                carihewanItemModelObj.siapJual!.value,
                                style: CustomTextStyles.bodyLargeGray500_1,
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.center,
                            child: Obx(
                              () => Text(
                                carihewanItemModelObj.siapJual1!.value,
                                style: CustomTextStyles.bodyLargeGray500_1,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 4.v),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Container(
                      height: 24.adaptSize,
                      width: 24.adaptSize,
                      margin: EdgeInsets.only(top: 5.v),
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.imgDeviceWeight,
                            height: 24.adaptSize,
                            width: 24.adaptSize,
                            alignment: Alignment.center,
                          ),
                          CustomImageView(
                            imagePath: ImageConstant.imgDeviceWeight,
                            height: 24.adaptSize,
                            width: 24.adaptSize,
                            alignment: Alignment.center,
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 23.v,
                      width: 63.h,
                      margin: EdgeInsets.only(
                        left: 3.h,
                        top: 3.v,
                        bottom: 2.v,
                      ),
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          Align(
                            alignment: Alignment.center,
                            child: Obx(
                              () => Text(
                                carihewanItemModelObj.weight!.value,
                                style: CustomTextStyles.bodyLargeGray500_1,
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.center,
                            child: Obx(
                              () => Text(
                                carihewanItemModelObj.weight1!.value,
                                style: CustomTextStyles.bodyLargeGray500_1,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 24.adaptSize,
                      width: 24.adaptSize,
                      margin: EdgeInsets.only(
                        left: 4.h,
                        top: 2.v,
                        bottom: 3.v,
                      ),
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.imgMedicalHealth,
                            height: 24.adaptSize,
                            width: 24.adaptSize,
                            alignment: Alignment.center,
                          ),
                          CustomImageView(
                            imagePath: ImageConstant.imgMedicalHealth,
                            height: 24.adaptSize,
                            width: 24.adaptSize,
                            alignment: Alignment.center,
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 24.v,
                      width: 43.h,
                      margin: EdgeInsets.only(
                        left: 4.h,
                        bottom: 5.v,
                      ),
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          Align(
                            alignment: Alignment.center,
                            child: Obx(
                              () => Text(
                                carihewanItemModelObj.sehat!.value,
                                style: CustomTextStyles.bodyLargeGray500_1,
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.center,
                            child: Obx(
                              () => Text(
                                carihewanItemModelObj.sehat1!.value,
                                style: CustomTextStyles.bodyLargeGray500_1,
                              ),
                            ),
                          ),
                        ],
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
