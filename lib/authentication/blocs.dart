

// import 'package:equatable/equatable.dart';

import 'events.dart';
import 'states.dart';


import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_application_1/repository/api_base.dart';


class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final User _account;
  LoginBloc(this._account) : super(LoginInitial()) {
    on<SubmitEvent>((event, emit) async {
      emit(LoginLoading());
       final result = await _account.getAccount();
      if (event.email != result.email && event.password != result.password) {
        
        emit(LoginSuccessful());
      }
      else {
        emit(LoginError());
        
      }
    });
  }
}



// class AuthenticationBloc
//     extends Bloc<AuthenticationEvent, AuthenticationState> {
//   final UserRepository userRepository;

//   AuthenticationBloc( {required this.userRepository}) :super (AuthenticationUninitialized());


//   @override
//   Stream<AuthenticationState> mapEventToState(
//     AuthenticationEvent event,
//   ) async* {
   
//     if (event is LoggedIn) {
//       yield AuthenticationLoading();
//       await userRepository.persistToken(event.token);
//       yield AuthenticationAuthenticated();
//     }


//   }
// }

