import 'package:example/core/app_export.dart';
import 'package:example/presentation/komunitas_screen/models/komunitas_model.dart';/// A controller class for the KomunitasScreen.
///
/// This class manages the state of the KomunitasScreen, including the
/// current komunitasModelObj
class KomunitasController extends GetxController {Rx<KomunitasModel> komunitasModelObj = KomunitasModel().obs;

 }
