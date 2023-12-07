import 'package:example/core/app_export.dart';
import 'package:example/presentation/beranda_screen/models/beranda_model.dart';/// A controller class for the BerandaScreen.
///
/// This class manages the state of the BerandaScreen, including the
/// current berandaModelObj
class BerandaController extends GetxController {Rx<BerandaModel> berandaModelObj = BerandaModel().obs;

 }
