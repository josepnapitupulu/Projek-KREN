import '../controller/detail_pesanan_controller.dart';
import 'package:get/get.dart';

/// A binding class for the DetailPesananScreen.
///
/// This class ensures that the DetailPesananController is created when the
/// DetailPesananScreen is first loaded.
class DetailPesananBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => DetailPesananController());
  }
}
