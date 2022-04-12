import 'package:floor/floor.dart';
import 'package:toprate_hrm/datasource/data/model/entity/user.dart';

@dao
abstract class UserDao {
  @Query('SELECT * FROM User')
  Future<List<UserModel>> findAllUsers();

  @Query('SELECT * FROM User WHERE id = :id')
  Future<UserModel?> findUserById(int id);

  @insert
  Future<int> insertUser(UserModel user);

  @Query('SELECT * FROM User')
  Stream<List<UserModel>> findAllUsersAsStream();

  @insert
  Future<List<int>> insertUsers(List<UserModel> users);

  @update
  Future<int> updateUser(UserModel user);

  @update
  Future<int> updateUsers(List<UserModel> user);

  @delete
  Future<int> deleteUser(UserModel user);

  @delete
  Future<int> deleteUsers(List<UserModel> users);

  @Query('DELETE FROM User')
  Future<void> deleteAllUsers(); // query without returning an entity

  @transaction
  Future<void> replaceUsers(List<UserModel> users) async {
    await deleteAllUsers();
    await insertUsers(users);
  }
}
