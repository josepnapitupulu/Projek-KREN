import 'package:example/core/app_export.dart';
import 'package:example/presentation/register_screen/models/register_model.dart';
import 'package:flutter/material.dart';/// A controller class for the RegisterScreen.
///
/// This class manages the state of the RegisterScreen, including the
/// current registerModelObj
class RegisterController extends GetxController {TextEditingController namaController = TextEditingController();

TextEditingController emailController = TextEditingController();

TextEditingController passwordController = TextEditingController();

Rx<RegisterModel> registerModelObj = RegisterModel().obs;

Rx<bool> isShowPassword = true.obs;

@override void onClose() { super.onClose(); namaController.dispose(); emailController.dispose(); passwordController.dispose(); } 
 }
