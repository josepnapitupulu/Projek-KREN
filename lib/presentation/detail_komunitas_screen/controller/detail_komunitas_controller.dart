import 'package:example/core/app_export.dart';
import 'package:example/presentation/detail_komunitas_screen/models/detail_komunitas_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the DetailKomunitasScreen.
///
/// This class manages the state of the DetailKomunitasScreen, including the
/// current detailKomunitasModelObj
class DetailKomunitasController extends GetxController {
  TextEditingController ketikpesanController = TextEditingController();

  Rx<DetailKomunitasModel> detailKomunitasModelObj = DetailKomunitasModel().obs;

  @override
  void onClose() {
    super.onClose();
    ketikpesanController.dispose();
  }
}
