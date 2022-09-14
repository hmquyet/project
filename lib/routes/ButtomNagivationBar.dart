
import 'package:flutter/material.dart';

import 'package:flutter_application_1/screens/home/home.dart';
import 'package:flutter_application_1/screens/thongsohoatdong/thongsohoatdong.dart';
import 'package:flutter_application_1/screens/xembaocao/Xembaocao.dart';
import 'package:flutter_application_1/screens/setting/settingscreen.dart';

class ButtomNagivationBar extends StatefulWidget {
   int selectedIndex;
  ButtomNagivationBar(this.selectedIndex);
  

  @override
  State<ButtomNagivationBar> createState() => _ButtomNagivationBarState();
}

class _ButtomNagivationBarState extends State<ButtomNagivationBar> {
  

  final Screens = [
    HomeScreen(),
    ThongSoHoatDong(),
    SettingScreen(),
    XemBaoCao()
  ];
  @override
  Widget build(BuildContext context) {
    

    return Scaffold(
      body: Screens[widget.selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        
        currentIndex: widget.selectedIndex,
        onTap: (index) =>setState(() 
          => widget.selectedIndex = index,
        ),
        
        iconSize: 30,
        
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home_outlined,
              color: Color.fromARGB(255, 255, 255, 255),
              
            ),
            label: '',
            backgroundColor: Color.fromARGB(255, 60, 130, 96),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.public_outlined,
              color: Color.fromARGB(255, 255, 255, 255),
              
            ),
            label: '',
            backgroundColor: Color.fromARGB(255, 60, 130, 96),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.settings_outlined,
              color: Color.fromARGB(255, 255, 255, 255),
              
            ),
            label: '',
            backgroundColor: Color.fromARGB(255, 60, 130, 96),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.description_outlined,
              color: Color.fromARGB(255, 255, 255, 255),
              
            ),
            label: '',
            backgroundColor: Color.fromARGB(255, 60, 130, 96),
          ),
        ],
      ),
    );
  }
}
