import 'package:flutter/material.dart';
import 'package:flutter_application_1/UI/routes/routes.dart';
import 'package:flutter_application_1/model/network_request.dart';
import 'package:flutter_application_1/model/report.dart';

import 'package:intl/intl.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_application_1/bloc/bloc_api.dart';
import 'package:flutter_application_1/bloc/state_api.dart';
import 'package:flutter_application_1/bloc/event_api.dart';

import 'package:flutter_application_1/UI/routes/ButtomNagivationBar.dart';

class ThongSoHoatDong extends StatefulWidget {
  @override
  State<ThongSoHoatDong> createState() => _ThongSoHoatDongState();
}

class _ThongSoHoatDongState extends State<ThongSoHoatDong> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider<ReportBloc>(
      create: (context) =>
          ReportBloc(ReportResipontory())..add(LoadReportEvent(DateTime.now())),
      child: Container(
          child: Scaffold(
              appBar: AppBar(
                  backgroundColor: Color.fromARGB(255, 6, 40, 61),
                  title: Center(child: Text('Thông số hoạt động')),
                  actions: [
                    IconButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              new MaterialPageRoute(
                                  builder: ((context) =>
                                      ButtomNagivationBar(1))));
                        },
                        icon: Icon(Icons.refresh_outlined)),
                  ]),
              body: BlocBuilder<ReportBloc, ReportState>(
                  builder: (context, state) {
                if (state is ReportLoading) {
                  return Center(
                      child: CircularProgressIndicator(
                    color: Color.fromARGB(255, 6, 40, 61),
                  ));
                } else if (state is ReportSuccessful) {
                  return Column(children: [
                    ContainerText('Trạng thái hoạt động',
                        _trangThai(state.report[1].state), 300),
                    SizedBox(height: 4),
                    ContainerText(
                        'Lực nén (N)', '${state.report[1].pressure}', 100),
                    SizedBox(height: 4),
                    ContainerText('Số lần nén còn lại (lần)',
                        '${state.report[1].pushCount}', 100),
                    SizedBox(height: 4),
                    ContainerText(
                        'Thời gian giữ (s)', '${state.report[1].time}', 100),
                  ]);
                } else {
                  return Container(
                    child: Text('Error'),
                  );
                }
              }))),
    );
  }
}

String _trangThai(bool? state) {
  if (state == true) {
    return "Đang Hoạt Động";
  } else {
    return "Dừng hoạt động";
  }
}

class ContainerText extends StatelessWidget {
  String textName;
  String value;
  double width;
  ContainerText(this.textName, this.value, this.width);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        margin: EdgeInsets.only(top: 5),
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 226, 228, 229),
          borderRadius: BorderRadius.circular(10),
          
        ),
        width: double.infinity,
        height: 110,
        child: Column(
          children: <Widget>[
            ListTile(
              title: Text(
                textName,
                style: TextStyle(fontSize: 23, color: Colors.black),
              ),
            ),

            Center(
              child: Container(
                  
                  width: width,
                  height: 45,
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 255, 255, 255),
                      borderRadius: BorderRadius.circular(10)),
                  child: Center(
                    child: Text(value,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color.fromARGB(255, 30, 29, 29),
                          fontSize: 30,
                        )),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
