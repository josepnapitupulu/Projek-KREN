import 'package:example/core/app_export.dart';
import 'package:example/presentation/hewan_urutan_screen/models/hewan_urutan_model.dart';/// A controller class for the HewanUrutanScreen.
///
/// This class manages the state of the HewanUrutanScreen, including the
/// current hewanUrutanModelObj
class HewanUrutanController extends GetxController {Rx<HewanUrutanModel> hewanUrutanModelObj = HewanUrutanModel().obs;

 }
