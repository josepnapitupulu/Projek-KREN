import '../../../core/app_export.dart';
import 'cardedukasi_item_model.dart';/// This class defines the variables used in the [card_edukasi_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class CardEdukasiModel {Rx<List<CardedukasiItemModel>> cardedukasiItemList = Rx([CardedukasiItemModel(strategiPemberian: "Strategi Pemberian Pakan Optimal untuk Ternak Sehat".obs),CardedukasiItemModel(strategiPemberian: "Pentingnya Nutrisi yang Seimbang dalam Pertumbuhan Ternak".obs),CardedukasiItemModel(strategiPemberian: "Manfaat Suplementasi Gizi dalam Pemeliharaan Ternak".obs),CardedukasiItemModel(strategiPemberian: "Cara Mengukur Kebutuhan Gizi Ternak Sesuai dengan Jenisnya".obs)]);

 }
