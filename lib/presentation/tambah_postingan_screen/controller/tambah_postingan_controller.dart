import 'package:example/core/app_export.dart';
import 'package:example/presentation/tambah_postingan_screen/models/tambah_postingan_model.dart';/// A controller class for the TambahPostinganScreen.
///
/// This class manages the state of the TambahPostinganScreen, including the
/// current tambahPostinganModelObj
class TambahPostinganController extends GetxController {Rx<TambahPostinganModel> tambahPostinganModelObj = TambahPostinganModel().obs;

SelectionPopupModel? selectedDropDownValue;

onSelected(dynamic value) { for (var element in tambahPostinganModelObj.value.dropdownItemList.value) {element.isSelected = false; if (element.id == value.id) {element.isSelected = true;}} tambahPostinganModelObj.value.dropdownItemList.refresh(); } 
 }
