import '../controller/cari_container_controller.dart';
import 'package:get/get.dart';

/// A binding class for the CariContainerScreen.
///
/// This class ensures that the CariContainerController is created when the
/// CariContainerScreen is first loaded.
class CariContainerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CariContainerController());
  }
}
