import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/home/main_draw.dart';
import 'package:flutter_application_1/routes/routes.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      
      decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage('assets/images/home.png'))),
      child: Scaffold(
        backgroundColor: Color.fromARGB(0, 255, 255, 255),
        appBar: AppBar(
          /*  elevation: 0,
          leading: IconButton(
            icon: Icon(Icons.menu),
            onPressed: () {},
          ), */
          backgroundColor: Color.fromARGB(255, 53, 94, 74),
          title: Center(child: Text('Kiểm tra chất lượng sản phẩm')),
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
                onPressed: () {},
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
        drawer: MainDraw(),
        body: Padding(
          padding: const EdgeInsets.only(top: 220),
          child: Center(
              child: Container(
            width: 350,
            height: 250,
            decoration: BoxDecoration(
                color: Color.fromARGB(255, 255, 255, 255),
                borderRadius: BorderRadius.circular(30)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                ElevatedButton.icon(
                  icon: Icon(Icons.public_outlined),
                  label: Text(
                    'Thông số hoạt động',
                    style: TextStyle(
                        fontSize: 18,
                        color: Color.fromARGB(255, 255, 255, 255)),
                  ),
                  style: ButtonStyle(
                      shadowColor: MaterialStateProperty.all<Color>(
                          Color.fromARGB(255, 32, 30, 30)),
                      fixedSize: MaterialStateProperty.all<Size>(Size(300, 50)),
                      backgroundColor: MaterialStateProperty.all<Color>(
                        Color.fromARGB(255, 53, 94, 74),
                      ),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ))),
                  onPressed: () {
                    Navigator.of(context)
                        .pushNamed(RoutesManager.ThongSoHoatDongPage);
                  },
                ),
                SizedBox(
                  height: 12,
                ),
                ElevatedButton.icon(
                  icon: Icon(Icons.settings_outlined),
                  label: Text(
                    'Cài đặt thông số',
                    style: TextStyle(
                        fontSize: 18,
                        color: Color.fromARGB(255, 255, 255, 255)),
                  ),
                  onPressed: () {
                    Navigator.of(context).pushNamed(RoutesManager.SettingPage);
                  },
                  style: ButtonStyle(
                      shadowColor: MaterialStateProperty.all<Color>(
                          Color.fromARGB(255, 32, 30, 30)),
                      fixedSize: MaterialStateProperty.all<Size>(Size(300, 50)),
                      backgroundColor: MaterialStateProperty.all<Color>(
                        Color.fromARGB(255, 53, 94, 74),
                      ),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ))),
                ),
                SizedBox(
                  height: 12,
                ),
                ElevatedButton.icon(
                  icon: Icon(Icons.description_outlined),
                  label: Text(
                    'Xem báo cáo',
                    style: TextStyle(
                        fontSize: 18,
                        color: Color.fromARGB(255, 255, 255, 255)),
                  ),
                  onPressed: () {
                    Navigator.of(context)
                        .pushNamed(RoutesManager.StatementPage);
                  },
                  style: ButtonStyle(
                      shadowColor: MaterialStateProperty.all<Color>(
                          Color.fromARGB(255, 32, 30, 30)),
                      fixedSize: MaterialStateProperty.all<Size>(Size(300, 50)),
                      backgroundColor: MaterialStateProperty.all<Color>(
                        Color.fromARGB(255, 53, 94, 74),
                      ),
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
