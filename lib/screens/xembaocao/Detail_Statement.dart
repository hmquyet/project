import 'package:flutter/material.dart';
import 'package:flutter_application_1/routes/routes.dart';
class DetailPage extends StatelessWidget {
 
  final int index;
  DetailPage(this.index);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        
        backgroundColor: Color.fromARGB(255, 53, 94, 74),
        title: Center(child: Text('báo cáo $index')),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Color.fromARGB(255, 53, 94, 74),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
              icon: Icon(
                Icons.home_outlined,
                color: Colors.white,
                size: 30,
              ),
              onPressed: () {
                Navigator.of(context).pushNamed(RoutesManager.Homepage);
              },
            ),
            IconButton(
              icon: Icon(
                Icons.public_outlined,
                color: Colors.white,
                size: 30,
              ),
              onPressed: () {
                Navigator.of(context)
                    .pushNamed(RoutesManager.ThongSoHoatDongPage);
              },
            ),
            IconButton(
              icon: Icon(
                Icons.settings_outlined,
                color: Colors.white,
                size: 30,
              ),
              onPressed: () {
                Navigator.of(context).pushNamed(RoutesManager.SettingPage);
              },
            ),
            IconButton(
              icon: Icon(
                Icons.description_outlined,
                color: Colors.white,
                size: 30,
              ),
              onPressed: () {
                Navigator.of(context).pushNamed(RoutesManager.StatementPage);
              },
            ),
          ],
        ),
      ),
    );
  }
}