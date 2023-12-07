import '../controller/chat_controller.dart';
import '../models/chat_item_model.dart';
import 'package:flutter/material.dart';
import 'package:example/core/app_export.dart';

// ignore: must_be_immutable
class ChatItemWidget extends StatelessWidget {
  ChatItemWidget(
    this.chatItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  ChatItemModel chatItemModelObj;

  var controller = Get.find<ChatController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: AppDecoration.fillGray100,
      child: Column(
        children: [
          Divider(),
          SizedBox(height: 14.v),
          Padding(
            padding: EdgeInsets.only(
              left: 22.h,
              right: 28.h,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 25.adaptSize,
                  width: 25.adaptSize,
                  decoration: BoxDecoration(
                    color: appTheme.greenA700,
                    borderRadius: BorderRadius.circular(
                      12.h,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 15.h,
                    top: 2.v,
                  ),
                  child: Obx(
                    () => Text(
                      chatItemModelObj.price!.value,
                      style: theme.textTheme.bodyMedium,
                    ),
                  ),
                ),
                Spacer(),
                Padding(
                  padding: EdgeInsets.only(bottom: 3.v),
                  child: Obx(
                    () => Text(
                      chatItemModelObj.text!.value,
                      style: theme.textTheme.bodyMedium,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 14.v),
        ],
      ),
    );
  }
}
