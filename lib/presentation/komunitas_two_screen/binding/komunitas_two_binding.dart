import '../controller/komunitas_two_controller.dart';
import 'package:get/get.dart';

/// A binding class for the KomunitasTwoScreen.
///
/// This class ensures that the KomunitasTwoController is created when the
/// KomunitasTwoScreen is first loaded.
class KomunitasTwoBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => KomunitasTwoController());
  }
}
