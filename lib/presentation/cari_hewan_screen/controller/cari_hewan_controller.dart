import 'package:example/core/app_export.dart';
import 'package:example/presentation/cari_hewan_screen/models/cari_hewan_model.dart';
import 'package:flutter/material.dart';/// A controller class for the CariHewanScreen.
///
/// This class manages the state of the CariHewanScreen, including the
/// current cariHewanModelObj
class CariHewanController extends GetxController {TextEditingController cariController = TextEditingController();

Rx<CariHewanModel> cariHewanModelObj = CariHewanModel().obs;

@override void onClose() { super.onClose(); cariController.dispose(); } 
 }
