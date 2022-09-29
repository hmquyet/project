import 'dart:convert';
import 'package:flutter_application_1/repository/api_base.dart';

import 'report.dart';
import 'package:http/http.dart'as http;
import 'package:flutter/foundation.dart';

// List<Report> parseReport(String responseBody){
//   var list = jsonDecode(responseBody) as List<dynamic>;
//   List<Report> reports = list.map((modle) => Report.fromJson(modle)).toList();
//   return reports;
// }
// Future<List<Report>> fetchReport() async{
//   final response = await http.get(Uri.parse('https://retoolapi.dev/9wNHKw/pj2'));
//   if(response.statusCode ==200){
//     return compute(parseReport,response.body);
//   }
//   else{
//     throw Exception('request API Error');
//   }
// }
// Future<List<Report>> fetchReportNew() async{
//   final response = await http.get(Uri.parse('https://retoolapi.dev/9wNHKw/pj2'));
//   if(response.statusCode ==200){
//     return compute(parseReport,response.body);
//   }
//   else{
//     throw Exception('request API Error');
//   }
// }