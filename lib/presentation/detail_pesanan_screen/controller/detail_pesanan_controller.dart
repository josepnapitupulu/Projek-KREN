import 'package:example/core/app_export.dart';
import 'package:example/presentation/detail_pesanan_screen/models/detail_pesanan_model.dart';/// A controller class for the DetailPesananScreen.
///
/// This class manages the state of the DetailPesananScreen, including the
/// current detailPesananModelObj
class DetailPesananController extends GetxController {Rx<DetailPesananModel> detailPesananModelObj = DetailPesananModel().obs;

Rx<String> radioGroup = "".obs;

 }
