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
        backgroundColor: Color.fromARGB(255, 0, 41, 77),
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white,
        currentIndex: widget.selectedIndex,
        onTap: (index) => setState(
          () => widget.selectedIndex = index,
        ),
        iconSize: 30,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home_outlined,
              color: Color.fromARGB(255, 255, 255, 255),
            ),
            label: 'Trang chủ',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.public_outlined,
              color: Color.fromARGB(255, 255, 255, 255),
            ),
            label: 'Thông số',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.description_outlined,
              color: Color.fromARGB(255, 255, 255, 255),
            ),
            label: 'Xem báo cáo',
          ),
        ],
      ),
    );
  }
}
