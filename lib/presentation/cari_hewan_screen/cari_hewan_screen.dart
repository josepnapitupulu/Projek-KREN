import '../cari_hewan_screen/widgets/arrowsupperarrow_item_widget.dart';
import '../cari_hewan_screen/widgets/carihewan_item_widget.dart';
import 'controller/cari_hewan_controller.dart';
import 'models/arrowsupperarrow_item_model.dart';
import 'models/carihewan_item_model.dart';
import 'package:flutter/material.dart';
import 'package:example/core/app_export.dart';
import 'package:example/presentation/cari_page/cari_page.dart';
import 'package:example/widgets/custom_bottom_bar.dart';
import 'package:example/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class CariHewanScreen extends GetWidget<CariHewanController> {
  const CariHewanScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(horizontal: 18.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 3.h),
                child: CustomTextFormField(
                  controller: controller.cariController,
                  hintText: "msg_kamu_ingin_mencari".tr,
                  hintStyle: CustomTextStyles.bodySmallBlack900,
                  textInputAction: TextInputAction.done,
                  prefix: Container(
                    margin: EdgeInsets.fromLTRB(11.h, 5.v, 5.h, 6.v),
                    child: CustomImageView(
                      imagePath: ImageConstant.imgSearchPrimarycontainer,
                      height: 22.v,
                      width: 21.h,
                    ),
                  ),
                  prefixConstraints: BoxConstraints(
                    maxHeight: 33.v,
                  ),
                  borderDecoration: TextFormFieldStyleHelper.fillPrimary,
                  filled: true,
                  fillColor: theme.colorScheme.primary.withOpacity(0.5),
                ),
              ),
              SizedBox(height: 16.v),
              _buildArrowsupperarrow(),
              SizedBox(height: 28.v),
              Padding(
                padding: EdgeInsets.only(left: 4.h),
                child: Text(
                  "msg_daftar_semua_hewan".tr,
                  style: theme.textTheme.bodyMedium,
                ),
              ),
              SizedBox(height: 20.v),
              _buildCariHewan(),
            ],
          ),
        ),
        bottomNavigationBar: _buildBottomBar(),
      ),
    );
  }

  /// Section Widget
  Widget _buildArrowsupperarrow() {
    return Padding(
      padding: EdgeInsets.only(left: 4.h),
      child: Obx(
        () => Wrap(
          runSpacing: 5.v,
          spacing: 5.h,
          children: List<Widget>.generate(
            controller
                .cariHewanModelObj.value.arrowsupperarrowItemList.value.length,
            (index) {
              ArrowsupperarrowItemModel model = controller.cariHewanModelObj
                  .value.arrowsupperarrowItemList.value[index];

              return ArrowsupperarrowItemWidget(
                model,
              );
            },
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildCariHewan() {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.only(
          left: 4.h,
          right: 36.h,
        ),
        child: Obx(
          () => ListView.separated(
            physics: BouncingScrollPhysics(),
            shrinkWrap: true,
            separatorBuilder: (
              context,
              index,
            ) {
              return SizedBox(
                height: 13.v,
              );
            },
            itemCount: controller
                .cariHewanModelObj.value.carihewanItemList.value.length,
            itemBuilder: (context, index) {
              CarihewanItemModel model = controller
                  .cariHewanModelObj.value.carihewanItemList.value[index];
              return CarihewanItemWidget(
                model,
              );
            },
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildBottomBar() {
    return CustomBottomBar(
      onChanged: (BottomBarEnum type) {
        Get.toNamed(getCurrentRoute(type), id: 1);
      },
    );
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Beranda:
        return AppRoutes.cariPage;
      case BottomBarEnum.Cari:
        return "/";
      case BottomBarEnum.Edukasi:
        return "/";
      case BottomBarEnum.Akun:
        return "/";
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.cariPage:
        return CariPage();
      default:
        return DefaultWidget();
    }
  }
}
