import 'dart:async';

import 'package:floor/floor.dart';
import 'package:toprate_hrm/datasource/data/local/dao/user_dao.dart';
import 'package:toprate_hrm/datasource/data/model/entity/user.dart';
import 'package:sqflite/sqflite.dart' as sqflite;
part 'app_database.g.dart';


@Database(version: 1, entities: [UserModel])
abstract class AppDatabase extends FloorDatabase {
  UserDao get userDao;
}

final callback = Callback(
  onCreate: (database, version) { /* database has been created */ },
  onOpen: (database) { /* database has been opened */},
  onUpgrade: (database, startVersion, endVersion) { /* database has been upgraded */ },
);