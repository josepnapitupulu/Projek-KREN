import 'package:example/core/app_export.dart';
import 'package:example/presentation/produk_six_screen/models/produk_six_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the ProdukSixScreen.
///
/// This class manages the state of the ProdukSixScreen, including the
/// current produkSixModelObj
class ProdukSixController extends GetxController {
  TextEditingController riwayatPenimbanganController = TextEditingController();

  Rx<ProdukSixModel> produkSixModelObj = ProdukSixModel().obs;

  SelectionPopupModel? selectedDropDownValue;

  @override
  void onClose() {
    super.onClose();
    riwayatPenimbanganController.dispose();
  }

  onSelected(dynamic value) {
    for (var element in produkSixModelObj.value.dropdownItemList.value) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    }
    produkSixModelObj.value.dropdownItemList.refresh();
  }
}
