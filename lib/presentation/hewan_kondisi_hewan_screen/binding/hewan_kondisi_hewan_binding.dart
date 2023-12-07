import '../controller/hewan_kondisi_hewan_controller.dart';
import 'package:get/get.dart';

/// A binding class for the HewanKondisiHewanScreen.
///
/// This class ensures that the HewanKondisiHewanController is created when the
/// HewanKondisiHewanScreen is first loaded.
class HewanKondisiHewanBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HewanKondisiHewanController());
  }
}
