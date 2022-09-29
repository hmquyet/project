import 'package:flutter/material.dart';

import 'package:flutter_application_1/UI/screens/home.dart';
import 'package:flutter_application_1/UI/screens/splashpage.dart';
import 'package:flutter_application_1/UI/screens/thongsohoatdong.dart';
import 'package:flutter_application_1/UI/screens/Xembaocao.dart';
import 'package:flutter_application_1/UI/screens/settingscreen.dart';

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
    XemBaoCao(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Screens[widget.selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color.fromARGB(255, 3, 12, 31),//Color.fromARGB(255, 6, 40, 61)
        selectedItemColor: Color.fromARGB(255, 255, 255, 255),
        unselectedItemColor: Color.fromARGB(255, 255, 255, 255),
        currentIndex: widget.selectedIndex,
        onTap: (index) => setState(
          () => widget.selectedIndex = index,
        ),
        iconSize: 30,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home_outlined,
              
            ),
            label: 'Trang chủ',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.public_outlined,
              
            ),
            label: 'Thông số',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.description_outlined,
            
            ),
            label: 'Xem báo cáo',
          ),
        ],
      ),
    );
  }
}
