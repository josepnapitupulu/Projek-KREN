import '../controller/komunitas_controller.dart';
import 'package:get/get.dart';

/// A binding class for the KomunitasScreen.
///
/// This class ensures that the KomunitasController is created when the
/// KomunitasScreen is first loaded.
class KomunitasBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => KomunitasController());
  }
}
