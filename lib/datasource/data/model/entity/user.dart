import 'package:floor/floor.dart';

@entity
class UserModel {
  @PrimaryKey(autoGenerate: true)
  final int id;

  @ColumnInfo(name: 'custom_name')
  final String name;

  UserModel(this.id, this.name);
}