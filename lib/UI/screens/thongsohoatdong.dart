import 'package:flutter/material.dart';
import 'package:flutter_application_1/UI/routes/routes.dart';
import 'package:flutter_application_1/model/network_request.dart';
import 'package:flutter_application_1/model/report.dart';

import 'package:flutter_application_1/UI/routes/ButtomNagivationBar.dart';


class ThongSoHoatDong extends StatefulWidget {
  @override
  State<ThongSoHoatDong> createState() => _ThongSoHoatDongState();
}

class _ThongSoHoatDongState extends State<ThongSoHoatDong> {
 
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Scaffold(
      appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 0, 41, 77),
          title: Center(child: Text('Thông số hoạt động')),
          actions: [
            IconButton(
               onPressed: () {

                 Navigator.push(
                      context,
                      new MaterialPageRoute(
                          builder: ((context) => ButtomNagivationBar(1))));
               }, 
               icon: Icon(Icons.refresh_outlined)),
          ]),
      body: FutureBuilder(
          future: fetchReportNew(),
          builder: (BuildContext context, AsyncSnapshot snapshot) {
            if (snapshot.hasData) {
              return ListView.builder(
                  itemCount: 1,
                  itemBuilder: (BuildContext context, int index) {
                    return Column(children: [
                      ContainerText('trạng thái hoạt động',
                          '${snapshot.data[index].state}'),
                      SizedBox(height: 4),
                      ContainerText(
                          'Lực nén (N)', '${snapshot.data[index].pressure}'),
                      SizedBox(height: 4),
                      ContainerText('số lần nén còn lại (lần)',
                          '${snapshot.data[index].pushCount}'),
                      SizedBox(height: 4),
                      ContainerText(
                          'thời gian giữ (s)', '${snapshot.data[index].time}'),
                    ]);
                  });
            } else {
              return Center(
                  child: CircularProgressIndicator(
                color: Color.fromARGB(255, 0, 41, 77),
              ));
            }
          }),
    ));
  }
}

class ContainerText extends StatelessWidget {
  String textName;
  String value;

  ContainerText(this.textName, this.value);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 5),
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 226, 228, 229),
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Color.fromARGB(200, 4, 23, 62).withOpacity(0.5),
            spreadRadius: 5,
            blurRadius: 1,
            offset: Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      width: double.infinity,
      height: 148.3,
      child: Column(
        children: <Widget>[
          ListTile(
            title: Text(
              textName,
              style: TextStyle(fontSize: 23, color: Colors.black),
            ),
          ),
          Container(
              margin: EdgeInsets.only(top: 5),
              width: 150,
              height: 60,
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 255, 255, 255),
                  borderRadius: BorderRadius.circular(10)),
              child: Center(
                child: Text(value,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color.fromARGB(255, 30, 29, 29),
                      fontSize: 47,
                    )),
              )),
        ],
      ),
    );
  }
}
