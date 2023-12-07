import '../controller/profile_controller.dart';
import '../models/profile_item_model.dart';
import 'package:flutter/material.dart';
import 'package:example/core/app_export.dart';

// ignore: must_be_immutable
class ProfileItemWidget extends StatelessWidget {
  ProfileItemWidget(
    this.profileItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  ProfileItemModel profileItemModelObj;

  var controller = Get.find<ProfileController>();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 186.h,
      child: Padding(
        padding: EdgeInsets.only(
          left: 1.h,
          top: 10.v,
        ),
        child: Column(
          children: [
            SizedBox(
              height: 136.v,
              width: 185.h,
              child: Stack(
                alignment: Alignment.bottomLeft,
                children: [
                  Obx(
                    () => CustomImageView(
                      imagePath: profileItemModelObj.siapJual!.value,
                      height: 136.v,
                      width: 185.h,
                      alignment: Alignment.center,
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomLeft,
                    child: Container(
                      width: 81.h,
                      padding: EdgeInsets.symmetric(horizontal: 13.h),
                      decoration: AppDecoration.fillPrimary,
                      child: Obx(
                        () => Text(
                          profileItemModelObj.siapJual1!.value,
                          style: CustomTextStyles.bodyMediumOnErrorContainer13,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 12.v),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Obx(
                  () => Text(
                    profileItemModelObj.sapiPotong!.value,
                    style: CustomTextStyles.bodyMedium13,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 16.h),
                  child: Obx(
                    () => Text(
                      profileItemModelObj.weight!.value,
                      style: CustomTextStyles.bodyMedium13,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 17.v),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Obx(
                  () => Text(
                    profileItemModelObj.rpCounter!.value,
                    style: CustomTextStyles.bodyMedium13,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 28.h,
                    bottom: 5.v,
                  ),
                  child: Obx(
                    () => Text(
                      profileItemModelObj.jantanDewasa!.value,
                      style: CustomTextStyles.bodySmall8,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
