import '../../../core/app_export.dart';/// This class is used in the [chatone_item_widget] screen.
class ChatoneItemModel {ChatoneItemModel({this.peternakSapiKita, this.peternakSapiKita1, this.text, this.id, }) { peternakSapiKita = peternakSapiKita  ?? Rx(ImageConstant.imgImage2025x25);peternakSapiKita1 = peternakSapiKita1  ?? Rx("Peternak Sapi Kita");text = text  ?? Rx("**");id = id  ?? Rx(""); }

Rx<String>? peternakSapiKita;

Rx<String>? peternakSapiKita1;

Rx<String>? text;

Rx<String>? id;

 }
