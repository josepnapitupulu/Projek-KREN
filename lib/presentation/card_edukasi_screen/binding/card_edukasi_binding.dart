import '../controller/card_edukasi_controller.dart';
import 'package:get/get.dart';

/// A binding class for the CardEdukasiScreen.
///
/// This class ensures that the CardEdukasiController is created when the
/// CardEdukasiScreen is first loaded.
class CardEdukasiBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CardEdukasiController());
  }
}
