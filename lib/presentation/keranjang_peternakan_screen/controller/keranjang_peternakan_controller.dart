import 'package:example/core/app_export.dart';
import 'package:example/presentation/keranjang_peternakan_screen/models/keranjang_peternakan_model.dart';/// A controller class for the KeranjangPeternakanScreen.
///
/// This class manages the state of the KeranjangPeternakanScreen, including the
/// current keranjangPeternakanModelObj
class KeranjangPeternakanController extends GetxController {Rx<KeranjangPeternakanModel> keranjangPeternakanModelObj = KeranjangPeternakanModel().obs;

 }
