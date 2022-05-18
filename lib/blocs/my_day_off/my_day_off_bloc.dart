import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:toprate_hrm/blocs/base_state/base_state.dart';

part 'my_day_off_event.dart';
part 'my_day_off_state.dart';

class MyDayOffBloc extends Bloc<MyDayOffEvent, BaseState> {
  MyDayOffBloc() : super(MyDayOffInitial()) {
    on<MyDayOffEvent>((event, emit) {
      // TODO: implement event handler
    });
    on<InitDataEvent>((event, emit) {
      fakeDataMyDayOff();
      emit(InitDataState());
    });
  }
  List<ListEmail> listEmail = [];
  List<ListEmail> listUser = [];
  List<MyDayOff> list = [];
  fakeDataMyDayOff(){
  list.add(MyDayOff(true, DateTime.utc(2022, 5, 17), "Chan Duoc Chua", "DADUYET", "NHIEUNGAY", content: "KHONGVUI",toDate: DateTime.utc(2022, 5, 20)));
  list.add(MyDayOff(false, DateTime.utc(2022, 5, 16), "Thich Duoc Chua", "DADUYET", "SANG", content: "KHONGVUI"));
  list.add(MyDayOff(true, DateTime.utc(2022, 5, 15), "Nghi Phep Duoc Chua", "CHUADUYET", "NHIEUNGAY", content: "KHONGVUI",toDate: DateTime.utc(2022, 5, 19)));
  list.add(MyDayOff(false, DateTime.utc(2022, 5, 14), "MET Duoc Chua", "CHUADUYET", "CHIEU", content: "KHONGVUI"));
  list.add(MyDayOff(true, DateTime.utc(2022, 5, 13), "NAN Duoc Chua", "TUCHOI", "NHIEUNGAY", content: "RATKHONGVUI",toDate: DateTime.utc(2022, 5, 19)));
  list.add(MyDayOff(false, DateTime.utc(2022, 5, 12), "OM Duoc Chua", "TUCHOI", "CANGAY", content: "KHONGVUI"));
  list.add(MyDayOff(false, DateTime.utc(2022, 5, 11), "OM Duoc Chua", "TUCHOI", "CANGAY", content: "KHONGVUI",email: listEmail,reasonReject: "Khong thich",nameReject: "Tung"));
  }
  fakeDataMail(){
    listEmail.add( ListEmail("tung@toprate.io"));
    listEmail.add( ListEmail("phi@toprate.io"));
    listEmail.add( ListEmail("son@toprate.io"));
  }
}

class MyDayOff{
  bool? manyday =true;
  DateTime fromDate;
  DateTime? toDate ;
  String? content;
  String reason;
  String typeDayOff;
  String status;
  List<ListEmail>? email;
  String? nameReject;
  String? reasonReject;
  MyDayOff(this.manyday,this.fromDate, this.reason, this.status, this.typeDayOff,{this.toDate,this.content, this.nameReject, this.reasonReject, this.email});
}

class ListEmail{
  String email;
  ListEmail( this.email);
}
