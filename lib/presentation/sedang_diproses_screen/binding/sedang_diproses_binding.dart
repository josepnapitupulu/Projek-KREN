import '../controller/sedang_diproses_controller.dart';
import 'package:get/get.dart';

/// A binding class for the SedangDiprosesScreen.
///
/// This class ensures that the SedangDiprosesController is created when the
/// SedangDiprosesScreen is first loaded.
class SedangDiprosesBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SedangDiprosesController());
  }
}
