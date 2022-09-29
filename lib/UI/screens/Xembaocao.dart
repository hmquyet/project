import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:flutter_application_1/UI/screens/chitiet_baocao.dart';

import 'package:flutter_application_1/model/report.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_application_1/bloc/bloc_api.dart';
import 'package:flutter_application_1/bloc/state_api.dart';
import 'package:flutter_application_1/bloc/event_api.dart';


class XemBaoCao extends StatefulWidget {
  @override
  State<XemBaoCao> createState() => _XemBaoCaoState();
}

class _XemBaoCaoState extends State<XemBaoCao> {
  
  @override
  Widget build(BuildContext context) {
    return BlocProvider<ReportBloc>(
      create: (context) =>
          ReportBloc(ReportResipontory())..add(LoadReportEvent(DateTime.now())),
      child: Scaffold(
          appBar: AppBar(
            backgroundColor: Color.fromARGB(255, 6, 40, 61),
            title: Center(child: Text('Xem báo cáo')),
          ),
          
    
          body: BlocBuilder<ReportBloc,ReportState>(
            
            builder:(context, state){
              if(state is ReportLoading){
                return Center(
                    child: CircularProgressIndicator(
                  color: Color.fromARGB(255, 6, 40, 61),
                ));
              }else if(state is ReportSuccessful){
    
                return ListView.builder(
                  itemCount: state.report.length,
                  itemBuilder: (context,index) {
                    return Padding(
                      padding: const EdgeInsets.all(9.0),
                      child: Container(
                        width: double.infinity,
                        height: 60,
                        decoration: BoxDecoration(
                            color: Color.fromARGB(255, 255, 255, 255),
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(blurRadius: 5.5, offset: Offset(-5, 5))
                            ]),
                        child: ListTile(
                          title: Text(
                            'báo cáo ${state.report[index].id.toString()} ',
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
                                        DetailPage(state.report[index])));
                          },
                        ),
                      ),
                    );
                  }
                );
              }
              else{
                 return Container(
              child: Text('Error'),
            );
              }
              
            }
            
             ),
          ),
    );
  }
}
