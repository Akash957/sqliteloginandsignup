import 'package:flutter/material.dart';
import '../HomePage/login_page.dart';
import '../HomePage/signup_page.dart';

class AppRoute {
  static Map<String, WidgetBuilder> routes = {
    '/signup': (context) => SignupPage(),
    '/login': (context) => LoginPage(),
  };

  static void navigateTo(BuildContext context, String routeName, {Object? arguments}) {
    Navigator.pushNamed(context, routeName, arguments: arguments);
  }


  static void replaceWith(BuildContext context, String routeName, {Object? arguments}) {
    Navigator.pushReplacementNamed(context, routeName, arguments: arguments);
  }

  static void goBack(BuildContext context) {
    if (Navigator.canPop(context)) {
      Navigator.pop(context);
    }
  }
}
