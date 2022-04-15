class Project {
  String? id;
  String? projectCode;
  String? projectName;
  String? projectManager;
  bool? status;
  String? color;
  String? startDate;
  String? endDate;
  bool? isSelected;

  Project({
    this.id,
    this.projectName,
    this.projectCode,
    this.projectManager,
    this.status,
    this.color,
    this.startDate,
    this.endDate,
    this.isSelected,
  });
}
