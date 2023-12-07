import '../../../core/app_export.dart';/// This class is used in the [hewanurutan_item_widget] screen.
class HewanurutanItemModel {HewanurutanItemModel({this.harga, this.id, }) { harga = harga  ?? Rx("Tanggal Keluar Terdahulu ");id = id  ?? Rx(""); }

Rx<String>? harga;

Rx<String>? id;

 }
