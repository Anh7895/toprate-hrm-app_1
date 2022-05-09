import 'package:openapi/openapi.dart';

class ManagerMailModel {
  bool isChecked;
  UserProject? userProject;

  ManagerMailModel({this.isChecked = false, this.userProject});
}
