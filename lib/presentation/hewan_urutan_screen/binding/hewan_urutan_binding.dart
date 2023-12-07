import '../controller/hewan_urutan_controller.dart';
import 'package:get/get.dart';

/// A binding class for the HewanUrutanScreen.
///
/// This class ensures that the HewanUrutanController is created when the
/// HewanUrutanScreen is first loaded.
class HewanUrutanBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HewanUrutanController());
  }
}
