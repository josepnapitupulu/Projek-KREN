import 'package:example/core/app_export.dart';
import 'package:example/presentation/cari_page/models/cari_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the CariPage.
///
/// This class manages the state of the CariPage, including the
/// current cariModelObj
class CariController extends GetxController {
  CariController(this.cariModelObj);

  TextEditingController cariController = TextEditingController();

  Rx<CariModel> cariModelObj;

  @override
  void onClose() {
    super.onClose();
    cariController.dispose();
  }
}
