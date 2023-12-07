import '../controller/produk_three_controller.dart';
import 'package:get/get.dart';

/// A binding class for the ProdukThreeScreen.
///
/// This class ensures that the ProdukThreeController is created when the
/// ProdukThreeScreen is first loaded.
class ProdukThreeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ProdukThreeController());
  }
}
