import 'package:example/core/app_export.dart';
import 'package:example/presentation/edit_profile_beranda_screen/models/edit_profile_beranda_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the EditProfileBerandaScreen.
///
/// This class manages the state of the EditProfileBerandaScreen, including the
/// current editProfileBerandaModelObj
class EditProfileBerandaController extends GetxController {
  TextEditingController emailController = TextEditingController();

  Rx<EditProfileBerandaModel> editProfileBerandaModelObj =
      EditProfileBerandaModel().obs;

  @override
  void onClose() {
    super.onClose();
    emailController.dispose();
  }
}
