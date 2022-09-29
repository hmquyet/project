import 'package:flutter_bloc/flutter_bloc.dart';
import 'event_api.dart';
import 'state_api.dart';
import 'package:flutter_application_1/model/report.dart';

class ReportBloc extends Bloc<ReportEvent, ReportState> {

  final ReportResipontory _report;
  ReportBloc(this._report) : super(ReportLoading()) {

    
    on<LoadReportEvent>((event, emit) async {
      emit(ReportLoading());
      
     try {
      final result = await _report.getReport();
        emit(ReportSuccessful(result));
      } catch(e) {
        emit(ReportError());
      }
    });
  }
}
