import 'package:flutter/material.dart';
import 'package:flutter_application_1/UI/routes/routes.dart';

class MainDraw extends StatelessWidget {
  const MainDraw({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Color.fromARGB(255, 251, 251, 251),
      child: ListView(
        children: <Widget>[
          UserAccountsDrawerHeader(
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 0, 41, 77),
            ),
            accountName: Text('Nguyễn Văn ABC'),
            accountEmail: Text('nva@gmail.com'),
            currentAccountPicture: CircleAvatar(
              child: ClipOval(),
            ),
          ),
          ListTile(
              leading: Icon(Icons.person),
              title: Text(
                'Thông tin cá nhân',
                style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w400,
                    color: Color.fromARGB(255, 79, 77, 77)),
              ),
              onTap: () =>
                  Navigator.of(context).pushNamed(RoutesManager.Splashpage)),
          ListTile(
              leading: Icon(Icons.exit_to_app),
              title: Text(
                'Đăng xuất',
                style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w400,
                    color: Color.fromARGB(255, 79, 77, 77)),
              ),
              onTap: () =>
                  Navigator.of(context).pushNamed(RoutesManager.Loginpage)),
        ],
      ),
    );
  }
}
