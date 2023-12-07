import 'package:example/core/app_export.dart';
import 'package:example/presentation/produk_five_screen/models/produk_five_model.dart';
import 'package:flutter/material.dart';/// A controller class for the ProdukFiveScreen.
///
/// This class manages the state of the ProdukFiveScreen, including the
/// current produkFiveModelObj
class ProdukFiveController extends GetxController {TextEditingController riwayatPenimbanganController = TextEditingController();

Rx<ProdukFiveModel> produkFiveModelObj = ProdukFiveModel().obs;

SelectionPopupModel? selectedDropDownValue;

@override void onClose() { super.onClose(); riwayatPenimbanganController.dispose(); } 
onSelected(dynamic value) { for (var element in produkFiveModelObj.value.dropdownItemList.value) {element.isSelected = false; if (element.id == value.id) {element.isSelected = true;}} produkFiveModelObj.value.dropdownItemList.refresh(); } 
 }
