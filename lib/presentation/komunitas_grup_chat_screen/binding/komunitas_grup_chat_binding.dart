import '../controller/komunitas_grup_chat_controller.dart';
import 'package:get/get.dart';

/// A binding class for the KomunitasGrupChatScreen.
///
/// This class ensures that the KomunitasGrupChatController is created when the
/// KomunitasGrupChatScreen is first loaded.
class KomunitasGrupChatBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => KomunitasGrupChatController());
  }
}
