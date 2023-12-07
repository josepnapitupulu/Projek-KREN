import 'package:example/core/app_export.dart';
import 'package:example/presentation/produk_screen/models/produk_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the ProdukScreen.
///
/// This class manages the state of the ProdukScreen, including the
/// current produkModelObj
class ProdukController extends GetxController {
  TextEditingController betinaController = TextEditingController();

  TextEditingController riwayatPenimbanganController = TextEditingController();

  Rx<ProdukModel> produkModelObj = ProdukModel().obs;

  SelectionPopupModel? selectedDropDownValue;

  @override
  void onClose() {
    super.onClose();
    betinaController.dispose();
    riwayatPenimbanganController.dispose();
  }

  onSelected(dynamic value) {
    for (var element in produkModelObj.value.dropdownItemList.value) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    }
    produkModelObj.value.dropdownItemList.refresh();
  }
}
