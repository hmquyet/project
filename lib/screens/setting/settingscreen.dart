import 'package:flutter/material.dart';
import 'package:flutter_application_1/routes/routes.dart';
import 'package:flutter_application_1/screens/xembaocao/Detail_Statement.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () {},
        ),
        backgroundColor: Color.fromARGB(255, 35, 78, 45),
        title: Center(child: Text('Cài đặt thông số')),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Color.fromARGB(255, 35, 78, 45),
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
                      color: Color.fromARGB(255, 35, 78, 45),
                      borderRadius: BorderRadius.circular(20)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                    Container(
                      child:Text(
                        ' Số lần nhấn (lần)',
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                        ),
                      ),),
                      
                    Container(
                        width: 100,
                        height: 60,
                        
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15)
                        ),
                        child: TextField(
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
                height: 10,
              ),
                  Container(
                  width: 350,
                  height: 80,
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 35, 78, 45),
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
                height: 10,
              ),
                  Container(
                  width: 350,
                  height: 80,
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 35, 78, 45),
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
                height: 30,
              ),
                   ElevatedButton(
                child: Text(
                  'START',
                  style: TextStyle(
                      fontSize: 17, color: Color.fromARGB(255, 241, 241, 241)),
                ),
                onPressed: () {
                 
                },
                style: ButtonStyle(
                    fixedSize: MaterialStateProperty.all<Size>(Size(100, 60)),
                    backgroundColor: MaterialStateProperty.all<Color>(
                        Color.fromARGB(255, 17, 186, 144)),
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
