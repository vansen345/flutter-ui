import 'package:get/route_manager.dart';
import 'package:vansen/login/login.dart';
import 'package:vansen/sign_up/create_account.dart';
import 'package:vansen/sign_up/sign_up_country.dart';
import 'package:vansen/welcome/welcome.dart';

class Routes {
  static const String welcome = '/welcome';
  static const String createAccount = '/createAccount';
  static const String signUpCountry = '/signUpCountry';
  static const String login = '/login';

  static List<GetPage<dynamic>> getPages = [
    GetPage(name: welcome, page: () => const WelcomeScreen()),
    GetPage(name: createAccount, page: () => const CreateAccountScreen()),
    GetPage(name: signUpCountry, page: () => const SignUpCountry()),
    GetPage(name: login, page: () => const LoginScreen())
  ];
}
