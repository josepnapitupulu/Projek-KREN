import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_chat_types/flutter_chat_types.dart' as types;
import 'package:flutter_firebase_chat_core/flutter_firebase_chat_core.dart';

import 'presentation/beranda_screen/controller/beranda_controller.dart';
import 'package:example/core/app_export.dart';
import 'package:example/presentation/cari_page/cari_page.dart';
import 'package:example/widgets/app_bar/appbar_leading_circleimage.dart';
import 'package:example/widgets/app_bar/appbar_subtitle_five.dart';
import 'package:example/widgets/app_bar/custom_app_bar.dart';
import 'package:example/widgets/custom_bottom_bar.dart';

import 'chat.dart';
import 'login.dart';
import 'users.dart';
import 'util.dart';

class RoomsPage extends StatefulWidget {
  const RoomsPage({super.key});

  @override
  State<RoomsPage> createState() => _RoomsPageState();
}

class _RoomsPageState extends State<RoomsPage> {
  bool _error = false;
  bool _initialized = false;
  User? _user;

  @override
  void initState() {
    initializeFlutterFire();
    super.initState();
  }

  void initializeFlutterFire() async {
    try {
      FirebaseAuth.instance.authStateChanges().listen((User? user) {
        setState(() {
          _user = user;
        });
      });
      setState(() {
        _initialized = true;
      });
    } catch (e) {
      setState(() {
        _error = true;
      });
    }
  }

  void logout() async {
    await FirebaseAuth.instance.signOut();
  }

  Widget _buildAvatar(types.Room room) {
    var color = Colors.transparent;

    if (room.type == types.RoomType.direct) {
      try {
        final otherUser = room.users.firstWhere(
          (u) => u.id != _user!.uid,
        );

        color = getUserAvatarNameColor(otherUser);
      } catch (e) {
        // Do nothing if other user is not found.
      }
    }

    final hasImage = room.imageUrl != null;
    final name = room.name ?? '';

    return Container(
      margin: const EdgeInsets.only(right: 16),
      child: CircleAvatar(
        backgroundColor: hasImage ? Colors.transparent : color,
        backgroundImage: hasImage ? NetworkImage(room.imageUrl!) : null,
        radius: 20,
        child: !hasImage
            ? Text(
                name.isEmpty ? '' : name[0].toUpperCase(),
                style: const TextStyle(color: Colors.white),
              )
            : null,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    if (_error) {
      return Container();
    }

    if (!_initialized) {
      return Container();
    }

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF338309),
        actions: [
          _user != null
              ? IconButton(
                  icon: const Icon(Icons.message),
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        fullscreenDialog: true,
                        builder: (context) => const UsersPage(),
                      ),
                    );
                  },
                )
              : Container(),
          _user != null
              ? IconButton(
                  icon: const Icon(Icons.logout),
                  onPressed: logout,
                )
              : Container(),
        ],
        leading: AppbarLeadingCircleimage(
          imagePath: ImageConstant.imgEllipse2,
          margin: EdgeInsets.only(left: 10.h, top: 0.v),
          imageSize: Size(24.0, 24.0),
        ),
        title: AppbarSubtitleFive(
          text: "lbl_taternak".tr,
          margin: EdgeInsets.only(left: 14.h),
        ),
        // SystemUiOverlayStyle and title are optional properties
        // You can include them if needed
        systemOverlayStyle: SystemUiOverlayStyle.light,
        // title: const Text('Rooms'),
      ),
      body: _user == null
          ? Container(
              alignment: Alignment.center,
              margin: const EdgeInsets.only(
                bottom: 200,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'logo.jpeg', // Replace with your image asset path
                    height: 150,
                    width: 150,
                    fit: BoxFit.contain,
                  ),
                  SizedBox(height: 20),
                  const Text(
                      'Sebelum mengakses aplikasi kami silahkan login terlebih dahulu'),
                  SizedBox(height: 20),
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          fullscreenDialog: true,
                          builder: (context) => const LoginPage(),
                        ),
                      );
                    },
                    style: TextButton.styleFrom(
                      padding: EdgeInsets.symmetric(
                          horizontal:
                              16.0), // Sesuaikan padding sesuai kebutuhan
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(
                            8.0), // Sesuaikan radius border sesuai kebutuhan
                      ),
                    ),
                    child: const Text('Login'),
                  ),
                ],
              ),
            )
          : SafeArea(
              child: Scaffold(
                  body: SizedBox(
                      width: double.maxFinite,
                      child: Column(children: [
                        // _buildAtas(),
                        SizedBox(height: 13.v),
                        Expanded(
                            child: SingleChildScrollView(
                                child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                              GestureDetector(
                                  onTap: () {
                                    onTapNamaTernak();
                                  },
                                  // konten
                                  child: Padding(
                                      padding: EdgeInsets.only(left: 17.h),
                                      child: Row(children: [
                                        Container(
                                            height: 25.adaptSize,
                                            width: 25.adaptSize,
                                            decoration: AppDecoration.fillGreenA
                                                .copyWith(
                                                    borderRadius:
                                                        BorderRadiusStyle
                                                            .roundedBorder12),
                                            child: CustomImageView(
                                                imagePath: ImageConstant
                                                    .imgImage2025x25,
                                                height: 25.adaptSize,
                                                width: 25.adaptSize,
                                                alignment: Alignment.center)),
                                        Padding(
                                          padding: EdgeInsets.only(
                                              left: 12.h,
                                              top: 5.v,
                                              bottom: 2.v),
                                          child: Text(
                                            "msg_ternak_sapi_kita".tr,
                                            style: theme.textTheme?.bodySmall
                                                    ?.copyWith(
                                                  fontWeight: FontWeight.bold,
                                                ) ??
                                                TextStyle(
                                                    fontWeight:
                                                        FontWeight.bold),
                                          ),
                                        )
                                      ]))),
                              SizedBox(height: 11.v),
                              CustomImageView(
                                  imagePath: ImageConstant.imgRectangle47,
                                  height: 329.v,
                                  width: 414.h),
                              SizedBox(height: 12.v),
                              Align(
                                  alignment: Alignment.center,
                                  child: Container(
                                      width: 380.h,
                                      margin: EdgeInsets.only(
                                          left: 16.h, right: 17.h),
                                      // child: Text("msg_ternak_sapi_kita2".tr,
                                      //     maxLines: 4,
                                      //     overflow: TextOverflow.ellipsis,
                                      //     textAlign: TextAlign.justify,
                                      //     style: CustomTextStyles.bodySmall_2
                                      //         .copyWith(height: 1.42))
                                      child: RichText(
                                          text: TextSpan(children: [
                                            TextSpan(
                                                text: "Ternak Sapi Kita ".tr,
                                                style: CustomTextStyles
                                                    .bodySmallPassionOne),
                                            TextSpan(
                                                text:
                                                    "Dalam pemandangan yang sederhana, sapi menjadi perwakilan damai yang tak tergoyahkan. Dengan kehadiran yang kokoh dan tatapan lembutnya, hewan yang sederhana ini mengajarkan tentang ketenangan, kebijaksanaan, dan keindahan yang terkandung dalam kehidupan yang penuh kesederhanaan"
                                                        .tr,
                                                style: CustomTextStyles
                                                    .bodySmall_1)
                                          ]),
                                          textAlign: TextAlign.justify))),
                              Padding(
                                  padding: EdgeInsets.only(left: 17.h),
                                  child: Row(children: [
                                    Container(
                                        height: 25.adaptSize,
                                        width: 25.adaptSize,
                                        decoration: AppDecoration.fillGreenA
                                            .copyWith(
                                                borderRadius: BorderRadiusStyle
                                                    .roundedBorder12),
                                        child: CustomImageView(
                                            imagePath:
                                                ImageConstant.imgImage201,
                                            height: 25.adaptSize,
                                            width: 25.adaptSize,
                                            alignment: Alignment.center)),
                                    Padding(
                                        padding: EdgeInsets.only(
                                            left: 4.h, top: 7.v, bottom: 6.v),
                                        child: Text("msg_tambahkan_komentar".tr,
                                            style: CustomTextStyles
                                                .bodySmallPoiretOne))
                                  ])),
                              SizedBox(height: 7.v),
                              Padding(
                                  padding: EdgeInsets.only(left: 17.h),
                                  child: Text("lbl_01_juni_2023".tr,
                                      style:
                                          CustomTextStyles.bodySmallPompiere)),
                              SizedBox(height: 22.v),
                              Padding(
                                  padding: EdgeInsets.only(left: 17.h),
                                  child: Row(children: [
                                    CustomImageView(
                                        imagePath:
                                            ImageConstant.imgEllipse225x25,
                                        height: 25.adaptSize,
                                        width: 25.adaptSize,
                                        radius: BorderRadius.circular(12.h)),
                                    Padding(
                                        padding: EdgeInsets.only(
                                            left: 12.h, top: 5.v, bottom: 2.v),
                                        child: Text(
                                          "lbl_ternak_bahagia".tr,
                                          style: theme.textTheme?.bodySmall
                                                  ?.copyWith(
                                                fontWeight: FontWeight.bold,
                                              ) ??
                                              TextStyle(
                                                  fontWeight: FontWeight.bold),
                                        ))
                                  ])),
                              SizedBox(height: 11.v),
                              CustomImageView(
                                  imagePath:
                                      ImageConstant.imgRectangle47329x414,
                                  height: 329.v,
                                  width: 414.h),
                              SizedBox(height: 11.v),
                              Align(
                                  alignment: Alignment.center,
                                  child: Container(
                                      width: 380.h,
                                      margin: EdgeInsets.symmetric(
                                          horizontal: 17.h),
                                      child: RichText(
                                          text: TextSpan(children: [
                                            TextSpan(
                                                text: "lbl_ternak_xxx".tr,
                                                style: CustomTextStyles
                                                    .bodySmallPassionOne),
                                            TextSpan(
                                                text:
                                                    "msg_lorem_ipsum_dolor".tr,
                                                style: CustomTextStyles
                                                    .bodySmall_1)
                                          ]),
                                          textAlign: TextAlign.justify))),
                              SizedBox(height: 3.v),
                              Padding(
                                  padding: EdgeInsets.only(left: 17.h),
                                  child: Row(children: [
                                    Container(
                                        height: 25.adaptSize,
                                        width: 25.adaptSize,
                                        decoration: BoxDecoration(
                                            color: appTheme.greenA700,
                                            borderRadius:
                                                BorderRadius.circular(12.h))),
                                    Padding(
                                        padding: EdgeInsets.only(
                                            left: 4.h, top: 5.v, bottom: 5.v),
                                        child: Text("msg_tambahkan_komentar".tr,
                                            textAlign: TextAlign.justify,
                                            style: CustomTextStyles
                                                .bodySmallPoiretOne))
                                  ])),
                              SizedBox(height: 6.v),
                              Padding(
                                  padding: EdgeInsets.only(left: 17.h),
                                  child: Text("lbl_01_juni_2023".tr,
                                      textAlign: TextAlign.justify,
                                      style:
                                          CustomTextStyles.bodySmallPompiere))
                            ])))
                      ])),
                  bottomNavigationBar: _buildBottomBar()),
            ),
      // StreamBuilder<List<types.Room>>(
      //     stream: FirebaseChatCore.instance.rooms(),
      //     initialData: const [],
      //     builder: (context, snapshot) {
      //       if (!snapshot.hasData || snapshot.data!.isEmpty) {
      //         return Container(
      //           alignment: Alignment.center,
      //           margin: const EdgeInsets.only(
      //             bottom: 200,
      //           ),
      //           child: const Text('No rooms'),
      //         );
      //       }

      //       return ListView.builder(
      //         itemCount: snapshot.data!.length,
      //         itemBuilder: (context, index) {
      //           final room = snapshot.data![index];

      //           return GestureDetector(
      //             onTap: () {
      //               Navigator.of(context).push(
      //                 MaterialPageRoute(
      //                   builder: (context) => ChatPage(
      //                     room: room,
      //                   ),
      //                 ),
      //               );
      //             },
      //             child: Container(
      //               padding: const EdgeInsets.symmetric(
      //                 horizontal: 16,
      //                 vertical: 8,
      //               ),
      //               child: Row(
      //                 children: [
      //                   _buildAvatar(room),
      //                   Text(room.name ?? ''),
      //                 ],
      //               ),
      //             ),
      //           );
      //         },
      //       );
      //     },
      //   ),
    );
  }
  // Widget _buildAtas() {
  //   return Container(
  //       decoration: AppDecoration.fillPrimary,
  //       padding: EdgeInsets.symmetric(vertical: 8.v),
  //       child: Column(children: [
  //         SizedBox(height: 8.v),
  //         CustomAppBar(
  //             height: 35.v,
  //             leadingWidth: 52.h,
  //             leading: AppbarLeadingCircleimage(
  //               imagePath: ImageConstant.imgEllipse2,
  //               margin: EdgeInsets.only(left: 10.h, top: 0.v),
  //               imageSize: Size(24.0, 24.0),
  //             ),
  //             title: AppbarSubtitleFive(
  //                 text: "lbl_taternak".tr, margin: EdgeInsets.only(left: 14.h)),
  //             actions: [
  //               Container(
  //                   height: 32.adaptSize,
  //                   width: 32.adaptSize,
  //                   margin:
  //                       EdgeInsets.only(left: 27.h, right: 27.h, bottom: 3.v),
  //                   child: Stack(alignment: Alignment.topRight, children: [
  //                     CustomImageView(
  //                         imagePath: ImageConstant.imgChatChat,
  //                         height: 27.v,
  //                         width: 28.h,
  //                         alignment: Alignment.bottomLeft,
  //                         margin: EdgeInsets.only(top: 5.v, right: 4.h),
  //                         onTap: () {
  //                           onTapImgChatChat();
  //                         }
  //                       ),
  //                     Align(
  //                         alignment: Alignment.topRight,
  //                         child: Container(
  //                           width: 18.h,
  //                           margin: EdgeInsets.only(left: 14.h, bottom: 16.v),
  //                           decoration: AppDecoration.fillRed.copyWith(
  //                               borderRadius: BorderRadiusStyle.circleBorder9
  //                           ),
  //                           // child: Text("lbl_2".tr,
  //                           //     style: CustomTextStyles
  //                           //         .bodySmallOnErrorContainer)
  //                           child: Align(
  //                             alignment: Alignment.center,
  //                             child: Text(
  //                               "lbl_2".tr,
  //                               style:
  //                                   CustomTextStyles.bodySmallOnErrorContainer,
  //                             ),
  //                           ),
  //                         ))
  //                   ]))
  //             ])
  //       ]));
  // }

  /// Section Widget
  Widget _buildBottomBar() {
    return CustomBottomBar(onChanged: (BottomBarEnum type) {
      Get.offAndToNamed(getCurrentRoute(type));
      // getCurrentRoute(type);
      // String routeName = getCurrentRoute(type);
      // if (routeName != null) {
      //   Get.toNamed(routeName, id: 1);
      // } else {
      //   print("Error: Route name is null for type $type");
      // }
    });
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Beranda:
        return AppRoutes.berandaScreen;
      case BottomBarEnum.Cari:
        return AppRoutes.cariContainerScreen;
      case BottomBarEnum.Edukasi:
        return AppRoutes.edukasiScreen;
      case BottomBarEnum.Akun:
        return AppRoutes.profileOneScreen;
      default:
        return RoomsPage().runtimeType.toString();
    }
  }

  ///Handling page based on route
  // Widget getCurrentPage(String currentRoute) {
  //   switch (currentRoute) {
  //     case AppRoutes.berandaScreen:
  //       return RoomsPages();
  //     default:
  //       return DefaultWidget();
  //   }
  // }

  /// Navigates to the chatOneScreen when the action is triggered.
  onTapImgChatChat() {
    Get.toNamed(
      AppRoutes.chatOneScreen,
    );
  }

  /// Navigates to the profileTwoTabContainerScreen when the action is triggered.
  onTapNamaTernak() {
    Get.toNamed(
      AppRoutes.profileTwoTabContainerScreen,
    );
  }
}
