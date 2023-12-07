import 'package:example/core/app_export.dart';
import 'package:example/presentation/faq_three_screen/models/faq_three_model.dart';

/// A controller class for the FaqThreeScreen.
///
/// This class manages the state of the FaqThreeScreen, including the
/// current faqThreeModelObj
class FaqThreeController extends GetxController {
  Rx<FaqThreeModel> faqThreeModelObj = FaqThreeModel().obs;
}
