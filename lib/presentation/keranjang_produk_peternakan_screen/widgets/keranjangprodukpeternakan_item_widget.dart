import '../controller/keranjang_produk_peternakan_controller.dart';
import '../models/keranjangprodukpeternakan_item_model.dart';
import 'package:flutter/material.dart';
import 'package:example/core/app_export.dart';

// ignore: must_be_immutable
class KeranjangprodukpeternakanItemWidget extends StatelessWidget {
  KeranjangprodukpeternakanItemWidget(
    this.keranjangprodukpeternakanItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  KeranjangprodukpeternakanItemModel keranjangprodukpeternakanItemModelObj;

  var controller = Get.find<KeranjangProdukPeternakanController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 2.v),
      decoration: AppDecoration.outlineBlack9003,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          SizedBox(height: 12.v),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 23.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 52.v,
                  width: 70.h,
                  decoration: AppDecoration.fillGray400,
                  child: Obx(
                    () => CustomImageView(
                      imagePath: keranjangprodukpeternakanItemModelObj
                          .sapiPotong!.value,
                      height: 52.v,
                      width: 70.h,
                      alignment: Alignment.center,
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(
                      left: 19.h,
                      top: 4.v,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Obx(
                              () => Text(
                                keranjangprodukpeternakanItemModelObj
                                    .sapiPotong1!.value,
                                style: CustomTextStyles.bodyMediumGray700,
                              ),
                            ),
                            Obx(
                              () => Text(
                                keranjangprodukpeternakanItemModelObj
                                    .weight!.value,
                                style: CustomTextStyles.bodySmallGray700_1,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 3.v),
                        Padding(
                          padding: EdgeInsets.only(right: 24.h),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(top: 1.v),
                                child: Obx(
                                  () => Text(
                                    keranjangprodukpeternakanItemModelObj
                                        .rpCounter!.value,
                                    style: theme.textTheme.bodyLarge,
                                  ),
                                ),
                              ),
                              CustomImageView(
                                imagePath: ImageConstant.imgDeleteBinFill,
                                height: 24.adaptSize,
                                width: 24.adaptSize,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 11.v),
          Divider(
            color: appTheme.gray40002,
          ),
        ],
      ),
    );
  }
}
