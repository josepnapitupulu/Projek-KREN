import 'package:example/core/app_export.dart';
import 'package:example/presentation/profile_two_tab_container_screen/models/profile_two_tab_container_model.dart';
import 'package:flutter/material.dart';/// A controller class for the ProfileTwoTabContainerScreen.
///
/// This class manages the state of the ProfileTwoTabContainerScreen, including the
/// current profileTwoTabContainerModelObj
class ProfileTwoTabContainerController extends GetxController with  GetSingleTickerProviderStateMixin {Rx<ProfileTwoTabContainerModel> profileTwoTabContainerModelObj = ProfileTwoTabContainerModel().obs;

late TabController tabviewController = Get.put(TabController(vsync: this, length: 2));

 }
