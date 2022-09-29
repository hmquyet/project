import 'dart:convert';
import 'package:flutter_application_1/repository/api_base.dart';

import 'report.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/foundation.dart';

class Report {
  int? id;
  int? time;
  bool? state;
  int? pressure;
  int? pushCount;

  Report({this.id, this.time, this.state, this.pressure, this.pushCount});

  Report.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    time = json['time'];
    state = json['state'];
    pressure = json['pressure'];
    pushCount = json['pushCount'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['time'] = this.time;
    data['state'] = this.state;
    data['pressure'] = this.pressure;
    data['pushCount'] = this.pushCount;
    return data;
  }
}

Report reportFromJson(String str) => Report.fromJson(json.decode(str));

String reportToJson(Report data) => json.encode(data.toJson());

class ReportResipontory {
  Future<List<Report>> getReport() async {
    final response =
        await http.get(Uri.parse('https://retoolapi.dev/9wNHKw/pj2'));
    // final account = accountFromJson(response.body);
    // return account;
    if (response.statusCode == 200) {
      List<dynamic> body = jsonDecode(response.body);
      List<Report> reports = body
          .map(
            (dynamic item) => Report.fromJson(item),
          )
          .toList();
      return reports;
    } else {
      throw Exception("Failed to load Account");
    }
  }
}
