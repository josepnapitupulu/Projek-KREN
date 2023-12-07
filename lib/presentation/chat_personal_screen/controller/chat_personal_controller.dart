import 'package:example/core/app_export.dart';
import 'package:example/presentation/chat_personal_screen/models/chat_personal_model.dart';
import 'package:flutter/material.dart';/// A controller class for the ChatPersonalScreen.
///
/// This class manages the state of the ChatPersonalScreen, including the
/// current chatPersonalModelObj
class ChatPersonalController extends GetxController {TextEditingController ketikpesanController = TextEditingController();

Rx<ChatPersonalModel> chatPersonalModelObj = ChatPersonalModel().obs;

@override void onClose() { super.onClose(); ketikpesanController.dispose(); } 
 }
