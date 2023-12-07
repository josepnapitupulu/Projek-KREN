import 'arrowsupperarrow_item_model.dart';
import '../../../core/app_export.dart';
import 'carihewan_item_model.dart';/// This class defines the variables used in the [cari_hewan_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class CariHewanModel {Rx<List<ArrowsupperarrowItemModel>> arrowsupperarrowItemList = Rx(List.generate(4,(index) =>ArrowsupperarrowItemModel()));

Rx<List<CarihewanItemModel>> carihewanItemList = Rx([CarihewanItemModel(b: "B01".obs,b1: "B01".obs,babi: "Babi ".obs,babi1: "Babi ".obs,betina: "Betina".obs,betina1: "Betina".obs,siapJual: "Siap Jual".obs,siapJual1: "Siap Jual".obs,weight: "70.09Kg ".obs,weight1: "70.09Kg ".obs,sehat: "Sehat".obs,sehat1: "Sehat".obs)]);

 }
