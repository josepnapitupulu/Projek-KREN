import 'package:example/core/app_export.dart';
import 'package:example/presentation/hewan_status_hewan_screen/models/hewan_status_hewan_model.dart';

/// A controller class for the HewanStatusHewanScreen.
///
/// This class manages the state of the HewanStatusHewanScreen, including the
/// current hewanStatusHewanModelObj
class HewanStatusHewanController extends GetxController {
  Rx<HewanStatusHewanModel> hewanStatusHewanModelObj =
      HewanStatusHewanModel().obs;

  Rx<bool> terjual = false.obs;

  Rx<bool> siapJual = false.obs;

  Rx<bool> pemeliharaan = false.obs;
}
