import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'localization/en_us/en_us_translations.dart';

import 'core/app_export.dart';
import 'firebase_options.dart';
import 'rooms.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(
    GetMaterialApp(  // Use GetMaterialApp instead of MaterialApp
      title: 'Taternak Chat',
      debugShowCheckedModeBanner: false,
      theme: theme,
      translations: AppLocalization(),  // Provide your localization instance
      locale: Get.deviceLocale,
      fallbackLocale: Locale('en', 'US'),
      initialBinding: InitialBindings(),
      initialRoute: AppRoutes.initialRoute,
      // getPages: AppRoutes.pages,
      home: const RoomsPage(),
    )
  );
//   await Firebase.initializeApp(
//     options: DefaultFirebaseOptions.currentPlatform,
//   );
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) => MaterialApp(
//         title: 'Taternak Chat',
//         debugShowCheckedModeBanner: false,
//         // theme: ThemeData(
//         //   primarySwatch: Colors.blue,
//         //   visualDensity: VisualDensity.adaptivePlatformDensity,
//         // ),
//         theme: theme,
//         translations: AppLocalization(),
//         locale: Get.deviceLocale,
//         fallbackLocale: Locale('en', 'US'),
//         initialBinding: InitialBindings(),
//         initialRoute: AppRoutes.initialRoute,
//         getPages: AppRoutes.pages,
//         home: const RoomsPage(),
//       );
}
