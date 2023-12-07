import 'package:example/core/app_export.dart';
import 'package:example/presentation/edit_profile_beranda_two_screen/models/edit_profile_beranda_two_model.dart';import 'package:flutter/material.dart';/// A controller class for the EditProfileBerandaTwoScreen.
///
/// This class manages the state of the EditProfileBerandaTwoScreen, including the
/// current editProfileBerandaTwoModelObj
class EditProfileBerandaTwoController extends GetxController {TextEditingController emailController = TextEditingController();

Rx<EditProfileBerandaTwoModel> editProfileBerandaTwoModelObj = EditProfileBerandaTwoModel().obs;

SelectionPopupModel? selectedDropDownValue;

SelectionPopupModel? selectedDropDownValue1;

@override void onClose() { super.onClose(); emailController.dispose(); } 
onSelected(dynamic value) { for (var element in editProfileBerandaTwoModelObj.value.dropdownItemList.value) {element.isSelected = false; if (element.id == value.id) {element.isSelected = true;}} editProfileBerandaTwoModelObj.value.dropdownItemList.refresh(); } 
onSelected1(dynamic value) { for (var element in editProfileBerandaTwoModelObj.value.dropdownItemList1.value) {element.isSelected = false; if (element.id == value.id) {element.isSelected = true;}} editProfileBerandaTwoModelObj.value.dropdownItemList1.refresh(); } 
 }
