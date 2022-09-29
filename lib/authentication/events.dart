import 'package:equatable/equatable.dart';
abstract class LoginEvent extends Equatable {}

class SubmitEvent extends LoginEvent {
  String? email;
  String? password;

  SubmitEvent({this.email, this.password});

  @override
  List<Object?> get props => [email, password];
}

