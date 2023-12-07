import '../../../core/app_export.dart';
import 'komunitasone_item_model.dart';/// This class defines the variables used in the [komunitas_one_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class KomunitasOneModel {Rx<List<KomunitasoneItemModel>> komunitasoneItemList = Rx([KomunitasoneItemModel(sapi: "Sapi".obs,text: ">".obs),KomunitasoneItemModel(sapi: "Babi".obs,text: ">".obs),KomunitasoneItemModel(sapi: "Kerbau".obs,text: ">".obs),KomunitasoneItemModel(sapi: "Lembu".obs,text: ">".obs),KomunitasoneItemModel(sapi: "Kambing".obs,text: ">".obs),KomunitasoneItemModel(sapi: "Domba".obs,text: ">".obs)]);

 }
