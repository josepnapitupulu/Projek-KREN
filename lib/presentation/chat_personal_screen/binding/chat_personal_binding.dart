import '../controller/chat_personal_controller.dart';
import 'package:get/get.dart';

/// A binding class for the ChatPersonalScreen.
///
/// This class ensures that the ChatPersonalController is created when the
/// ChatPersonalScreen is first loaded.
class ChatPersonalBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ChatPersonalController());
  }
}
