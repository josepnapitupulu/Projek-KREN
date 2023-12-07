import '../controller/faq_two_controller.dart';
import '../models/faqtwo_item_model.dart';
import 'package:flutter/material.dart';
import 'package:example/core/app_export.dart';

// ignore: must_be_immutable
class FaqtwoItemWidget extends StatelessWidget {
  FaqtwoItemWidget(
    this.faqtwoItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  FaqtwoItemModel faqtwoItemModelObj;

  var controller = Get.find<FaqTwoController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: AppDecoration.fillGray100,
      child: Column(
        children: [
          Divider(),
          SizedBox(height: 21.v),
          Padding(
            padding: EdgeInsets.only(
              left: 40.h,
              right: 33.h,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Obx(
                  () => Text(
                    faqtwoItemModelObj.apaItuTaTernak!.value,
                    style: theme.textTheme.titleLarge,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 5.v),
                  child: Obx(
                    () => Text(
                      faqtwoItemModelObj.text!.value,
                      style: theme.textTheme.bodyMedium,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 18.v),
        ],
      ),
    );
  }
}
