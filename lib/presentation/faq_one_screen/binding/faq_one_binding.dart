import '../controller/faq_one_controller.dart';
import 'package:get/get.dart';

/// A binding class for the FaqOneScreen.
///
/// This class ensures that the FaqOneController is created when the
/// FaqOneScreen is first loaded.
class FaqOneBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => FaqOneController());
  }
}
