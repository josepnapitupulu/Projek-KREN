import '../controller/hewan_controller.dart';
import 'package:get/get.dart';

/// A binding class for the HewanScreen.
///
/// This class ensures that the HewanController is created when the
/// HewanScreen is first loaded.
class HewanBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HewanController());
  }
}
