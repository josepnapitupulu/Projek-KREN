import 'package:example/core/app_export.dart';
import 'package:example/presentation/hewan_1_screen/models/hewan_1_model.dart';

/// A controller class for the Hewan1Screen.
///
/// This class manages the state of the Hewan1Screen, including the
/// current hewan1ModelObj
class Hewan1Controller extends GetxController {
  Rx<Hewan1Model> hewan1ModelObj = Hewan1Model().obs;
}
