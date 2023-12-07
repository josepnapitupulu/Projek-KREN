import '../controller/hewan_urutan_controller.dart';
import '../models/hewanurutan_item_model.dart';
import 'package:flutter/material.dart';
import 'package:example/core/app_export.dart';

// ignore: must_be_immutable
class HewanurutanItemWidget extends StatelessWidget {
  HewanurutanItemWidget(
    this.hewanurutanItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  HewanurutanItemModel hewanurutanItemModelObj;

  var controller = Get.find<HewanUrutanController>();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 23.v,
      width: 341.h,
      child: Stack(
        alignment: Alignment.centerLeft,
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: SizedBox(
              width: 341.h,
              child: Divider(
                color: appTheme.blueGray10003,
              ),
            ),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 14.h),
              child: Obx(
                () => Text(
                  hewanurutanItemModelObj.harga!.value,
                  style: theme.textTheme.bodyMedium,
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.topRight,
            child: Container(
              height: 20.adaptSize,
              width: 20.adaptSize,
              margin: EdgeInsets.only(right: 18.h),
              decoration: BoxDecoration(
                color: appTheme.blueGray10001,
                borderRadius: BorderRadius.circular(
                  10.h,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
