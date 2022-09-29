import 'package:flutter/material.dart';
import 'package:flutter_application_1/UI/screens/home.dart';
import 'package:flutter_application_1/UI/screens/splashpage.dart';
import 'package:flutter_application_1/UI/routes/routes.dart';
import 'package:bloc/bloc.dart';

import 'package:flutter_application_1/authentication/blocs.dart';
import 'package:flutter_application_1/authentication/states.dart';
import 'package:flutter_application_1/authentication/events.dart';
import 'package:flutter_application_1/bloc/bloc_api.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

import 'home.dart';
import 'package:flutter_application_1/UI/routes/ButtomNagivationBar.dart';
import 'package:flutter_application_1/repository/api_base.dart';

class LoginScreen extends StatefulWidget {
/*   bool tapPassword = true; */

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool _showPass = true;
  LoginBloc? _loginBloc;
  final TextEditingController _email =
      TextEditingController(text: "eve.holt@reqres.in");
  final TextEditingController _password =
      TextEditingController(text: "cityslicka");

  @override
  void initState() {
    super.initState();
    _loginBloc = BlocProvider.of<LoginBloc>(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/login.png'),
                fit: BoxFit.cover),
          ),
          child: Scaffold(
            backgroundColor: Color.fromARGB(0, 249, 249, 249),
            body: Padding(
              padding: const EdgeInsets.fromLTRB(35.5, 0, 35.5, 70),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end, //theo chiều column
    
                  children: <Widget>[
                    TextField(
                      controller: _email,
                      decoration: InputDecoration(
                          filled: true,
                          fillColor: Color.fromARGB(255, 252, 252, 252),
                          hintText: "Tên đăng nhập ",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15))),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    TextField(
                      controller: _password,
                      obscureText: _showPass,
                      autofocus: false,
                      decoration: InputDecoration(
                          filled: true,
                          fillColor: Color.fromARGB(255, 252, 252, 252),
                          hintText: "Mật khẩu ",
                          suffixIcon: IconButton(
                              onPressed: () {
                                setState(() {
                                  _showPass = !_showPass;
                                });
                              },
                              icon: Icon(
                                _showPass
                                    ? Icons.visibility
                                    : Icons.visibility_off,
                              )),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15))),
                    ),
    
                    /*khoang cach giua 2 o */
                    SizedBox(
                      height: 20,
                    ),
                    BlocListener<LoginBloc, LoginState>(
                      listener: (context, state) {
                        if (state is LoginLoading) {
                          Center(
                              child: CircularProgressIndicator(
                            color: Color.fromARGB(255, 6,40,61),
                          ));
                        } else if (state is LoginSuccessful) {
                          Navigator.push(
                              context,
                              new MaterialPageRoute(
                                  builder: ((context) =>
                                      ButtomNagivationBar(0))));
                        } else {
                          ScaffoldMessenger.of(context)
                              .showSnackBar(const SnackBar(
                                  content: Text(
                            'Lỗi đăng nhập ',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Color.fromARGB(255, 228, 13, 13),
                                fontSize: 20),
                          )));
                        }
                      },
                     child: ElevatedButton(
                        child: Text(
                          'Đăng nhập',
                          style: TextStyle(
                              fontSize: 17,
                              color: Color.fromARGB(255, 241, 241, 241)),
                        ),
                        onPressed: () {
                          BlocProvider.of<LoginBloc>(context).add(SubmitEvent(
                              email: _email.text, password: _password.text));
                        },

                        /* Navigator.push(
                                context,
                                new MaterialPageRoute(builder:((context) => ButtomNagivationBar(0)))
                              ); */

                        style: ButtonStyle(
                            fixedSize:
                                MaterialStateProperty.all<Size>(Size(300, 50)),
                            backgroundColor: MaterialStateProperty.all<Color>(
                              Color.fromARGB(255, 0, 41, 77),
                            ),
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(40),
                            ))),
                      ),
                      
                    ),
                  ],
                ),
              ),
            ),
          )),
    );
  }
}
