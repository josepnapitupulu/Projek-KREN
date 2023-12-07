import 'package:example/core/app_export.dart';
import 'package:example/presentation/komunitas_grup_chat_screen/models/komunitas_grup_chat_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the KomunitasGrupChatScreen.
///
/// This class manages the state of the KomunitasGrupChatScreen, including the
/// current komunitasGrupChatModelObj
class KomunitasGrupChatController extends GetxController {
  TextEditingController ketikpesanController = TextEditingController();

  Rx<KomunitasGrupChatModel> komunitasGrupChatModelObj =
      KomunitasGrupChatModel().obs;

  @override
  void onClose() {
    super.onClose();
    ketikpesanController.dispose();
  }
}
