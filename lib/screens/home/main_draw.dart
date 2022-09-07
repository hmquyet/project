import 'package:flutter/material.dart';
import 'package:flutter_application_1/routes/routes.dart';

class MainDraw extends StatelessWidget {
  const MainDraw({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Color.fromARGB(255, 251, 251, 251),
      child: Column(
        children: <Widget>[
          Container(
            width: double.infinity,
            height: 100,
            margin: EdgeInsets.only(top: 30),
            color: Color.fromARGB(255, 35, 78, 45),
            /* decoration: BoxDecoration(
                color: Colors.blue,
                image: DecorationImage(
                    image: NetworkImage(
                        'https://www.facebook.com/photo?fbid=3127659670880202&set=a.1395938480719005'))), */
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start, //theo chiều row
            children: [
              TextButton(
                  onPressed: () {
                    Navigator.of(context)
                        .pushNamed(RoutesManager.Loginpage);
                  },
                  child: Text(
                    'Đăng xuất',
                    style: TextStyle(
                      color: Color.fromARGB(255, 50, 48, 48),
                      fontSize: 15,
                     
                     
                      
                    ),
                  ))
            ],
          )
        ],
      ),
    );
  }
}
