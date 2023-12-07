import 'package:example/core/app_export.dart';
import 'package:example/presentation/chat_personal_one_screen/models/chat_personal_one_model.dart';
import 'package:flutter/material.dart';/// A controller class for the ChatPersonalOneScreen.
///
/// This class manages the state of the ChatPersonalOneScreen, including the
/// current chatPersonalOneModelObj
class ChatPersonalOneController extends GetxController {TextEditingController ketikpesanController = TextEditingController();

Rx<ChatPersonalOneModel> chatPersonalOneModelObj = ChatPersonalOneModel().obs;

@override void onClose() { super.onClose(); ketikpesanController.dispose(); } 
 }
