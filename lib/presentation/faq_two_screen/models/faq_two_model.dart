import '../../../core/app_export.dart';
import 'faqtwo_item_model.dart';/// This class defines the variables used in the [faq_two_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class FaqTwoModel {Rx<List<FaqtwoItemModel>> faqtwoItemList = Rx([FaqtwoItemModel(apaItuTaTernak: "Apa itu TaTernak?".obs,text: ">".obs),FaqtwoItemModel(apaItuTaTernak: "Apa peran TaTernak?".obs,text: ">".obs),FaqtwoItemModel(apaItuTaTernak: "Kapan pembeli harus menggunakan Taternak?".obs,text: ">".obs)]);

 }
