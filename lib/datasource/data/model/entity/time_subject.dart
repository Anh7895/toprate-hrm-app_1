import 'package:toprate_hrm/datasource/data/model/entity/project_data.dart';

class TimeSubject {
  String? name;
  String? nameTaskSelect;
  bool? isSelected;
  bool? extraTime;
  String? color;
  List<ProjectData>? projectData;

  TimeSubject({
    this.name,
    this.nameTaskSelect,
    this.isSelected,
    this.extraTime,
    this.color,
    this.projectData});
}
