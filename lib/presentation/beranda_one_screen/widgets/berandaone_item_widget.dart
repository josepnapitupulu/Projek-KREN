import '../controller/beranda_one_controller.dart';
import '../models/berandaone_item_model.dart';
import 'package:flutter/material.dart';
import 'package:example/core/app_export.dart';

// ignore: must_be_immutable
class BerandaoneItemWidget extends StatelessWidget {
  BerandaoneItemWidget(
    this.berandaoneItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  BerandaoneItemModel berandaoneItemModelObj;

  var controller = Get.find<BerandaOneController>();

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => CustomImageView(
        imagePath: berandaoneItemModelObj.rectangle!.value,
        height: 138.adaptSize,
        width: 138.adaptSize,
      ),
    );
  }
}
