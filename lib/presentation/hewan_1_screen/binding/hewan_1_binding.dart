import '../controller/hewan_1_controller.dart';
import 'package:get/get.dart';

/// A binding class for the Hewan1Screen.
///
/// This class ensures that the Hewan1Controller is created when the
/// Hewan1Screen is first loaded.
class Hewan1Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => Hewan1Controller());
  }
}
