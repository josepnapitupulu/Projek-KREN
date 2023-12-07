import 'package:example/core/app_export.dart';
import 'package:example/presentation/tambah_screen/models/tambah_model.dart';/// A controller class for the TambahScreen.
///
/// This class manages the state of the TambahScreen, including the
/// current tambahModelObj
class TambahController extends GetxController {Rx<TambahModel> tambahModelObj = TambahModel().obs;

SelectionPopupModel? selectedDropDownValue;

onSelected(dynamic value) { for (var element in tambahModelObj.value.dropdownItemList.value) {element.isSelected = false; if (element.id == value.id) {element.isSelected = true;}} tambahModelObj.value.dropdownItemList.refresh(); } 
 }
