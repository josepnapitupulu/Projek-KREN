import 'package:example/core/app_export.dart';
import 'package:example/presentation/komunitas_two_screen/models/komunitas_two_model.dart';
import 'package:flutter/material.dart';/// A controller class for the KomunitasTwoScreen.
///
/// This class manages the state of the KomunitasTwoScreen, including the
/// current komunitasTwoModelObj
class KomunitasTwoController extends GetxController {TextEditingController cariController = TextEditingController();

Rx<KomunitasTwoModel> komunitasTwoModelObj = KomunitasTwoModel().obs;

@override void onClose() { super.onClose(); cariController.dispose(); } 
 }
