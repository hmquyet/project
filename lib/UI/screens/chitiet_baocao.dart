import 'package:flutter/material.dart';
import 'package:flutter_application_1/model/report.dart';

class DetailPage extends StatelessWidget {
  final Report reports;
  DetailPage(this.reports);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 0, 41, 77),
        title: Center(child: Text('Báo cáo  ' + reports.id.toString())),
      ),
      body: Container(
          child: Padding(
        padding: EdgeInsets.all(8.0),
        child: Column(children: [
       
          TextReport('Trạng thái hoạt động : ' , reports.state.toString(),''),
          TextReport('Thời gian giữ còn lại : ', reports.time.toString(),' (S)'),
          TextReport('Lực nén : ', reports.pressure.toString(),' (N)'),
          TextReport('Số lần nhấn còn lại : ',  reports.pushCount.toString(),' (lẦN)'),
          
       
        ]),
      )),
    );
  }
}
class TextReport extends StatelessWidget {
  String text;
  String parameterText;
    String unit;

  TextReport(this.text,this.parameterText,this.unit);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Center(
          child: Text(
            text + parameterText + unit,
            style: TextStyle(
              fontSize: 25,

            ),
          ),
        ),
      ),

    );
    
  }
}