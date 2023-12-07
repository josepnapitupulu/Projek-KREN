import 'package:example/core/app_export.dart';
import 'package:example/presentation/beranda_one_screen/models/beranda_one_model.dart';/// A controller class for the BerandaOneScreen.
///
/// This class manages the state of the BerandaOneScreen, including the
/// current berandaOneModelObj
class BerandaOneController extends GetxController {Rx<BerandaOneModel> berandaOneModelObj = BerandaOneModel().obs;

 }
