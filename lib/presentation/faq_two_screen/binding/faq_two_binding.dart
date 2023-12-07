import '../controller/faq_two_controller.dart';
import 'package:get/get.dart';

/// A binding class for the FaqTwoScreen.
///
/// This class ensures that the FaqTwoController is created when the
/// FaqTwoScreen is first loaded.
class FaqTwoBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => FaqTwoController());
  }
}
