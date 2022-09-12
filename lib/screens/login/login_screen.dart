import 'package:flutter/material.dart';
import 'package:flutter_application_1/routes/routes.dart';

//import 'package:flutter_application_1/screens/home/home.dart';

class LoginScreen extends StatelessWidget {
/*   bool tapPassword = true; */

  LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image:
              DecorationImage(image: AssetImage('assets/images/login.png'))),
      child: Scaffold(
        backgroundColor: Color.fromARGB(0, 249, 249, 249),
        body: Padding(
          padding: const EdgeInsets.all(35.0),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end, //theo chiều column

              children: <Widget>[
                TextField(
                  decoration: InputDecoration(
                      fillColor: Color.fromARGB(255, 252, 252, 252),
                      filled: true,
                      hintText: "Tên đăng nhập ",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15))),
                ),

                /*khoang cach giua 2 o */
                SizedBox(
                  height: 10,
                ),
                TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                      fillColor: Color.fromARGB(208, 252, 252, 252),
                      filled: true,
                      hintText: "Mật khẩu ",
                      suffixIcon: InkWell(child: Icon(Icons.visibility)),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15))),
                ),
                Row(mainAxisAlignment: MainAxisAlignment.end, //theo chiều row
                    children: [
                      TextButton(
                          onPressed: () {},
                          child: Text(
                            'Quên mật khẩu ? ',
                            style: TextStyle(
                                fontSize: 17,
                                color: Color.fromARGB(255, 84, 84, 84)),
                          )),
                    ]),
                SizedBox(
                  height: 5,
                ),
                Column(
                  children: <Widget>[
                    ElevatedButton(
                      child: Text(
                        'Đăng nhập',
                        style: TextStyle(
                            fontSize: 17,
                            color: Color.fromARGB(255, 241, 241, 241)),
                      ),
                      onPressed: () {
                        Navigator.of(context).pushNamed(RoutesManager.Homepage);
                      },
                      style: ButtonStyle(
                          fixedSize:
                              MaterialStateProperty.all<Size>(Size(300, 50)),
                          backgroundColor: MaterialStateProperty.all<Color>(
                              Color.fromARGB(255, 35, 78, 45)),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(40),
                          ))),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
/* void _viewPassWord() {
    if (tapPassword == true) {
      tapPassword = false;
    } else {
      tapPassword = true;
    }
  } */
}
