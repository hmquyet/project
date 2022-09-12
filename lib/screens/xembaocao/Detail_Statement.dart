import 'package:flutter/material.dart';
import 'package:flutter_application_1/routes/routes.dart';
class DetailPage extends StatefulWidget {
 
  final int index;
  DetailPage(this.index);

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  int selectedIndex = 3;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        
        backgroundColor: Color.fromARGB(255, 53, 94, 74),
        title: Center(child: Text('báo cáo ${widget.index}')),
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
                size: (selectedIndex == 0) ? 30 : 20,
              ),
              onPressed: () {
                Navigator.of(context).pushNamed(RoutesManager.Homepage);
              },
            ),
            IconButton(
              icon: Icon(
                Icons.public_outlined,
                color: Colors.white,
                size: (selectedIndex == 1) ? 30 : 20,
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
                size: (selectedIndex == 2) ? 30 : 20,
              ),
              onPressed: () {
                Navigator.of(context).pushNamed(RoutesManager.StatementPage);
              },
            ),
            IconButton(
              icon: Icon(
                Icons.description_outlined,
                color: Colors.white,
                size: (selectedIndex == 3) ? 30 : 20,
              ),
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}