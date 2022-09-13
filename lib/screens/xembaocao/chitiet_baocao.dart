import 'package:flutter/material.dart';
import 'package:flutter_application_1/routes/routes.dart';
class DetailPage extends StatefulWidget {
 
  final int index;
  DetailPage(this.index);

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  int selectedIndex = 3;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        
        backgroundColor: Color.fromARGB(255, 53, 94, 74),
        title: Center(child: Text('báo cáo ${widget.index}')),
      ),
     
    );
  }
}