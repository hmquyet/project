import 'package:flutter_application_1/UI/screens/thongsohoatdong.dart';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/UI/screens/home.dart';
import 'package:flutter_application_1/UI/screens/login_screen.dart';
import 'package:flutter_application_1/UI/screens/settingscreen.dart';
import 'package:flutter_application_1/UI/screens/Xembaocao.dart';
import 'package:flutter_application_1/UI/screens/splashpage.dart';




class RoutesManager {
  static const String Loginpage = '/';
  static const String Homepage = '/Homepage';
  static const String ThongSoHoatDongPage = '/thongsohoatdongpage';
  static const String Splashpage = '/splashpage';
  static const String StatementPage = '/statementpage';

  static Route<dynamic> genarateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Loginpage:
        return MaterialPageRoute(
          builder: (context) => LoginScreen(),
        );
      case Homepage:
        return MaterialPageRoute(
          builder: (context) => HomeScreen(),
        );
      case ThongSoHoatDongPage:
        return MaterialPageRoute(
          builder: (context) => ThongSoHoatDong(),
        );
    
      case StatementPage:
        return MaterialPageRoute(
          builder: (context) => XemBaoCao(),
        );

        case Splashpage:
        return MaterialPageRoute(
          builder: (context) => SplashPage(),
        );

      default:
        throw FormatException('');
    }
  }
}
