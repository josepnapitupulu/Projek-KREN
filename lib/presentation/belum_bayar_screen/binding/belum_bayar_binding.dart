import '../controller/belum_bayar_controller.dart';
import 'package:get/get.dart';

/// A binding class for the BelumBayarScreen.
///
/// This class ensures that the BelumBayarController is created when the
/// BelumBayarScreen is first loaded.
class BelumBayarBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => BelumBayarController());
  }
}
