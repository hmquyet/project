import 'package:flutter/material.dart';
import 'package:flutter_application_1/routes/routes.dart';
import 'package:flutter_application_1/screens/xembaocao/Detail_Statement.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({Key? key}) : super(key: key);

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  int selectedIndex = 2;
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 53, 94, 74),
        title: Center(child: Text('Cài đặt thông số')),
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
                Navigator.of(context).pushNamed(RoutesManager.ThongSoHoatDongPage);
              },
            ),
            IconButton(
              icon: Icon(
                Icons.settings_outlined,
                color: Colors.white,
                size: (selectedIndex == 2) ? 30 : 20,
              ),
              onPressed: () {
                
              },
            ),
            IconButton(
              icon: Icon(
                Icons.description_outlined,
                color: Colors.white,
                size: (selectedIndex == 3) ? 30 : 20,
              ),
              onPressed: () {
                Navigator.of(context).pushNamed(RoutesManager.StatementPage);
              },
            ),
          ],
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(
            top: 100.0,
          ),
          child: Column(
            children: <Widget>[
              Container(
                  width: 350,
                  height: 80,
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 53, 94, 74),
                      borderRadius: BorderRadius.circular(20)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        child: Text(
                          ' Số lần nhấn (lần)',
                          textAlign: TextAlign.start,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 25,
                          ),
                        ),
                      ),
                      Container(
                        width: 100,
                        height: 60,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(15)),
                        child: TextField(
                          keyboardType: TextInputType.number,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 25,
                          ),
                          decoration: InputDecoration(
                              fillColor: Color.fromARGB(255, 255, 255, 255),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15))),
                        ),
                      )
                    ],
                  )),
              SizedBox(
                height: 20,
              ),
              Container(
                  width: 350,
                  height: 80,
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 53, 94, 74),
                      borderRadius: BorderRadius.circular(20)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        child: Text(
                          ' Lực nén (N)         ',
                          textAlign: TextAlign.start,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 25,
                          ),
                        ),
                      ),
                      Container(
                        width: 100,
                        height: 60,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(15)),
                        child: TextField(
                          keyboardType: TextInputType.number,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 25,
                          ),
                          decoration: InputDecoration(
                              fillColor: Color.fromARGB(255, 255, 255, 255),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15))),
                        ),
                      )
                    ],
                  )),
              SizedBox(
                height: 20,
              ),
              Container(
                  width: 350,
                  height: 80,
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 53, 94, 74),
                      borderRadius: BorderRadius.circular(20)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        child: Text(
                          ' Thời gian giữ (s)',
                          textAlign: TextAlign.start,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 25,
                          ),
                        ),
                      ),
                      Container(
                        width: 100,
                        height: 60,
                         decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(15)),
                        child: TextField(
                          keyboardType: TextInputType.number,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 25,
                          ),
                          
                          decoration: InputDecoration(


                              border: OutlineInputBorder(

                                  borderRadius: BorderRadius.circular(15))
                            ), 
                        ),
                      )
                    ],
                  )),
              SizedBox(
                height: 30,
              ),
              ElevatedButton(
                child: Text(
                  'START',
                  style: TextStyle(
                      fontSize: 17, color: Color.fromARGB(255, 241, 241, 241)),
                ),
                onPressed: () {},
                style: ButtonStyle(
                    fixedSize: MaterialStateProperty.all<Size>(Size(100, 60)),
                    backgroundColor: MaterialStateProperty.all<Color>(
                      Color.fromARGB(255, 8, 167, 90),
                    ),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ))),
              )
            ],
          ),
        ),
      ),
    ));
  }
}
