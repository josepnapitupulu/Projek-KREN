import '../../../core/app_export.dart';/// This class is used in the [faqtwo_item_widget] screen.
class FaqtwoItemModel {FaqtwoItemModel({this.apaItuTaTernak, this.text, this.id, }) { apaItuTaTernak = apaItuTaTernak  ?? Rx("Apa itu TaTernak?");text = text  ?? Rx(">");id = id  ?? Rx(""); }

Rx<String>? apaItuTaTernak;

Rx<String>? text;

Rx<String>? id;

 }
