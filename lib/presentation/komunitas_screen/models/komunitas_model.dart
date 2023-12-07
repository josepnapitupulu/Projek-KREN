import '../../../core/app_export.dart';
import 'komunitas_item_model.dart';/// This class defines the variables used in the [komunitas_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class KomunitasModel {Rx<List<KomunitasItemModel>> komunitasItemList = Rx([KomunitasItemModel(sapi: "Sapi".obs,text: ">".obs),KomunitasItemModel(sapi: "Babi".obs,text: ">".obs),KomunitasItemModel(sapi: "Kerbau".obs,text: ">".obs),KomunitasItemModel(sapi: "Lembu".obs,text: ">".obs),KomunitasItemModel(sapi: "Kambing".obs,text: ">".obs),KomunitasItemModel(sapi: "Domba".obs,text: ">".obs)]);

 }
