part of 'checkin_bloc.dart';

@immutable
abstract class CheckinState extends BaseState{}

class CheckinInitial extends CheckinState {}

class InitDataDateState extends CheckinState {
  List<SelectAnIndustrialRecruitmentModel>? listDataDate;
  InitDataDateState(this.listDataDate);
}

class FillInformationState extends CheckinState {
  final String? stringDate;
  FillInformationState(this.stringDate);
}

class GetDataTimeKeepingState extends CheckinState{

  GetDataTimeKeepingState();
}