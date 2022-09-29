import 'package:equatable/equatable.dart';
abstract class ReportEvent extends Equatable {}

class LoadReportEvent extends ReportEvent {
  DateTime timestamp;
  // String? email;
  // String? password;

  LoadReportEvent(this.timestamp);

  @override
  List<Object?> get props => [timestamp];
}
