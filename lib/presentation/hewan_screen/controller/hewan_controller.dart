import 'package:example/core/app_export.dart';
import 'package:example/presentation/hewan_screen/models/hewan_model.dart';
import 'package:flutter/material.dart';/// A controller class for the HewanScreen.
///
/// This class manages the state of the HewanScreen, including the
/// current hewanModelObj
class HewanController extends GetxController {TextEditingController searchController = TextEditingController();

Rx<HewanModel> hewanModelObj = HewanModel().obs;

@override void onClose() { super.onClose(); searchController.dispose(); } 
 }
