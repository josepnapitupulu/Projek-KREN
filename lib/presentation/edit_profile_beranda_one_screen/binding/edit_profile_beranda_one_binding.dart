import '../controller/edit_profile_beranda_one_controller.dart';
import 'package:get/get.dart';

/// A binding class for the EditProfileBerandaOneScreen.
///
/// This class ensures that the EditProfileBerandaOneController is created when the
/// EditProfileBerandaOneScreen is first loaded.
class EditProfileBerandaOneBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => EditProfileBerandaOneController());
  }
}
