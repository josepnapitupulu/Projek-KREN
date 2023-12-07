import '../controller/produk_one_controller.dart';
import 'package:get/get.dart';

/// A binding class for the ProdukOneScreen.
///
/// This class ensures that the ProdukOneController is created when the
/// ProdukOneScreen is first loaded.
class ProdukOneBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ProdukOneController());
  }
}
