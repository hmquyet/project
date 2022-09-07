import 'package:flutter/material.dart';
import 'package:flutter_application_1/routes/routes.dart';

import 'package:grouped_list/grouped_list.dart';

class ThongSoHoatDong extends StatelessWidget {
  const ThongSoHoatDong({Key? key}) : super(key: key);

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
          title: Center(child: Text('Thông số hoạt động')),
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
        body: ListView(children: [
          Container(
              
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 200, 204, 206),
                  borderRadius: BorderRadius.circular(10)),
              width: double.infinity,
              height: 200,
              child: Column(
                children: <Widget>[
                  ListTile(
                    title: Text(
                      'Trạng thái hoạt động',
                      style: TextStyle(fontSize: 23, color: Colors.black),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 27),
                    width: 150,
                    height: 70,
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 35, 78, 45),
                        borderRadius: BorderRadius.circular(10)),
                    
                     child: Center(
                      
                      child: Text('ON',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 50,
                          )),
                    ),
                  )
                ],
              )),
          SizedBox(
            height: 2,
          ),
          Container(
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 200, 204, 206),
                  borderRadius: BorderRadius.circular(10)),

              width: double.infinity,
              height: 200,
              child: Column(
                children: <Widget>[
                  ListTile(
                    title: Text(
                      'Lực nén (N)',
                      style: TextStyle(fontSize: 23, color: Colors.black),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 27),
                    width: 150,
                    height: 70,
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 35, 78, 45),
                        borderRadius: BorderRadius.circular(10)),
                     child: Center(
                      
                      child: Text('120',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 50,
                          )),
                    ),
                  )
                ],
              )),
          SizedBox(
            height: 2,
          ),
          Container(
             decoration: BoxDecoration(
                  color: Color.fromARGB(255, 200, 204, 206),
                  borderRadius: BorderRadius.circular(10)),
              width: double.infinity,
              height: 200,
              child: Column(
                children: <Widget>[
                  ListTile(
                    title: Text(
                      'Số lần nén còn lại (lần)',
                      style: TextStyle(fontSize: 23, color: Colors.black),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 27),
                    width: 150,
                    height: 70,
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 35, 78, 45),
                        borderRadius: BorderRadius.circular(10)),
                    child: Center(
                      
                      child: Text( '120',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 50,)),
                      
                     
                      ),
                    ),
                  
                ],
              )),
          SizedBox(
            height: 2,
          ),
          Container(
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 200, 204, 206),
                  borderRadius: BorderRadius.circular(10)),
              width: double.infinity,
              height: 200,
              child: Column(
                children: <Widget>[
                  ListTile(
                    title: Text(
                      'Thời gian giữ (s)',
                      style: TextStyle(fontSize: 23, color: Colors.black),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 27),
                    width: 150,
                    height: 70,
                   decoration: BoxDecoration(
                        color: Color.fromARGB(255, 35, 78, 45),
                        borderRadius: BorderRadius.circular(10)),
                     child: Center(
                      
                      child: Text('120',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 50,
                          )),
                    ),
                  )
                ],
              )),
        ]),
      ),
    );
  }
}
