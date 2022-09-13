import 'package:flutter/material.dart';
import 'package:flutter_application_1/routes/routes.dart';
import 'package:flutter_application_1/screens/login/login_screen.dart';
import 'package:flutter_application_1/screens/home/home.dart';
import 'package:flutter_application_1/screens/thongsohoatdong/thongsohoatdong.dart';
import 'package:flutter_application_1/screens/xembaocao/Xembaocao.dart';
import 'package:flutter_application_1/screens/setting/settingscreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
      // home: ThongSoHoatDong(),
       //home: XemBaoCao(),c
        //home: SettingScreen(),
        
      home:LoginScreen(),

        initialRoute: RoutesManager.Loginpage,
      onGenerateRoute: RoutesManager.genarateRoute, 
    );
  }
}
