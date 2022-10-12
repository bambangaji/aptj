import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get/get.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:satgas/component/color.dart';
import 'package:satgas/component/localNotification.dart';
import 'package:satgas/main_bindings.dart';
import 'package:satgas/pages/dashboard/view/dashboardPage.dart';
import 'package:satgas/pages/login/view/LoginPage.dart';

void main() async {
  // String fileName = '.env-develop';
  // await dotenv.load(fileName: fileName);
  // if (fileName == '.env-develop') {
  //   // logger.setLevel(
  //   //   Level.INFO,
  //   //   // Includes  caller info, but this is expensive.
  //   //   includeCallerInfo: true,
  //   // );
  // } else {
  //   // logger.setLevel(
  //   //   Level.WARNING,
  //   // );
  // }
  initializeDateFormatting();
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  // FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  await localNotificatonCustom().initializeNotification();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
  runApp(const MyApp());
}

class Splash extends StatelessWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool lightMode =
        MediaQuery.of(context).platformBrightness == Brightness.light;
    return Scaffold(
      backgroundColor: lightMode ? Warna.softMerahMuda2 : Warna.softMerahMuda2,
      body: Center(
          child: lightMode
              ? Padding(
                  padding: EdgeInsets.all(Get.height / 10),
                  child: Image.asset('lib/assets/bg/logo-bg.png'),
                )
              : Padding(
                  padding: EdgeInsets.all(Get.height / 10),
                  child: Image.asset('lib/assets/bg/logo-bg.png'),
                )),
    );
  }
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialBinding: MainBinding(),
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => LoginPage(),
        '/dashboard': (context) => DashboardPage(), //
      },
      title: 'Coscos',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
    );
  }
}
