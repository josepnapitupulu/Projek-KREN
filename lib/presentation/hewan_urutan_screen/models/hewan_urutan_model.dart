import '../../../core/app_export.dart';
import 'hewanurutan_item_model.dart';/// This class defines the variables used in the [hewan_urutan_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class HewanUrutanModel {Rx<List<HewanurutanItemModel>> hewanurutanItemList = Rx([HewanurutanItemModel(harga: "Tanggal Keluar Terdahulu ".obs),HewanurutanItemModel(harga: "Tag Hewan A-Z".obs),HewanurutanItemModel(harga: "Tag Hewan Z-A".obs)]);

 }
