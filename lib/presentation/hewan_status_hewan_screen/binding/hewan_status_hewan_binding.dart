import '../controller/hewan_status_hewan_controller.dart';
import 'package:get/get.dart';

/// A binding class for the HewanStatusHewanScreen.
///
/// This class ensures that the HewanStatusHewanController is created when the
/// HewanStatusHewanScreen is first loaded.
class HewanStatusHewanBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HewanStatusHewanController());
  }
}
