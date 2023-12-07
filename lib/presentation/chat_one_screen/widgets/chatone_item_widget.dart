import '../controller/chat_one_controller.dart';
import '../models/chatone_item_model.dart';
import 'package:flutter/material.dart';
import 'package:example/core/app_export.dart';

// ignore: must_be_immutable
class ChatoneItemWidget extends StatelessWidget {
  ChatoneItemWidget(
    this.chatoneItemModelObj, {
    Key? key,
    this.onTapPersonal,
  }) : super(
          key: key,
        );

  ChatoneItemModel chatoneItemModelObj;

  var controller = Get.find<ChatOneController>();

  VoidCallback? onTapPersonal;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTapPersonal!.call();
      },
      child: Container(
        decoration: AppDecoration.fillGray100,
        child: Column(
          children: [
            Divider(),
            SizedBox(height: 12.v),
            Padding(
              padding: EdgeInsets.only(
                left: 22.h,
                right: 27.h,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Obx(
                    () => CustomImageView(
                      imagePath: chatoneItemModelObj.peternakSapiKita!.value,
                      height: 40.adaptSize,
                      width: 40.adaptSize,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 18.h,
                      top: 8.v,
                      bottom: 3.v,
                    ),
                    child: Obx(
                      () => Text(
                        chatoneItemModelObj.peternakSapiKita1!.value,
                        style: theme.textTheme.titleLarge,
                      ),
                    ),
                  ),
                  Spacer(),
                  Padding(
                    padding: EdgeInsets.only(
                      top: 8.v,
                      bottom: 10.v,
                    ),
                    child: Obx(
                      () => Text(
                        chatoneItemModelObj.text!.value,
                        style: theme.textTheme.bodyMedium,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 15.v),
          ],
        ),
      ),
    );
  }
}
