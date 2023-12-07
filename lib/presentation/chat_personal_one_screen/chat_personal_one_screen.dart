import 'controller/chat_personal_one_controller.dart';
import 'package:flutter/material.dart';
import 'package:example/core/app_export.dart';
import 'package:example/widgets/app_bar/appbar_leading_image.dart';
import 'package:example/widgets/app_bar/appbar_subtitle_two.dart';
import 'package:example/widgets/app_bar/custom_app_bar.dart';
import 'package:example/widgets/custom_text_form_field.dart';class ChatPersonalOneScreen extends GetWidget<ChatPersonalOneController> {const ChatPersonalOneScreen({Key? key}) : super(key: key);

@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(resizeToAvoidBottomInset: false, body: SizedBox(width: double.maxFinite, child: Column(children: [_buildAtas(), SizedBox(height: 14.v), Expanded(child: SingleChildScrollView(child: _buildChatPersonalOne()))])), bottomNavigationBar: _buildFrame())); } 
/// Section Widget
Widget _buildAtas() { return Container(decoration: AppDecoration.fillPrimary, child: Column(children: [SizedBox(height: 16.v), CustomAppBar(height: 27.v, leadingWidth: 49.h, leading: AppbarLeadingImage(imagePath: ImageConstant.imgRewindOnerrorcontainer, margin: EdgeInsets.only(left: 17.h, bottom: 3.v), onTap: () {onTapRewind();}), title: AppbarSubtitleTwo(text: "msg_yohanna_sihotang".tr, margin: EdgeInsets.only(left: 11.h)))])); } 
/// Section Widget
Widget _buildChatPersonalOne() { return Padding(padding: EdgeInsets.only(left: 16.h, right: 16.h, bottom: 5.v), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [CustomImageView(imagePath: ImageConstant.imgFrame117, height: 75.v, width: 269.h), CustomImageView(imagePath: ImageConstant.imgFrame117, height: 75.v, width: 269.h, alignment: Alignment.centerRight), SizedBox(height: 7.v), CustomImageView(imagePath: ImageConstant.imgFrame117, height: 75.v, width: 269.h)])); } 
/// Section Widget
Widget _buildFrame() { return Container(margin: EdgeInsets.only(left: 17.h, right: 17.h, bottom: 35.v), decoration: AppDecoration.fillPrimary1, child: Container(decoration: AppDecoration.fillPrimary1, child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [Expanded(child: CustomTextFormField(controller: controller.ketikpesanController, hintText: "lbl_ketik_pesan".tr, textInputAction: TextInputAction.done, contentPadding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 18.v), borderDecoration: TextFormFieldStyleHelper.fillOnErrorContainer, filled: true, fillColor: theme.colorScheme.onErrorContainer.withOpacity(1))), CustomImageView(imagePath: ImageConstant.imgSendPlaneFill, height: 24.adaptSize, width: 24.adaptSize, margin: EdgeInsets.only(left: 13.h, top: 15.v, bottom: 15.v))]))); } 
/// Navigates to the chatScreen when the action is triggered.
onTapRewind() { Get.toNamed(AppRoutes.chatScreen, ); } 
 }
