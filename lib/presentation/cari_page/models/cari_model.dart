import '../../../core/app_export.dart';
import 'cari_item_model.dart';

/// This class defines the variables used in the [cari_page],
/// and is typically used to hold data that is passed between different parts of the application.
class CariModel {
  Rx<List<CariItemModel>> cariItemList = Rx([
    CariItemModel(hewan: ImageConstant.imgFrame100.obs, hewan1: "Hewan ".obs),
    CariItemModel(hewan: ImageConstant.imgNavEdukasi.obs, hewan1: "Edukasi".obs),
    CariItemModel(hewan: ImageConstant.imgShoppingCart.obs, hewan1: "Keranjang".obs),
    CariItemModel(hewan: ImageConstant.imgChatAddChat.obs, hewan1: "Komunitas".obs)
  ]);
}
