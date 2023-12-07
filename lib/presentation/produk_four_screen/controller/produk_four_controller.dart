import 'package:example/core/app_export.dart';
import 'package:example/presentation/produk_four_screen/models/produk_four_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the ProdukFourScreen.
///
/// This class manages the state of the ProdukFourScreen, including the
/// current produkFourModelObj
class ProdukFourController extends GetxController {
  TextEditingController sehatController = TextEditingController();

  TextEditingController potongPaksaController = TextEditingController();

  TextEditingController editTextController = TextEditingController();

  TextEditingController riwayatPenimbanganController = TextEditingController();

  Rx<ProdukFourModel> produkFourModelObj = ProdukFourModel().obs;

  @override
  void onClose() {
    super.onClose();
    sehatController.dispose();
    potongPaksaController.dispose();
    editTextController.dispose();
    riwayatPenimbanganController.dispose();
  }
}
