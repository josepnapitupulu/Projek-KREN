import '../../../core/app_export.dart';/// This class is used in the [belumbayar_item_widget] screen.
class BelumbayarItemModel {BelumbayarItemModel({this.babi, this.weight, this.rpKg, this.total, this.rpCounter, this.id, }) { babi = babi  ?? Rx("Babi");weight = weight  ?? Rx("40 Kg");rpKg = rpKg  ?? Rx("Rp 40.000/Kg");total = total  ?? Rx("Total:");rpCounter = rpCounter  ?? Rx("Rp 1.600.000");id = id  ?? Rx(""); }

Rx<String>? babi;

Rx<String>? weight;

Rx<String>? rpKg;

Rx<String>? total;

Rx<String>? rpCounter;

Rx<String>? id;

 }
