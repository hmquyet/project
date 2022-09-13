import 'package:flutter_application_1/screens/thongsohoatdong/thongsohoatdong.dart';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/home/home.dart';
import 'package:flutter_application_1/screens/login/login_screen.dart';
import 'package:flutter_application_1/screens/setting/settingscreen.dart';
import 'package:flutter_application_1/screens/xembaocao/Xembaocao.dart';

class RoutesManager {
  static const String Loginpage = '/';
  static const String Homepage = '/Homepage';
  static const String ThongSoHoatDongPage = '/thongsohoatdongpage';
  static const String SettingPage = '/settingpage';
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
      case SettingPage:
        return MaterialPageRoute(
          builder: (context) => SettingScreen(),
        );
      case StatementPage:
        return MaterialPageRoute(
          builder: (context) => XemBaoCao(),
        );

      default:
        throw FormatException('');
    }
  }
}
