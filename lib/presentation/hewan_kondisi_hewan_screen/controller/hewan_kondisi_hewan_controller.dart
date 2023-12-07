import 'package:example/core/app_export.dart';
import 'package:example/presentation/hewan_kondisi_hewan_screen/models/hewan_kondisi_hewan_model.dart';

/// A controller class for the HewanKondisiHewanScreen.
///
/// This class manages the state of the HewanKondisiHewanScreen, including the
/// current hewanKondisiHewanModelObj
class HewanKondisiHewanController extends GetxController {
  Rx<HewanKondisiHewanModel> hewanKondisiHewanModelObj =
      HewanKondisiHewanModel().obs;

  Rx<bool> sehat = false.obs;

  Rx<bool> sakit = false.obs;

  Rx<bool> potongPaksa = false.obs;

  Rx<bool> mati = false.obs;
}
