import '../controller/detail_edukasi_controller.dart';
import 'package:get/get.dart';

/// A binding class for the DetailEdukasiScreen.
///
/// This class ensures that the DetailEdukasiController is created when the
/// DetailEdukasiScreen is first loaded.
class DetailEdukasiBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => DetailEdukasiController());
  }
}
