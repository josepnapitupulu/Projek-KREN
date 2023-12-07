import '../controller/tambah_postingan_controller.dart';
import 'package:get/get.dart';

/// A binding class for the TambahPostinganScreen.
///
/// This class ensures that the TambahPostinganController is created when the
/// TambahPostinganScreen is first loaded.
class TambahPostinganBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => TambahPostinganController());
  }
}
