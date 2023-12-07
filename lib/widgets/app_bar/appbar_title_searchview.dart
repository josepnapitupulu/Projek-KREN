import 'package:flutter/material.dart';
import 'package:example/core/app_export.dart';
import 'package:example/widgets/custom_search_view.dart';

// ignore: must_be_immutable
class AppbarTitleSearchview extends StatelessWidget {
  AppbarTitleSearchview({
    Key? key,
    this.hintText,
    this.controller,
    this.margin,
  }) : super(
          key: key,
        );

  String? hintText;

  TextEditingController? controller;

  EdgeInsetsGeometry? margin;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: margin ?? EdgeInsets.zero,
      child: CustomSearchView(
        width: 351.h,
        controller: controller,
        hintText: "msg_daftar_semua_hewan2".tr,
        borderDecoration: SearchViewStyleHelper.underLineBlueGray,
        filled: false,
      ),
    );
  }
}
