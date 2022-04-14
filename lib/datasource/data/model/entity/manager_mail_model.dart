class ManagerMailModel {
  bool isChecked;
  bool canRemove;
  String name;
  String? mail;

  ManagerMailModel(
      {this.isChecked = false,
      this.name = "",
      this.mail,
      this.canRemove = true});
}
