import '../controller/edit_profile_beranda_controller.dart';
import 'package:get/get.dart';

/// A binding class for the EditProfileBerandaScreen.
///
/// This class ensures that the EditProfileBerandaController is created when the
/// EditProfileBerandaScreen is first loaded.
class EditProfileBerandaBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => EditProfileBerandaController());
  }
}
