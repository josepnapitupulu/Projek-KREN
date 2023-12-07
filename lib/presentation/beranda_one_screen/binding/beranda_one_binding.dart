import '../controller/beranda_one_controller.dart';
import 'package:get/get.dart';

/// A binding class for the BerandaOneScreen.
///
/// This class ensures that the BerandaOneController is created when the
/// BerandaOneScreen is first loaded.
class BerandaOneBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => BerandaOneController());
  }
}
