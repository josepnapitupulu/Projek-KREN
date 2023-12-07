import '../controller/edukasi_controller.dart';
import 'package:get/get.dart';

/// A binding class for the EdukasiScreen.
///
/// This class ensures that the EdukasiController is created when the
/// EdukasiScreen is first loaded.
class EdukasiBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => EdukasiController());
  }
}
