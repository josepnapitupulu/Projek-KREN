import '../controller/bukti_pembayaran_controller.dart';
import 'package:get/get.dart';

/// A binding class for the BuktiPembayaranScreen.
///
/// This class ensures that the BuktiPembayaranController is created when the
/// BuktiPembayaranScreen is first loaded.
class BuktiPembayaranBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => BuktiPembayaranController());
  }
}
