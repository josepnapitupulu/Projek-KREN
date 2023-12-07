import '../../../core/app_export.dart';/// This class is used in the [chat_item_widget] screen.
class ChatItemModel {ChatItemModel({this.price, this.text, this.id, }) { price = price  ?? Rx("Ternak XXX");text = text  ?? Rx("**");id = id  ?? Rx(""); }

Rx<String>? price;

Rx<String>? text;

Rx<String>? id;

 }
