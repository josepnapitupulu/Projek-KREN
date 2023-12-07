import '../controller/rincian_pembayaran_controller.dart';
import 'package:get/get.dart';

/// A binding class for the RincianPembayaranScreen.
///
/// This class ensures that the RincianPembayaranController is created when the
/// RincianPembayaranScreen is first loaded.
class RincianPembayaranBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => RincianPembayaranController());
  }
}
