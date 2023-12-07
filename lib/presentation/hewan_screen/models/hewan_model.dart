import '../../../core/app_export.dart';
import 'hewan_item_model.dart';/// This class defines the variables used in the [hewan_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class HewanModel {Rx<List<HewanItemModel>> hewanItemList = Rx([HewanItemModel(b: "B01".obs,babi: "Babi ".obs,betina:ImageConstant.imgSignAndSymbol.obs,betina1: "Betina".obs,siapJual: "Siap Jual".obs,weight: "70.09Kg ".obs,sehat: "Sehat".obs),HewanItemModel(siapJual: "Pemeliharaan".obs,weight: "70.09Kg ".obs,sehat: "Sakit".obs)]);

 }
