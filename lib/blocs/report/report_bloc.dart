import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:toprate_hrm/blocs/base_state/base_state.dart';
import 'package:toprate_hrm/datasource/data/model/entity/chart_model.dart';

part 'report_event.dart';

part 'report_state.dart';

class ReportBloc extends Bloc<ReportEvent, BaseState> {
  ReportBloc() : super(ReportInitial()) {
    on<ReportEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
  List<ChartModel> chartData = [];
  addData() {
    chartData.add(ChartModel("VieNam", 10000));
    chartData.add(ChartModel("ThaiLan", 1500));
    chartData.add(ChartModel("Laos", 3000));
    chartData.add(ChartModel("Asia", 15000));
    chartData.add(ChartModel("NhaTrang", 250));
    chartData.add(ChartModel("Hanoi", 250));
  }
}
