import '../controller/keranjang_peternakan_controller.dart';
import 'package:get/get.dart';

/// A binding class for the KeranjangPeternakanScreen.
///
/// This class ensures that the KeranjangPeternakanController is created when the
/// KeranjangPeternakanScreen is first loaded.
class KeranjangPeternakanBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => KeranjangPeternakanController());
  }
}
