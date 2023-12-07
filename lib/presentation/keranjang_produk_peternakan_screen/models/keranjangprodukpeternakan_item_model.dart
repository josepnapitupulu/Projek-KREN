import '../../../core/app_export.dart';/// This class is used in the [keranjangprodukpeternakan_item_widget] screen.
class KeranjangprodukpeternakanItemModel {KeranjangprodukpeternakanItemModel({this.sapiPotong, this.sapiPotong1, this.weight, this.rpCounter, this.id, }) { sapiPotong = sapiPotong  ?? Rx(ImageConstant.imgRectangle57);sapiPotong1 = sapiPotong1  ?? Rx("Sapi Potong");weight = weight  ?? Rx("400 - 700 Kg");rpCounter = rpCounter  ?? Rx("Rp 18.000.000");id = id  ?? Rx(""); }

Rx<String>? sapiPotong;

Rx<String>? sapiPotong1;

Rx<String>? weight;

Rx<String>? rpCounter;

Rx<String>? id;

 }
