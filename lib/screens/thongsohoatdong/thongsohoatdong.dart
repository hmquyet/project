import 'package:flutter/material.dart';
import 'package:flutter_application_1/routes/routes.dart';

class ThongSoHoatDong extends StatefulWidget {
  
  const ThongSoHoatDong({Key? key}) : super(key: key);

  @override
  State<ThongSoHoatDong> createState() => _ThongSoHoatDongState();
}

class _ThongSoHoatDongState extends State<ThongSoHoatDong> {
 
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          
          backgroundColor: Color.fromARGB(255, 53, 94, 74),
          title: Center(child: Text('Thông số hoạt động')),
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
                        color: Color.fromARGB(255, 53, 94, 74),
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
                        color: Color.fromARGB(255, 53, 94, 74),
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
                        color: Color.fromARGB(255, 53, 94, 74),
                        borderRadius: BorderRadius.circular(10)),
                    child: Center(
                      child: Text('120',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 50,
                          )),
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
                        color: Color.fromARGB(255, 53, 94, 74),
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
