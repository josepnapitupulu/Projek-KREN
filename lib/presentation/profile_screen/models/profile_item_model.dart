import '../../../core/app_export.dart';/// This class is used in the [profile_item_widget] screen.
class ProfileItemModel {ProfileItemModel({this.siapJual, this.siapJual1, this.sapiPotong, this.weight, this.rpCounter, this.jantanDewasa, this.id, }) { siapJual = siapJual  ?? Rx(ImageConstant.imgRectangle57);siapJual1 = siapJual1  ?? Rx("Siap Jual");sapiPotong = sapiPotong  ?? Rx("Sapi Potong");weight = weight  ?? Rx("400 - 700 Kg");rpCounter = rpCounter  ?? Rx("Rp 18.000.000");jantanDewasa = jantanDewasa  ?? Rx("Jantan Dewasa");id = id  ?? Rx(""); }

Rx<String>? siapJual;

Rx<String>? siapJual1;

Rx<String>? sapiPotong;

Rx<String>? weight;

Rx<String>? rpCounter;

Rx<String>? jantanDewasa;

Rx<String>? id;

 }
