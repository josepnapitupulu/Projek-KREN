import '../../../core/app_export.dart';

/// This class is used in the [berandaone_item_widget] screen.
class BerandaoneItemModel {
  BerandaoneItemModel({
    this.rectangle,
    this.id,
  }) {
    rectangle = rectangle ?? Rx(ImageConstant.imgRectangle47);
    id = id ?? Rx("");
  }

  Rx<String>? rectangle;

  Rx<String>? id;
}
