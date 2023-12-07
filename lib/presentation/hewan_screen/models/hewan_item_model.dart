import '../../../core/app_export.dart';/// This class is used in the [hewan_item_widget] screen.
class HewanItemModel {HewanItemModel({this.b, this.babi, this.betina, this.betina1, this.siapJual, this.weight, this.sehat, this.id, }) { b = b  ?? Rx("B01");babi = babi  ?? Rx("Babi ");betina = betina  ?? Rx(ImageConstant.imgSignAndSymbol);betina1 = betina1  ?? Rx("Betina");siapJual = siapJual  ?? Rx("Siap Jual");weight = weight  ?? Rx("70.09Kg ");sehat = sehat  ?? Rx("Sehat");id = id  ?? Rx(""); }

Rx<String>? b;

Rx<String>? babi;

Rx<String>? betina;

Rx<String>? betina1;

Rx<String>? siapJual;

Rx<String>? weight;

Rx<String>? sehat;

Rx<String>? id;

 }
