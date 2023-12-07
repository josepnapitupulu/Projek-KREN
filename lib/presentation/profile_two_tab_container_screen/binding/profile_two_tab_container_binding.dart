import '../controller/profile_two_tab_container_controller.dart';
import 'package:get/get.dart';

/// A binding class for the ProfileTwoTabContainerScreen.
///
/// This class ensures that the ProfileTwoTabContainerController is created when the
/// ProfileTwoTabContainerScreen is first loaded.
class ProfileTwoTabContainerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ProfileTwoTabContainerController());
  }
}
