import '../controller/pesanan_controller.dart';
import 'package:get/get.dart';

/// A binding class for the PesananScreen.
///
/// This class ensures that the PesananController is created when the
/// PesananScreen is first loaded.
class PesananBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => PesananController());
  }
}
