// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_database.dart';

// **************************************************************************
// FloorGenerator
// **************************************************************************

class $FloorAppDatabase {
  /// Creates a database builder for a persistent database.
  /// Once a database is built, you should keep a reference to it and re-use it.
  static _$AppDatabaseBuilder databaseBuilder(String name) =>
      _$AppDatabaseBuilder(name);

  /// Creates a database builder for an in memory database.
  /// Information stored in an in memory database disappears when the process is killed.
  /// Once a database is built, you should keep a reference to it and re-use it.
  static _$AppDatabaseBuilder inMemoryDatabaseBuilder() =>
      _$AppDatabaseBuilder(null);
}

class _$AppDatabaseBuilder {
  _$AppDatabaseBuilder(this.name);

  final String? name;

  final List<Migration> _migrations = [];

  Callback? _callback;

  /// Adds migrations to the builder.
  _$AppDatabaseBuilder addMigrations(List<Migration> migrations) {
    _migrations.addAll(migrations);
    return this;
  }

  /// Adds a database [Callback] to the builder.
  _$AppDatabaseBuilder addCallback(Callback callback) {
    _callback = callback;
    return this;
  }

  /// Creates the database and initializes it.
  Future<AppDatabase> build() async {
    final path = name != null
        ? await sqfliteDatabaseFactory.getDatabasePath(name!)
        : ':memory:';
    final database = _$AppDatabase();
    database.database = await database.open(
      path,
      _migrations,
      _callback,
    );
    return database;
  }
}

class _$AppDatabase extends AppDatabase {
  _$AppDatabase([StreamController<String>? listener]) {
    changeListener = listener ?? StreamController<String>.broadcast();
  }

  UserDao? _userDaoInstance;

  Future<sqflite.Database> open(String path, List<Migration> migrations,
      [Callback? callback]) async {
    final databaseOptions = sqflite.OpenDatabaseOptions(
      version: 1,
      onConfigure: (database) async {
        await database.execute('PRAGMA foreign_keys = ON');
        await callback?.onConfigure?.call(database);
      },
      onOpen: (database) async {
        await callback?.onOpen?.call(database);
      },
      onUpgrade: (database, startVersion, endVersion) async {
        await MigrationAdapter.runMigrations(
            database, startVersion, endVersion, migrations);

        await callback?.onUpgrade?.call(database, startVersion, endVersion);
      },
      onCreate: (database, version) async {
        await database.execute(
            'CREATE TABLE IF NOT EXISTS `UserModel` (`id` INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, `custom_name` TEXT NOT NULL)');

        await callback?.onCreate?.call(database, version);
      },
    );
    return sqfliteDatabaseFactory.openDatabase(path, options: databaseOptions);
  }

  @override
  UserDao get userDao {
    return _userDaoInstance ??= _$UserDao(database, changeListener);
  }
}

class _$UserDao extends UserDao {
  _$UserDao(this.database, this.changeListener)
      : _queryAdapter = QueryAdapter(database, changeListener),
        _userModelInsertionAdapter = InsertionAdapter(
            database,
            'UserModel',
            (UserModel item) =>
                <String, Object?>{'id': item.id, 'custom_name': item.name},
            changeListener),
        _userModelUpdateAdapter = UpdateAdapter(
            database,
            'UserModel',
            ['id'],
            (UserModel item) =>
                <String, Object?>{'id': item.id, 'custom_name': item.name},
            changeListener),
        _userModelDeletionAdapter = DeletionAdapter(
            database,
            'UserModel',
            ['id'],
            (UserModel item) =>
                <String, Object?>{'id': item.id, 'custom_name': item.name},
            changeListener);

  final sqflite.DatabaseExecutor database;

  final StreamController<String> changeListener;

  final QueryAdapter _queryAdapter;

  final InsertionAdapter<UserModel> _userModelInsertionAdapter;

  final UpdateAdapter<UserModel> _userModelUpdateAdapter;

  final DeletionAdapter<UserModel> _userModelDeletionAdapter;

  @override
  Future<List<UserModel>> findAllUsers() async {
    return _queryAdapter.queryList('SELECT * FROM User',
        mapper: (Map<String, Object?> row) =>
            UserModel(row['id'] as int, row['custom_name'] as String));
  }

  @override
  Future<UserModel?> findUserById(int id) async {
    return _queryAdapter.query('SELECT * FROM User WHERE id = ?1',
        mapper: (Map<String, Object?> row) =>
            UserModel(row['id'] as int, row['custom_name'] as String),
        arguments: [id]);
  }

  @override
  Stream<List<UserModel>> findAllUsersAsStream() {
    return _queryAdapter.queryListStream('SELECT * FROM User',
        mapper: (Map<String, Object?> row) =>
            UserModel(row['id'] as int, row['custom_name'] as String),
        queryableName: 'UserModel',
        isView: false);
  }

  @override
  Future<void> deleteAllUsers() async {
    await _queryAdapter.queryNoReturn('DELETE FROM User');
  }

  @override
  Future<int> insertUser(UserModel user) {
    return _userModelInsertionAdapter.insertAndReturnId(
        user, OnConflictStrategy.abort);
  }

  @override
  Future<List<int>> insertUsers(List<UserModel> users) {
    return _userModelInsertionAdapter.insertListAndReturnIds(
        users, OnConflictStrategy.abort);
  }

  @override
  Future<int> updateUser(UserModel user) {
    return _userModelUpdateAdapter.updateAndReturnChangedRows(
        user, OnConflictStrategy.abort);
  }

  @override
  Future<int> updateUsers(List<UserModel> user) {
    return _userModelUpdateAdapter.updateListAndReturnChangedRows(
        user, OnConflictStrategy.abort);
  }

  @override
  Future<int> deleteUser(UserModel user) {
    return _userModelDeletionAdapter.deleteAndReturnChangedRows(user);
  }

  @override
  Future<int> deleteUsers(List<UserModel> users) {
    return _userModelDeletionAdapter.deleteListAndReturnChangedRows(users);
  }

  @override
  Future<void> replaceUsers(List<UserModel> users) async {
    if (database is sqflite.Transaction) {
      await super.replaceUsers(users);
    } else {
      await (database as sqflite.Database)
          .transaction<void>((transaction) async {
        final transactionDatabase = _$AppDatabase(changeListener)
          ..database = transaction;
        await transactionDatabase.userDao.replaceUsers(users);
      });
    }
  }
}
