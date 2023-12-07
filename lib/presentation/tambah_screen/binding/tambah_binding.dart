import '../controller/tambah_controller.dart';
import 'package:get/get.dart';

/// A binding class for the TambahScreen.
///
/// This class ensures that the TambahController is created when the
/// TambahScreen is first loaded.
class TambahBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => TambahController());
  }
}
