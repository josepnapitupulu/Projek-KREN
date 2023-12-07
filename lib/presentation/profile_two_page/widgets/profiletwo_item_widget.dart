import '../controller/profile_two_controller.dart';
import '../models/profiletwo_item_model.dart';
import 'package:flutter/material.dart';
import 'package:example/core/app_export.dart';

// ignore: must_be_immutable
class ProfiletwoItemWidget extends StatelessWidget {
  ProfiletwoItemWidget(
    this.profiletwoItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  ProfiletwoItemModel profiletwoItemModelObj;

  var controller = Get.find<ProfileTwoController>();

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => CustomImageView(
        imagePath: profiletwoItemModelObj.rectangle!.value,
        height: 138.adaptSize,
        width: 138.adaptSize,
      ),
    );
  }
}
