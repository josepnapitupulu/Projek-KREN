import '../../../core/app_export.dart';
import 'profile_item_model.dart';/// This class defines the variables used in the [profile_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class ProfileModel {Rx<List<ProfileItemModel>> profileItemList = Rx([ProfileItemModel(siapJual:ImageConstant.imgRectangle57.obs,siapJual1: "Siap Jual".obs,sapiPotong: "Sapi Potong".obs,weight: "400 - 700 Kg".obs,rpCounter: "Rp 18.000.000".obs,jantanDewasa: "Jantan Dewasa".obs),ProfileItemModel(siapJual:ImageConstant.imgRectangle47.obs,siapJual1: "Terjual".obs,sapiPotong: "Sapi Potong".obs,weight: "400 - 700 Kg".obs,rpCounter: "Rp 18.000.000".obs,jantanDewasa: "Jantan Dewasa".obs)]);

 }
