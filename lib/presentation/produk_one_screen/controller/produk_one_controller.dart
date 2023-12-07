import 'package:example/core/app_export.dart';
import 'package:example/presentation/produk_one_screen/models/produk_one_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the ProdukOneScreen.
///
/// This class manages the state of the ProdukOneScreen, including the
/// current produkOneModelObj
class ProdukOneController extends GetxController {
  TextEditingController beratController = TextEditingController();

  TextEditingController riwayatPenimbanganController = TextEditingController();

  Rx<ProdukOneModel> produkOneModelObj = ProdukOneModel().obs;

  SelectionPopupModel? selectedDropDownValue;

  @override
  void onClose() {
    super.onClose();
    beratController.dispose();
    riwayatPenimbanganController.dispose();
  }

  onSelected(dynamic value) {
    for (var element in produkOneModelObj.value.dropdownItemList.value) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    }
    produkOneModelObj.value.dropdownItemList.refresh();
  }
}
