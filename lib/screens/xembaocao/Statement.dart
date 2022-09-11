import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/xembaocao/Detail_Statement.dart';
import 'package:flutter_application_1/routes/routes.dart';

class XemBaoCao extends StatelessWidget {
  const XemBaoCao({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 53, 94, 74),
        title: Center(child: Text('Xem báo cáo')),
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
              onPressed: () {},
            ),
          ],
        ),
      ),
      body: _buidListView(),
    ));
  }
}

ListView _buidListView() {
  return ListView.builder(
      itemCount: 10,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.all(9.0),
          child: Container(
            width: double.infinity,
            height: 100,
            decoration: BoxDecoration(
                color: Color.fromARGB(255, 53, 94, 74),
                borderRadius: BorderRadius.circular(10),
                boxShadow: [BoxShadow(
                  
                  blurRadius: 5.5,
                  offset: Offset(-5,5)
                  )]),
            child: ListTile(
              title: Text(
                'Báo cáo thứ $index',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => DetailPage(index)));
              },
            ),
          ),
        );
      });
}
