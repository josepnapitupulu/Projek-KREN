import '../profile_two_page/widgets/profiletwo_item_widget.dart';
import 'controller/profile_two_controller.dart';
import 'models/profile_two_model.dart';
import 'models/profiletwo_item_model.dart';
import 'package:flutter/material.dart';
import 'package:example/core/app_export.dart';

class ProfileTwoPage extends StatelessWidget {
  ProfileTwoPage({Key? key})
      : super(
          key: key,
        );

  ProfileTwoController controller =
      Get.put(ProfileTwoController(ProfileTwoModel().obs));

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          decoration: AppDecoration.fillOnErrorContainer,
          child: Container(
            decoration: AppDecoration.fillBlueGray,
            child: Obx(
              () => GridView.builder(
                shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  mainAxisExtent: 139.v,
                  crossAxisCount: 3,
                  mainAxisSpacing: 0.h,
                  crossAxisSpacing: 0.h,
                ),
                physics: NeverScrollableScrollPhysics(),
                itemCount: controller
                    .profileTwoModelObj.value.profiletwoItemList.value.length,
                itemBuilder: (context, index) {
                  ProfiletwoItemModel model = controller
                      .profileTwoModelObj.value.profiletwoItemList.value[index];
                  return ProfiletwoItemWidget(
                    model,
                  );
                },
              ),
            ),
          ),
        ),
      ),
    );
  }
}
