import '../../../core/app_export.dart';
import 'chatone_item_model.dart';/// This class defines the variables used in the [chat_one_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class ChatOneModel {Rx<List<ChatoneItemModel>> chatoneItemList = Rx([ChatoneItemModel(peternakSapiKita:ImageConstant.imgImage2025x25.obs,peternakSapiKita1: "Peternak Sapi Kita".obs,text: "**".obs),ChatoneItemModel(peternakSapiKita1: "Ternak Bahagia".obs,text: "**".obs),ChatoneItemModel(peternakSapiKita1: "Ternak Green".obs,text: "**".obs),ChatoneItemModel(peternakSapiKita1: "Kerbau Gagah".obs,text: "**".obs)]);

 }
