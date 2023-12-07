import '../../../core/app_export.dart';/// This class is used in the [komunitastwo_item_widget] screen.
class KomunitastwoItemModel {KomunitastwoItemModel({this.sapisehat, this.percakapan, this.text, this.id, }) { sapisehat = sapisehat  ?? Rx("Sapisehat");percakapan = percakapan  ?? Rx("(15) Percakapan Grup");text = text  ?? Rx(">");id = id  ?? Rx(""); }

Rx<String>? sapisehat;

Rx<String>? percakapan;

Rx<String>? text;

Rx<String>? id;

 }
