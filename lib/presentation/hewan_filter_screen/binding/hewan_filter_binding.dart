import '../controller/hewan_filter_controller.dart';
import 'package:get/get.dart';

/// A binding class for the HewanFilterScreen.
///
/// This class ensures that the HewanFilterController is created when the
/// HewanFilterScreen is first loaded.
class HewanFilterBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HewanFilterController());
  }
}
