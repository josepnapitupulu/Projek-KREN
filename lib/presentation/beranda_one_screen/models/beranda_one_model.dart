import '../../../core/app_export.dart';
import 'berandaone_item_model.dart';

/// This class defines the variables used in the [beranda_one_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class BerandaOneModel {
  Rx<List<BerandaoneItemModel>> berandaoneItemList = Rx([
    BerandaoneItemModel(rectangle: ImageConstant.imgRectangle47.obs),
    BerandaoneItemModel(rectangle: ImageConstant.imgRectangle55.obs),
    BerandaoneItemModel(rectangle: ImageConstant.imgRectangle56.obs),
    BerandaoneItemModel(rectangle: ImageConstant.imgRectangle54.obs),
    BerandaoneItemModel(rectangle: ImageConstant.imgRectangle55136x138.obs),
    BerandaoneItemModel(rectangle: ImageConstant.imgRectangle56136x138.obs)
  ]);
}
