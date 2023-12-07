import '../controller/produk_controller.dart';
import 'package:get/get.dart';

/// A binding class for the ProdukScreen.
///
/// This class ensures that the ProdukController is created when the
/// ProdukScreen is first loaded.
class ProdukBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ProdukController());
  }
}
