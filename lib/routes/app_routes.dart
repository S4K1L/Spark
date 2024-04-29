import 'package:spark1/presentation/Home_Screen/Home_Screen.dart';
import 'package:spark1/presentation/Home_container_screen/home_container_screen.dart';
import 'package:spark1/presentation/Welcome_screen/Welcome_screen.dart';
import 'package:spark1/presentation/signup_screen/controller/Signup_controller.dart';

import '../core/app_export.dart';
import '../presentation/Home_container_screen/binding/Home_container_binding.dart';
import '../presentation/Login_screen/Login_screen.dart';
import '../presentation/Login_screen/binding/Login_binding.dart';
import '../presentation/Splash_screen/binding/splash_binding.dart';
import '../presentation/Splash_screen/splash_screen.dart';
import '../presentation/Welcome_screen/binding/Welcome_binding.dart';
import '../presentation/app_navigation_screen/app_navigation_screen.dart';
import '../presentation/app_navigation_screen/binding/app_navigation_binding.dart';
import '../presentation/signup_screen/binding/signup_screen_binding.dart';
import '../presentation/signup_screen/signup_screen.dart'; // ignore_for_file: must_be_immutable

class AppRoutes {

  static const String splashScreen = '/splashScreen';
  
  static const String welcomeScreen = '/welcomeScreen';

  static const String loginscreen = '/Login_screen';

  static const String signupScreen = '/signupScreen';

  static const String homeScreenContainer = '/homeScreenContainer';

  static const String homeScreen =
      '/homeScreen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static List<GetPage> pages = [
    GetPage(
      name: splashScreen,
      page: () => SplashScreen(),
      bindings: [splashBinding()],
    ),
    GetPage(
      name: welcomeScreen,
      page: () => WelcomeScreen(),
      bindings: [WelcomeBinding()],
    ),
    GetPage(
      name: loginscreen,
      page: () => LoginScreen(),
      bindings: [Login_Binding()],
    ),
    GetPage(
      name: signupScreen,
      page: () => SignupScreen(),
      bindings: [SignupScreenBinding()],
    ),
    GetPage(
      name: homeScreenContainer,
      page: () => HomeContainerScreen(),
      bindings: [HomeContainerBinding()],
    ),
    GetPage(
      name: appNavigationScreen,
      page: () => AppNavigationScreen(),
      bindings: [AppNavigationBinding()],
    ),
    GetPage(
      name: initialRoute,
      page: () => SplashScreen(),
      bindings: [splashBinding()],
    )
  ];
}
