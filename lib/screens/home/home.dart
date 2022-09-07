import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/home/main_draw.dart';
import 'package:flutter_application_1/routes/routes.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
         /*  elevation: 0,
          leading: IconButton(
            icon: Icon(Icons.menu),
            onPressed: () {},
          ), */
          backgroundColor: Color.fromARGB(255, 35, 78, 45),
          title: Center(child: Text('Kiểm tra chất lượng sản phẩm')),
        ),
        drawer: MainDraw(),
        body: Padding(
          padding: const EdgeInsets.only(top : 250),
          child: Center(
              child: Container(
            width: 350,
            height: 250,
            decoration: BoxDecoration(
                color: Color.fromARGB(255, 35, 78, 45),
                borderRadius: BorderRadius.circular(20)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                ElevatedButton(
                  child: Text(
                    'Thông số hoạt động',
                    style: TextStyle(
                        fontSize: 17, color: Color.fromARGB(255, 0, 0, 0)),
                  ),
                  style: ButtonStyle(
                      shadowColor: MaterialStateProperty.all<Color>(
                          Color.fromARGB(255, 135, 61, 61)),
                      fixedSize: MaterialStateProperty.all<Size>(Size(300, 50)),
                      backgroundColor: MaterialStateProperty.all<Color>(
                          Color.fromARGB(255, 255, 255, 255)),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ))),
                  onPressed: () {
                    Navigator.of(context).pushNamed(RoutesManager.ThongSoHoatDongPage);
                  },
                ),
                SizedBox(
                  height: 10,
                ),
                ElevatedButton(
                  child: Text(
                    'Cài đặt thông số',
                    style: TextStyle(
                        fontSize: 17, color: Color.fromARGB(255, 0, 0, 0)),
                  ),
                  onPressed: () {
                                        Navigator.of(context)
                        .pushNamed(RoutesManager.SettingPage);

                  },
                  style: ButtonStyle(
                      fixedSize: MaterialStateProperty.all<Size>(Size(300, 50)),
                      backgroundColor: MaterialStateProperty.all<Color>(
                          Color.fromARGB(255, 255, 255, 255)),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ))),
                ),
                SizedBox(
                  height: 10,
                ),
                ElevatedButton(
                  child: Text(
                    'Xem báo cáo',
                    style: TextStyle(
                        fontSize: 17, color: Color.fromARGB(255, 0, 0, 0)),
                  ),
                  onPressed: () {
                                        Navigator.of(context)
                        .pushNamed(RoutesManager.StatementPage);

                  },
                  style: ButtonStyle(
                      fixedSize: MaterialStateProperty.all<Size>(Size(300, 50)),
                      backgroundColor: MaterialStateProperty.all<Color>(
                          Color.fromARGB(255, 255, 255, 255)),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ))),
                )
              ],
            ),
          )),
        ),
      ),
    );
  }
}
