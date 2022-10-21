import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:to_do_app/db/db_helper.dart';
import 'package:to_do_app/services/theme_services.dart';
import 'package:to_do_app/ui/theme.dart';
import 'package:page_transition/page_transition.dart';
import 'ui/pages/home_page.dart';

void main() async {
  runApp(const MyApp());
  WidgetsFlutterBinding.ensureInitialized();
  await DBHelper.initDb();
  await GetStorage.init();
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        theme: Themes.light,
        darkTheme: Themes.dark,
        themeMode: ThemeServices().theme,
        title: 'ToDo App',
        debugShowCheckedModeBanner: false,
        home: AnimatedSplashScreen(
          backgroundColor: black,
          centered: true,
          splashIconSize: 800,
          splash: Image.asset(
            'images/splash.jpg',
            fit: BoxFit.cover,
          ),
          nextScreen: const HomePage(),
          splashTransition: SplashTransition.fadeTransition,
          pageTransitionType: PageTransitionType.bottomToTop,
        )
        //NotificationScreen(payload: 'title|description|3/12/2022 3:36',),
        );
  }
}
