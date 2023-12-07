import '../controller/pembayaran_controller.dart';
import 'package:get/get.dart';

/// A binding class for the PembayaranScreen.
///
/// This class ensures that the PembayaranController is created when the
/// PembayaranScreen is first loaded.
class PembayaranBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => PembayaranController());
  }
}
