import '../controller/detail_produk_controller.dart';
import 'package:get/get.dart';

/// A binding class for the DetailProdukScreen.
///
/// This class ensures that the DetailProdukController is created when the
/// DetailProdukScreen is first loaded.
class DetailProdukBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => DetailProdukController());
  }
}
