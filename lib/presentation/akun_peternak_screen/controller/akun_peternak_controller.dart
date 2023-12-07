import 'package:example/core/app_export.dart';
import 'package:example/presentation/akun_peternak_screen/models/akun_peternak_model.dart';/// A controller class for the AkunPeternakScreen.
///
/// This class manages the state of the AkunPeternakScreen, including the
/// current akunPeternakModelObj
class AkunPeternakController extends GetxController {Rx<AkunPeternakModel> akunPeternakModelObj = AkunPeternakModel().obs;

 }
