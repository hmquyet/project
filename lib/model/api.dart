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
 