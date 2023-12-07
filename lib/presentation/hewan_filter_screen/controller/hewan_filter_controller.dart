import 'package:example/core/app_export.dart';
import 'package:example/presentation/hewan_filter_screen/models/hewan_filter_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the HewanFilterScreen.
///
/// This class manages the state of the HewanFilterScreen, including the
/// current hewanFilterModelObj
class HewanFilterController extends GetxController {
  TextEditingController hargaController = TextEditingController();

  Rx<HewanFilterModel> hewanFilterModelObj = HewanFilterModel().obs;

  @override
  void onClose() {
    super.onClose();
    hargaController.dispose();
  }
}
