import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:toprate_hrm/blocs/base_state/base_state.dart';
import 'package:toprate_hrm/blocs/report/report_bloc.dart';
import 'package:toprate_hrm/common/injector/injector.dart';
import 'package:toprate_hrm/common/resource/sizes.dart';
import 'package:toprate_hrm/common/resource/strings.dart';
import 'package:toprate_hrm/common/resource/theme_color.dart';
import 'package:toprate_hrm/common/widgets/http_stream_handler.dart';
import 'package:toprate_hrm/datasource/data/model/entity/chart_model.dart';

class ReportScreen extends StatefulWidget {
  const ReportScreen({Key? key}) : super(key: key);

  @override
  State<ReportScreen> createState() => _ReportScreenState();
}

class _ReportScreenState extends State<ReportScreen>
     {
  ReportBloc _bloc = Injector.resolve<ReportBloc>();

  @override
  // TODO: implement wantKeepAlive


  @override
  void initState() {
    _bloc.addData();
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            "Report",
            style: TextStyle(
                fontSize: fontSize_24,
                color: ThemeColor.clr_CE6161,
                fontFamily: TextConstants.fontRubik,
                fontWeight: FontWeight.w500),
          ),
        ),
        body: SafeArea(
          child: HttpStreamHandler<ReportBloc, BaseState>(
            bloc: _bloc,
            listener: (context, state) {},
            builder: (context, state) {
              return Stack(
                children: [
                  SfCircularChart(
                    legend: Legend(isVisible: true,overflowMode: LegendItemOverflowMode.wrap),
                    series: <CircularSeries>[
                      PieSeries<ChartModel, String>(
                        dataSource: _bloc.chartData,
                        xValueMapper: (ChartModel data, _) => data.continent,
                        yValueMapper: (ChartModel data, _) => data.gdp,
                        dataLabelSettings: DataLabelSettings(isVisible: true)
                      )
                    ],
                  )
                  // Visibility(
                  //   visible: state is StartCallApiState,
                  //   child: LoadingWidget(),
                  // )
                  // _buildButtonBottomWidget(),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
