import '../controller/produk_four_controller.dart';
import 'package:get/get.dart';

/// A binding class for the ProdukFourScreen.
///
/// This class ensures that the ProdukFourController is created when the
/// ProdukFourScreen is first loaded.
class ProdukFourBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ProdukFourController());
  }
}
