import 'package:example/core/app_export.dart';
import 'package:example/presentation/card_edukasi_screen/models/card_edukasi_model.dart';/// A controller class for the CardEdukasiScreen.
///
/// This class manages the state of the CardEdukasiScreen, including the
/// current cardEdukasiModelObj
class CardEdukasiController extends GetxController {Rx<CardEdukasiModel> cardEdukasiModelObj = CardEdukasiModel().obs;

 }
