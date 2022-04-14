import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:meta/meta.dart';
import 'package:toprate_hrm/blocs/base_state/base_state.dart';
import 'package:toprate_hrm/datasource/data/model/entity/enumMode.dart';
import 'package:toprate_hrm/datasource/data/model/entity/manager_mail_model.dart';

part 'day_off_event.dart';

part 'day_off_state.dart';

class DayOffBloc extends Bloc<DayOffEvent, BaseState> {
  DayOffBloc() : super(DayOffInitial()) {
    on<DayOffEvent>((event, emit) {
      // TODO: implement event handler
    });
    on<ClickCheckboxDurationEvent>(
        (event, emit) => clickCheckboxDuration(event, emit));
    on<SetSelectedFromDateEvent>((event, emit) => onSelectedFromDate(event, emit));
    on<SetSelectedToDateEvent>((event, emit) => onSelectedToDate(event, emit));
  }

  var fromController = TextEditingController();
  var toController = TextEditingController();
  var searchController = new TextEditingController();
  var selectedFromDate;
  var selectedToDate;
  Mode character = Mode.OneDay;
  TimeOff timeOff = TimeOff.Allday;
  var isDayOffOneDay = true;
  var defaultReason = "One";
  var reasons = ["One", "Two", "Three", "Four"];
  var listResult = [];
  String selectedDOB = "";
  DateTime selectedDate = DateTime.now();

  List<ManagerMailModel> managerMail = [
    ManagerMailModel(
        mail: "nghiphep@toprate.io",
        isChecked: true,
        name: "DOB",
        canRemove: false),
    ManagerMailModel(
        mail: "nghiphep@toprate.io", isChecked: true, canRemove: false),
    ManagerMailModel(mail: "dung@toprate.io"),
    ManagerMailModel(mail: "tuan@toprate.io"),
    ManagerMailModel(mail: "giangvt@toprate.io"),
    ManagerMailModel(mail: "vietvk@toprate.io"),
    ManagerMailModel(mail: "hanhnv@toprate.io"),
    ManagerMailModel(mail: "long@toprate.io"),
  ];

  setTimeOff(TimeOff timeOff) {
    timeOff = timeOff;
  }

  setReason(String reason) {
    this.defaultReason = reason;
  }

  setMailChecked(int index, isChecked) {
    managerMail[index].isChecked = isChecked;
    print(managerMail[index].mail);
  }

  clickCheckboxDuration(
      ClickCheckboxDurationEvent event, Emitter<BaseState> emit) async {
    if (event.isSelect == true) {
      isDayOffOneDay = true;
    } else {
      isDayOffOneDay = false;
    }
    character = event.value!;
    emit(ClickCheckboxDurationState());
  }

  onSelectedFromDate(SetSelectedFromDateEvent event, Emitter<BaseState> emit) async {
    fromController.text = event.setSelectedFromDate!;
    emit(SetSelectedFromDateState());
  }

  onSelectedToDate(SetSelectedToDateEvent event, Emitter<BaseState> emit) async {
    toController.text = event.setSelectedToDate!;
    emit(SetSelectedToDateState());
  }
}
