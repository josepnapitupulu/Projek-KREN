import '../../../core/app_export.dart';

/// This class is used in the [cari_item_widget] screen.
class CariItemModel {
  CariItemModel({
    this.hewan,
    this.hewan1,
    this.id,
  }) {
    hewan = hewan ?? Rx(ImageConstant.imgFrame100);
    hewan1 = hewan1 ?? Rx("Hewan ");
    id = id ?? Rx("");
  }

  Rx<String>? hewan;

  Rx<String>? hewan1;

  Rx<String>? id;
}
