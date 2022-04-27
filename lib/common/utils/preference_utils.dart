import 'dart:convert';

import 'package:toprate_hrm/datasource/data/model/account_information.dart';
import 'package:toprate_hrm/datasource/data/model/response/login_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:intl/intl.dart';
import 'package:openapi/openapi.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'package:built_collection/built_collection.dart';
import 'package:toprate_hrm/datasource/data/model/user_information.dart';

class PreferenceUtils {
  static Future<SharedPreferences> get _instance async =>
      _prefsInstance ??= await SharedPreferences.getInstance();
  static SharedPreferences? _prefsInstance;

  // call this method from iniState() function of mainApp().
  static Future<SharedPreferences> init() async {
    _prefsInstance = await _instance;
    return _prefsInstance!;
  }

  static Future<String> getString(String key, [String? defValue]) async {
    var prefs = await _instance;
    return prefs.getString(key) ?? defValue ?? "";
  }

  static Future<bool> setString(String key, String value) async {
    var prefs = await _instance;
    return prefs.setString(key, value);
  }

  static int getInt(String key, [int? defValue]) {
    return _prefsInstance!.getInt(key) ?? defValue ?? 1;
  }

  static Future<bool> setInt(String key, int value) async {
    var prefs = await _instance;
    return prefs.setInt(key, value);
  }
  static Future<bool> saveAccount(OWhoAmI? oWhoAmI) async{
    var prefs = await _instance;
    UserInformation userInformation = UserInformation(
      id: oWhoAmI?.id,
      username: oWhoAmI?.username,
      fullName: oWhoAmI?.fullName,
      firstName: oWhoAmI?.firstName,
      lastName: oWhoAmI?.lastName,
      avatar: oWhoAmI?.avatar,
      email: oWhoAmI?.email,
      googleId: oWhoAmI?.googleId,
      isLocked: oWhoAmI?.isLocked,
      uuid: oWhoAmI?.uuid
    );
    try {
          print("save ${oWhoAmI?.username}");
          await prefs.setString(
            "user_information",
            jsonEncode(userInformation.toJson()),
          );
          return true;
        } catch (e) {
          print(e);
          return false;
        }

  }
  static Future<OWhoAmI> getUserInformation()async{
    var prefs = await _instance;
    try{
      String? user = prefs.getString("user_information");
      UserInformation userInformation = UserInformation.fromJson(jsonDecode(user??""));
      OWhoAmIBuilder oWhoAmIBuilder = OWhoAmIBuilder();
      oWhoAmIBuilder.username = userInformation.username;
      oWhoAmIBuilder.fullName = userInformation.fullName;
      oWhoAmIBuilder.firstName = userInformation.firstName;
      oWhoAmIBuilder.lastName = userInformation.lastName;
      oWhoAmIBuilder.avatar = userInformation.avatar;
      oWhoAmIBuilder.email = userInformation.email;
      oWhoAmIBuilder.googleId = userInformation.googleId;
      oWhoAmIBuilder.isLocked = userInformation.isLocked;
      oWhoAmIBuilder.uuid = userInformation.uuid;
      print("user ${oWhoAmIBuilder.username}");
      return oWhoAmIBuilder.build();
    }
    catch(e){
      print(e);
      print("Looix");
      return OWhoAmI();
    }
  }
  //
  // static Future<bool> saveAccountInformation(OWhoAmI? user) async {
  //   var prefs = await _instance;
  //   bool hasLaborContract = user?.laborContract?.isNotEmpty ?? false;
  //   AccountInformation accountInformation = AccountInformation(
  //     id: user?.id,
  //     uuid:  user?.uuid,
  //     username: user?.username,
  //     fullName: user?.fullName,
  //     phone: user?.phone,
  //     nationalId: user?.nationalId,
  //     birthday: user?.birthday,
  //     sex: user?.sex,
  //     email: user?.email,
  //     accountBalance: user?.accountBalance,
  //     isLock: user?.isLock,
  //     bankId: user?.bankId,
  //     address: user?.address,
  //     role: RoleModel(
  //       id:  user?.role?.id,
  //       name:  user?.role?.name,
  //     ),
  //     bank: BankModelUser(
  //         bankName: user?.bank?.bankName,
  //         bankAccount: user?.bank?.bankAccount,
  //         cardNumber: user?.bank?.cardNumber),
  //     company: CompanyModel(
  //         name: user?.company?.name, address: user?.company?.address,id: user?.company?.id),
  //     laborContract: [LaborContractModel(
  //        number: hasLaborContract ? user?.laborContract?.first.number : null,
  //         status: hasLaborContract ? user?.laborContract?.first.status : null,
  //         link: hasLaborContract ? user?.laborContract?.first.link : null)],
  //     date_of_issue: user?.dateOfIssue,
  //     place_of_issue: user?.placeOfIssue,
  //   );
  //   try {
  //     print("Acc save ${accountInformation.bank?.bankName}");
  //     await prefs.setString(
  //       "account_information",
  //       jsonEncode(accountInformation.toJson()),
  //     );
  //     return true;
  //   } catch (e) {
  //     print(e);
  //     return false;
  //   }
  // }
  //
  // static Future<OWhoAmI> getAccountInformation() async {
  //   var prefs = await _instance;
  //   try {
  //     String? userPrefs = prefs.getString("account_information");
  //     if (userPrefs == null || userPrefs.isEmpty) return OWhoAmI();
  //     AccountInformation accountInformation =
  //         AccountInformation.fromJson(jsonDecode(userPrefs));
  //
  //     BankBuilder bankBuilder = BankBuilder();
  //     bankBuilder.bankName = accountInformation.bank?.bankName;
  //     bankBuilder.bankAccount = accountInformation.bank?.bankAccount;
  //     bankBuilder.cardNumber = accountInformation.bank?.cardNumber;
  //
  //     RoleBuilder roleBuilder = RoleBuilder();
  //     roleBuilder.id = accountInformation.role?.id;
  //     roleBuilder.name = accountInformation.role?.name;
  //
  //     CompanyBuilder companyBuilder = CompanyBuilder();
  //     companyBuilder.name = accountInformation.company?.name;
  //     companyBuilder.address = accountInformation.company?.address;
  //     companyBuilder.id   = accountInformation.company?.id;
  //     LaborContractBuilder laborContractBuilder = LaborContractBuilder();
  //     laborContractBuilder.status = accountInformation.laborContract?[0].status;
  //     laborContractBuilder.link = accountInformation.laborContract?[0].link;
  //     laborContractBuilder.number = accountInformation.laborContract?[0].number;
  //
  //     ListBuilder<LaborContract> listBuilder = ListBuilder();
  //     listBuilder.add(laborContractBuilder.build());
  //
  //   OWhoAmIBuilder builder = OWhoAmIBuilder();
  //     builder.id = accountInformation.id;
  //     builder.uuid = accountInformation.uuid;
  //     builder.username = accountInformation.username;
  //     builder.fullName = accountInformation.fullName;
  //     builder.phone = accountInformation.phone;
  //     builder.nationalId = accountInformation.nationalId;
  //     builder.birthday = accountInformation.birthday;
  //     builder.sex = accountInformation.sex;
  //     builder.email = accountInformation.email;
  //     builder.accountBalance = accountInformation.accountBalance;
  //     builder.isLock = accountInformation.isLock;
  //     builder.bankId = accountInformation.bankId;
  //     builder.address = accountInformation.address;
  //     builder.bank = bankBuilder;
  //     builder.company = companyBuilder;
  //     builder.laborContract = listBuilder;
  //     builder.role = roleBuilder;
  //     builder.dateOfIssue = accountInformation.date_of_issue;
  //     builder.placeOfIssue = accountInformation.place_of_issue;
  //     print("User ${builder.username}");
  //     return builder.build();
  //   } catch (e) {
  //     print(e);
  //     return OWhoAmI();
  //   }
  // }
  // static List<Widget> modelBuilder<M>(
  //     List<M> models, Widget Function(int index, M model) builder) =>
  //     models
  //         .asMap()
  //         .map<int, Widget>(
  //             (index, model) => MapEntry(index, builder(index, model)))
  //         .values
  //         .toList();
  // static Future<OWhoAmI> getAccountInformationFromUser(
  //     AccountInformation acount) async {
  //   var prefs = await _instance;
  //   try {
  //     AccountInformation accountInformation = acount;
  //     OWhoAmIBuilder builder = OWhoAmIBuilder();
  //     builder.id = accountInformation.id;
  //     builder.uuid = accountInformation.uuid;
  //     builder.username = accountInformation.username;
  //     builder.fullName = accountInformation.fullName;
  //     builder.phone = accountInformation.phone;
  //     builder.nationalId = accountInformation.nationalId;
  //     builder.birthday =  accountInformation.birthday;
  //     builder.sex = accountInformation.sex;
  //     builder.email = accountInformation.email;
  //     builder.accountBalance = accountInformation.accountBalance;
  //     builder.isLock = accountInformation.isLock;
  //
  //     // builder.bankId = accountInformation.bankId;
  //     return builder.build();
  //   } catch (e) {
  //     print(e);
  //     return OWhoAmI();
  //   }
  // }

  static Future<bool> saveUserLogin(LoginModel? userModel) async {
    var prefs = await _instance;
    try {
      await prefs.setString(
        "user",
        jsonEncode(userModel?.toJson()),
      );
      return true;
    } catch (e) {
      print(e);
      return false;
    }
  }

  // static Future<LoginModel> getUser() async {
  //   var prefs = await _instance;
  //   try {
  //     String? userPrefs = prefs.getString("user");
  //     if (userPrefs == null || userPrefs.isEmpty) return LoginModel();
  //     LoginModel userModel = LoginModel.fromJson(jsonDecode(userPrefs));
  //     return userModel;
  //   } catch (e) {
  //     print(e);
  //     return LoginModel();
  //   }
  //}

  Future<int> deleteUsers() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.remove("userLogin");
    return 1;
  }
}
