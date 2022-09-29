import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:flutter_application_1/UI/screens/chitiet_baocao.dart';
import 'package:flutter_application_1/model/network_request.dart';
import 'package:flutter_application_1/model/report.dart';

class XemBaoCao extends StatefulWidget {
  @override
  State<XemBaoCao> createState() => _XemBaoCaoState();
}

class _XemBaoCaoState extends State<XemBaoCao> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 0, 41, 77),
          title: Center(child: Text('Xem báo cáo')),
        ),
        body: Container(
          child: FutureBuilder(
            future: fetchReport(),
            builder: (BuildContext context, AsyncSnapshot snapshot) {
              if (snapshot.hasData) {
                return ListView.builder(
                    itemCount: snapshot.data.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Padding(
                        padding: const EdgeInsets.all(9.0),
                        child: Container(
                          width: double.infinity,
                          height: 60,
                          decoration: BoxDecoration(
                              color: Color.fromARGB(255, 227, 234, 231),
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [
                                BoxShadow(
                                    blurRadius: 5.5, offset: Offset(-5, 5))
                              ]),
                          child: ListTile(
                            title: Text(
                              'báo cáo ${snapshot.data[index].id} ',
                              style: TextStyle(
                                color: Color.fromARGB(255, 18, 18, 23),
                                fontSize: 20,
                              ),
                            ),
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          DetailPage(snapshot.data[index])));
                            },
                          ),
                        ),
                      );
                    });
              } else {
                return Center(
                    child: CircularProgressIndicator(
                  color: Color.fromARGB(255, 0, 41, 77),
                ));
              }
            },
          ),
        ));
  }
}
