import '../../../core/app_export.dart';
import 'keranjangprodukpeternakan_item_model.dart';/// This class defines the variables used in the [keranjang_produk_peternakan_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class KeranjangProdukPeternakanModel {Rx<List<KeranjangprodukpeternakanItemModel>> keranjangprodukpeternakanItemList = Rx([KeranjangprodukpeternakanItemModel(sapiPotong:ImageConstant.imgRectangle57.obs,sapiPotong1: "Sapi Potong".obs,weight: "400 - 700 Kg".obs,rpCounter: "Rp 18.000.000".obs),KeranjangprodukpeternakanItemModel(sapiPotong:ImageConstant.imgRectangle66.obs,sapiPotong1: "Sapi Potong".obs,weight: "400 - 700 Kg".obs,rpCounter: "Rp 20.000.000".obs)]);

 }
