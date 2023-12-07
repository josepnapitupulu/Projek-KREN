import '../controller/produk_six_controller.dart';
import 'package:get/get.dart';

/// A binding class for the ProdukSixScreen.
///
/// This class ensures that the ProdukSixController is created when the
/// ProdukSixScreen is first loaded.
class ProdukSixBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ProdukSixController());
  }
}
