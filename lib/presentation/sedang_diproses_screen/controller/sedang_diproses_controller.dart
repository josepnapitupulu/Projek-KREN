import 'package:example/core/app_export.dart';
import 'package:example/presentation/sedang_diproses_screen/models/sedang_diproses_model.dart';/// A controller class for the SedangDiprosesScreen.
///
/// This class manages the state of the SedangDiprosesScreen, including the
/// current sedangDiprosesModelObj
class SedangDiprosesController extends GetxController {Rx<SedangDiprosesModel> sedangDiprosesModelObj = SedangDiprosesModel().obs;

 }
