import 'package:equatable/equatable.dart';
import 'package:flutter_application_1/model/report.dart';

abstract class ReportState extends Equatable {}

class ReportInitial extends ReportState {
  @override
  List<Object?> get props => [];
}

class ReportSuccessful extends ReportState {
  final List<Report> report;
  ReportSuccessful(this.report);

  
  @override
  List<Object?> get props => [report];
}

class ReportLoading extends ReportState {
  @override
  List<Object?> get props => [];
}

class ReportError extends ReportState {
  @override
  List<Object?> get props => [];
}
