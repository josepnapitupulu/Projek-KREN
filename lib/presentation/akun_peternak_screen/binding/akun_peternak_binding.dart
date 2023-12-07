import '../controller/akun_peternak_controller.dart';
import 'package:get/get.dart';

/// A binding class for the AkunPeternakScreen.
///
/// This class ensures that the AkunPeternakController is created when the
/// AkunPeternakScreen is first loaded.
class AkunPeternakBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AkunPeternakController());
  }
}
