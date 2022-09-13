import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/xembaocao/chitiet_baocao.dart';
import 'package:flutter_application_1/routes/routes.dart';

class XemBaoCao extends StatefulWidget {
  const XemBaoCao({Key? key}) : super(key: key);

  @override
  State<XemBaoCao> createState() => _XemBaoCaoState();
}

class _XemBaoCaoState extends State<XemBaoCao> {
  int selectedIndex = 3;
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 53, 94, 74),
        title: Center(child: Text('Xem báo cáo')),
      ),
     
      body: _buidListView(),
    ));
  }
}

ListView _buidListView() {
  return ListView.builder(
      itemCount: 10,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.all(9.0),
          child: Container(
            width: double.infinity,
            height: 100,
            decoration: BoxDecoration(
                color: Color.fromARGB(255, 53, 94, 74),
                borderRadius: BorderRadius.circular(10),
                boxShadow: [BoxShadow(
                  
                  blurRadius: 5.5,
                  offset: Offset(-5,5)
                  )]),
            child: ListTile(
              title: Text(
                'Báo cáo thứ $index',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => DetailPage(index)));
              },
            ),
          ),
        );
      });
}
