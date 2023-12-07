import '../controller/produk_five_controller.dart';
import 'package:get/get.dart';

/// A binding class for the ProdukFiveScreen.
///
/// This class ensures that the ProdukFiveController is created when the
/// ProdukFiveScreen is first loaded.
class ProdukFiveBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ProdukFiveController());
  }
}
