import '../../../core/app_export.dart';/// This class is used in the [komunitasone_item_widget] screen.
class KomunitasoneItemModel {KomunitasoneItemModel({this.sapi, this.text, this.id, }) { sapi = sapi  ?? Rx("Sapi");text = text  ?? Rx(">");id = id  ?? Rx(""); }

Rx<String>? sapi;

Rx<String>? text;

Rx<String>? id;

 }
