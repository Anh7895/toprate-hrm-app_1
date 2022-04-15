import 'package:toprate_hrm/datasource/data/model/entity/project_model.dart';

class GetCheckInModel {
  String? id;
  String? userId;
  String? projectId;
  int? slotIndex;
  int? numberSlot;
  String? submitTime;
  String? checkinDate;
  bool? extraTime;
  int? workMode;
  bool? status;
  Project? projectRq;

  GetCheckInModel({
    this.id ,
    this.userId ,
    this.projectId ,
    this.slotIndex,
    this.numberSlot ,
    this.submitTime ,
    this.checkinDate ,
    this.extraTime ,
    this.workMode ,
    this.status ,
    this.projectRq ,
  });
}
