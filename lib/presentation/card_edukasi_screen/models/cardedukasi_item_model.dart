import '../../../core/app_export.dart';/// This class is used in the [cardedukasi_item_widget] screen.
class CardedukasiItemModel {CardedukasiItemModel({this.strategiPemberian, this.id, }) { strategiPemberian = strategiPemberian  ?? Rx("Strategi Pemberian Pakan Optimal untuk Ternak Sehat");id = id  ?? Rx(""); }

Rx<String>? strategiPemberian;

Rx<String>? id;

 }
