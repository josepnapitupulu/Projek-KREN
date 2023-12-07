import '../chat_one_screen/widgets/chatone_item_widget.dart';
import 'controller/chat_one_controller.dart';
import 'models/chatone_item_model.dart';
import 'package:flutter/material.dart';
import 'package:example/core/app_export.dart';
import 'package:example/widgets/app_bar/appbar_leading_image.dart';
import 'package:example/widgets/app_bar/appbar_subtitle_two.dart';
import 'package:example/widgets/app_bar/custom_app_bar.dart';
import 'package:example/widgets/custom_search_view.dart';class ChatOneScreen extends GetWidget<ChatOneController> {const ChatOneScreen({Key? key}) : super(key: key);

@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(resizeToAvoidBottomInset: false, body: SizedBox(width: double.maxFinite, child: Column(children: [_buildAtas(), Expanded(child: SizedBox(width: double.maxFinite, child: Container(padding: EdgeInsets.symmetric(vertical: 18.v), child: Column(children: [Padding(padding: EdgeInsets.symmetric(horizontal: 21.h), child: CustomSearchView(controller: controller.searchController, hintText: "lbl_cari".tr, hintStyle: CustomTextStyles.bodySmallBlack900)), SizedBox(height: 14.v), _buildChatOne()]))))])))); } 
/// Section Widget
Widget _buildAtas() { return Container(padding: EdgeInsets.symmetric(vertical: 10.v), decoration: AppDecoration.fillPrimary, child: Column(children: [SizedBox(height: 7.v), CustomAppBar(leadingWidth: 49.h, leading: AppbarLeadingImage(imagePath: ImageConstant.imgRewindOnerrorcontainer, margin: EdgeInsets.only(left: 17.h, bottom: 1.v), onTap: () {onTapRewind();}), title: AppbarSubtitleTwo(text: "lbl_chat".tr, margin: EdgeInsets.only(left: 14.h)))])); } 
/// Section Widget
Widget _buildChatOne() { return Expanded(child: Obx(() => ListView.separated(physics: BouncingScrollPhysics(), shrinkWrap: true, separatorBuilder: (context, index) {return SizedBox(height: 1.v);}, itemCount: controller.chatOneModelObj.value.chatoneItemList.value.length, itemBuilder: (context, index) {ChatoneItemModel model = controller.chatOneModelObj.value.chatoneItemList.value[index]; return ChatoneItemWidget(model, onTapPersonal: () {onTapPersonal();});}))); } 
/// Navigates to the chatPersonalScreen when the action is triggered.
onTapPersonal() { Get.toNamed(AppRoutes.chatPersonalScreen); } 
/// Navigates to the berandaScreen when the action is triggered.
onTapRewind() { Get.toNamed(AppRoutes.berandaScreen, ); } 
 }
