import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get/get.dart';
import 'package:vansen/routes/routes.dart';

void main() {
  runApp(
    const MyApp(),
  );
}

String initRoutes() {
  return Routes.welcome;
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      builder: EasyLoading.init(),
      themeMode: ThemeMode.light,
      getPages: Routes.getPages,
      initialRoute: initRoutes(),
      debugShowCheckedModeBanner: false,
      onInit: () {
        FlutterNativeSplash.remove();
      },
    );
  }
}
