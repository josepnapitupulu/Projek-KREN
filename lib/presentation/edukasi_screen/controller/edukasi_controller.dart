import 'package:example/core/app_export.dart';
import 'package:example/presentation/edukasi_screen/models/edukasi_model.dart';/// A controller class for the EdukasiScreen.
///
/// This class manages the state of the EdukasiScreen, including the
/// current edukasiModelObj
class EdukasiController extends GetxController {Rx<EdukasiModel> edukasiModelObj = EdukasiModel().obs;

 }
