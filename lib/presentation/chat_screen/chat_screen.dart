import '../chat_screen/widgets/chat_item_widget.dart';
import 'controller/chat_controller.dart';
import 'models/chat_item_model.dart';
import 'package:flutter/material.dart';
import 'package:example/core/app_export.dart';
import 'package:example/widgets/app_bar/appbar_leading_image.dart';
import 'package:example/widgets/app_bar/appbar_subtitle_two.dart';
import 'package:example/widgets/app_bar/custom_app_bar.dart';
import 'package:example/widgets/custom_text_form_field.dart';class ChatScreen extends GetWidget<ChatController> {const ChatScreen({Key? key}) : super(key: key);

@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(resizeToAvoidBottomInset: false, appBar: _buildAppBar(), body: SizedBox(width: mediaQueryData.size.width, child: SingleChildScrollView(padding: EdgeInsets.only(top: 3.v), child: _buildChat())))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar() { return CustomAppBar(height: 53.v, leadingWidth: 49.h, leading: AppbarLeadingImage(imagePath: ImageConstant.imgRewindOnerrorcontainer, margin: EdgeInsets.only(left: 17.h, bottom: 29.v), onTap: () {onTapRewind();}), title: AppbarSubtitleTwo(text: "lbl_chat".tr, margin: EdgeInsets.only(left: 11.h, top: 1.v, bottom: 27.v)), styleType: Style.bgFill); } 
/// Section Widget
Widget _buildChat() { return Padding(padding: EdgeInsets.only(bottom: 5.v), child: Column(children: [SizedBox(height: 101.v, width: double.maxFinite, child: Stack(alignment: Alignment.bottomCenter, children: [CustomTextFormField(width: 372.h, controller: controller.cariController, hintText: "lbl_cari".tr, hintStyle: CustomTextStyles.bodySmallBlack900, textInputAction: TextInputAction.done, alignment: Alignment.topCenter, prefix: Container(margin: EdgeInsets.fromLTRB(11.h, 5.v, 8.h, 6.v), child: CustomImageView(imagePath: ImageConstant.imgSearchPrimarycontainer, height: 22.v, width: 21.h)), prefixConstraints: BoxConstraints(maxHeight: 33.v), borderDecoration: TextFormFieldStyleHelper.fillPrimary, filled: true, fillColor: theme.colorScheme.primary.withOpacity(0.5)), Align(alignment: Alignment.bottomCenter, child: GestureDetector(onTap: () {onTapPersonal();}, child: Container(decoration: AppDecoration.fillGray100, child: Column(mainAxisSize: MainAxisSize.min, children: [Divider(), SizedBox(height: 7.v), Padding(padding: EdgeInsets.only(left: 21.h, right: 27.h), child: Row(mainAxisAlignment: MainAxisAlignment.center, crossAxisAlignment: CrossAxisAlignment.end, children: [CustomImageView(imagePath: ImageConstant.img2b1, height: 42.v, width: 44.h), Padding(padding: EdgeInsets.only(left: 15.h, top: 13.v), child: Text("msg_yohanna_sihotang".tr, style: theme.textTheme.titleLarge)), Spacer(), Padding(padding: EdgeInsets.only(top: 13.v, bottom: 7.v), child: Text("lbl3".tr, style: theme.textTheme.bodyMedium))])), SizedBox(height: 18.v)]))))])), Obx(() => ListView.separated(physics: NeverScrollableScrollPhysics(), shrinkWrap: true, separatorBuilder: (context, index) {return SizedBox(height: 14.v);}, itemCount: controller.chatModelObj.value.chatItemList.value.length, itemBuilder: (context, index) {ChatItemModel model = controller.chatModelObj.value.chatItemList.value[index]; return ChatItemWidget(model);}))])); } 
/// Navigates to the berandaOneScreen when the action is triggered.
onTapRewind() { Get.toNamed(AppRoutes.berandaOneScreen, ); } 
/// Navigates to the chatPersonalOneScreen when the action is triggered.
onTapPersonal() { Get.toNamed(AppRoutes.chatPersonalOneScreen, ); } 
 }
