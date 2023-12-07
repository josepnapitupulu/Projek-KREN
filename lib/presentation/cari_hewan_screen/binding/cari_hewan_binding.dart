import '../controller/cari_hewan_controller.dart';
import 'package:get/get.dart';

/// A binding class for the CariHewanScreen.
///
/// This class ensures that the CariHewanController is created when the
/// CariHewanScreen is first loaded.
class CariHewanBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CariHewanController());
  }
}
