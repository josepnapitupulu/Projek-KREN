import 'package:example/core/app_export.dart';
import 'package:example/presentation/profile_one_screen/models/profile_one_model.dart';/// A controller class for the ProfileOneScreen.
///
/// This class manages the state of the ProfileOneScreen, including the
/// current profileOneModelObj
class ProfileOneController extends GetxController {Rx<ProfileOneModel> profileOneModelObj = ProfileOneModel().obs;

 }
