import '../controller/chat_personal_one_controller.dart';
import 'package:get/get.dart';

/// A binding class for the ChatPersonalOneScreen.
///
/// This class ensures that the ChatPersonalOneController is created when the
/// ChatPersonalOneScreen is first loaded.
class ChatPersonalOneBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ChatPersonalOneController());
  }
}
