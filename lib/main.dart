import 'package:flutter/material.dart';
import 'package:flutter_application_1/UI/screens/Xembaocao.dart';
import 'package:flutter_application_1/UI/screens/login_screen.dart';
import 'package:flutter_application_1/UI/screens/home.dart';
// import 'package:flutter_application_1/blocs/login_bloc.dart';
// import 'UI/screens/splashpage.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

// import 'UI/routes/ButtomNagivationBar.dart';
//  import 'package:flutter_application_1/authentication/authentication_event.dart';
import 'package:flutter_application_1/authentication/blocs.dart';
import 'package:flutter_application_1/authentication/states.dart';
import 'package:flutter_application_1/authentication/events.dart';

import 'package:flutter_application_1/bloc/bloc_api.dart';
import 'package:flutter_application_1/bloc/state_api.dart';
import 'package:flutter_application_1/bloc/event_api.dart';

import 'UI/screens/thongsohoatdong.dart';
import 'package:flutter_application_1/repository/api_base.dart';
import 'package:flutter_application_1/model/report.dart';

void main() {
  runApp(MyApp());
  // AuthRepo authRepo = AuthRepo();
  //  authRepo.login("eve.holt@reqress.in", "cityslicka");
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            body: MultiBlocProvider(
      providers: [
        BlocProvider<ReportBloc>(
          create: (context) => ReportBloc(ReportResipontory())
            ..add(LoadReportEvent(DateTime.now())),),
            
       BlocProvider<LoginBloc>(
          create: (context) => LoginBloc(User())
            ),
 
      ],   child: LoginScreen(),
    )));
  }

// MultiBlocProvider(
//         providers: [
//           BlocProvider(create: (context) => ReportBloc(ReportResopontory())),
//         ],)

}
