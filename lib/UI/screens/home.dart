import 'package:flutter/material.dart';
import 'package:flutter_application_1/UI/screens/main_draw.dart';
import 'package:flutter_application_1/UI/routes/ButtomNagivationBar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage('assets/images/home11.png'), fit: BoxFit.cover)),
      child: Scaffold(
        backgroundColor: Color.fromARGB(0, 255, 255, 255),
        appBar: AppBar(
          /*  elevation: 0,
          leading: IconButton(
            icon: Icon(Icons.menu),
            onPressed: () {},
          ), */
          backgroundColor: Color.fromARGB(255, 6, 40, 61),
          title: Center(child: Text('Kiểm tra chất lượng sản phẩm')),
        ),
        
        drawer: MainDraw(),
        body: Padding(
          padding: const EdgeInsets.only(top: 290),
          child: Center(
            child: Container(
            width: 350,
            height: 180,
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
                        Color.fromARGB(255, 6, 40, 61),
                      ),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ))),
                  onPressed: () {
                    Navigator.push(
                          context,
                          new MaterialPageRoute(
                              builder: ((context) => ButtomNagivationBar(1))));
                        
                  }
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
                    Navigator.push(
                        context,
                        new MaterialPageRoute(
                            builder: ((context) => ButtomNagivationBar(2))));
                  },
                  style: ButtonStyle(
                      shadowColor: MaterialStateProperty.all<Color>(
                          Color.fromARGB(255, 32, 30, 30)),
                      fixedSize: MaterialStateProperty.all<Size>(Size(300, 50)),
                      backgroundColor: MaterialStateProperty.all<Color>(
                        Color.fromARGB(255, 6, 40, 61),
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
