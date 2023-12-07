import 'package:example/core/app_export.dart';
import 'package:example/presentation/cari_container_screen/models/cari_container_model.dart';/// A controller class for the CariContainerScreen.
///
/// This class manages the state of the CariContainerScreen, including the
/// current cariContainerModelObj
class CariContainerController extends GetxController {Rx<CariContainerModel> cariContainerModelObj = CariContainerModel().obs;

 }
