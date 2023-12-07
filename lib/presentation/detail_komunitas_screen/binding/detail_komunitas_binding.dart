import '../controller/detail_komunitas_controller.dart';
import 'package:get/get.dart';

/// A binding class for the DetailKomunitasScreen.
///
/// This class ensures that the DetailKomunitasController is created when the
/// DetailKomunitasScreen is first loaded.
class DetailKomunitasBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => DetailKomunitasController());
  }
}
