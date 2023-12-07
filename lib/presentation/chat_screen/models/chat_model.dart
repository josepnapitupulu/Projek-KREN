import '../../../core/app_export.dart';import 'chat_item_model.dart';/// This class defines the variables used in the [chat_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class ChatModel {Rx<List<ChatItemModel>> chatItemList = Rx([ChatItemModel(price: "Ternak XXX".obs,text: "**".obs),ChatItemModel(price: "Sarah Naibaho".obs,text: "**".obs),ChatItemModel(price: "Boas".obs,text: "**".obs)]);

 }
