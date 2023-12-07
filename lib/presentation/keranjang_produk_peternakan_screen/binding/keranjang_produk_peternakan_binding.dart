import '../controller/keranjang_produk_peternakan_controller.dart';
import 'package:get/get.dart';

/// A binding class for the KeranjangProdukPeternakanScreen.
///
/// This class ensures that the KeranjangProdukPeternakanController is created when the
/// KeranjangProdukPeternakanScreen is first loaded.
class KeranjangProdukPeternakanBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => KeranjangProdukPeternakanController());
  }
}
