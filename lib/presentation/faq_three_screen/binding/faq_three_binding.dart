import '../controller/faq_three_controller.dart';
import 'package:get/get.dart';

/// A binding class for the FaqThreeScreen.
///
/// This class ensures that the FaqThreeController is created when the
/// FaqThreeScreen is first loaded.
class FaqThreeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => FaqThreeController());
  }
}
