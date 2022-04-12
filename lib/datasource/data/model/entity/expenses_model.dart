class ExpensesModel {
  String? image;
  DateTime? date;
  String? merchant;
  String? category;
  String? description;
  double? total;
  double? tax;
  double? tip;

  ExpensesModel({this.image, this.date, this.merchant, this.category,
      this.description, this.total, this.tax, this.tip});
}