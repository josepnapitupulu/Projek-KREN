import '../controller/komunitas_one_controller.dart';
import 'package:get/get.dart';

/// A binding class for the KomunitasOneScreen.
///
/// This class ensures that the KomunitasOneController is created when the
/// KomunitasOneScreen is first loaded.
class KomunitasOneBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => KomunitasOneController());
  }
}
