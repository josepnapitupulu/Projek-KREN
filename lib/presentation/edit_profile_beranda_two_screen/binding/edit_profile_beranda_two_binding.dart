import '../controller/edit_profile_beranda_two_controller.dart';
import 'package:get/get.dart';

/// A binding class for the EditProfileBerandaTwoScreen.
///
/// This class ensures that the EditProfileBerandaTwoController is created when the
/// EditProfileBerandaTwoScreen is first loaded.
class EditProfileBerandaTwoBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => EditProfileBerandaTwoController());
  }
}
