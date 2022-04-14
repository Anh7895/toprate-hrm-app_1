class CheckInModel {
  String? userId;
  String? projectId;
  int? slotIndex;
  int? numberSlot;
  String? submitTime;
  String? checkInDate;
  bool? extraTime;
  int? workMode;
  bool? status;

  CheckInModel({
    this.userId,
    this.projectId,
    this.slotIndex,
    this.numberSlot,
    this.submitTime,
    this.checkInDate,
    this.extraTime,
    this.workMode,
    this.status,
  });

}
