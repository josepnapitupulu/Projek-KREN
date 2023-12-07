import '../../../core/app_export.dart';
import 'belumbayar_item_model.dart';/// This class defines the variables used in the [belum_bayar_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class BelumBayarModel {Rx<List<BelumbayarItemModel>> belumbayarItemList = Rx([BelumbayarItemModel(babi: "Babi".obs,weight: "40 Kg".obs,rpKg: "Rp 40.000/Kg".obs,total: "Total:".obs,rpCounter: "Rp 1.600.000".obs),BelumbayarItemModel(babi: "Babi".obs,weight: "45 Kg".obs,rpKg: "Rp 41.000/Kg".obs,total: "Total:".obs,rpCounter: "Rp 1.845.000".obs),BelumbayarItemModel(babi: "Babi".obs,weight: "42 Kg".obs,rpKg: "Rp 40.500/Kg".obs,total: "Total:".obs,rpCounter: "Rp 1.701.000".obs)]);

 }
