import '../models/arrowsupperarrow_item_model.dart';
import 'package:flutter/material.dart';
import 'package:example/core/app_export.dart';

// ignore: must_be_immutable
class ArrowsupperarrowItemWidget extends StatelessWidget {
  ArrowsupperarrowItemWidget(
    this.arrowsupperarrowItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  ArrowsupperarrowItemModel arrowsupperarrowItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => RawChip(
        padding: EdgeInsets.only(
          top: 5.v,
          right: 11.h,
          bottom: 5.v,
        ),
        showCheckmark: false,
        labelPadding: EdgeInsets.zero,
        label: Text(
          arrowsupperarrowItemModelObj.arrowsupperarrow!.value,
          style: TextStyle(
            color: appTheme.black900,
            fontSize: 10.fSize,
            fontFamily: 'Patrick Hand',
            fontWeight: FontWeight.w400,
          ),
        ),
        avatar: CustomImageView(
          imagePath: ImageConstant.imgArrowsUpperArrow,
          height: 15.v,
          width: 16.h,
        ),
        selected: (arrowsupperarrowItemModelObj.isSelected?.value ?? false),
        backgroundColor: appTheme.blueGray10001,
        selectedColor: appTheme.blueGray10001,
        shape: (arrowsupperarrowItemModelObj.isSelected?.value ?? false)
            ? RoundedRectangleBorder(
                side: BorderSide(
                  color: appTheme.blueGray10001.withOpacity(0.6),
                  width: 1.h,
                ),
                borderRadius: BorderRadius.circular(
                  12.h,
                ),
              )
            : RoundedRectangleBorder(
                side: BorderSide(
                  color: appTheme.black900,
                  width: 1.h,
                ),
                borderRadius: BorderRadius.circular(
                  12.h,
                ),
              ),
        onSelected: (value) {
          arrowsupperarrowItemModelObj.isSelected!.value = value;
        },
      ),
    );
  }
}
