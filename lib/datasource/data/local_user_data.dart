import 'package:flutter/cupertino.dart';
import 'package:toprate_hrm/common/utils/preference_utils.dart';
import 'package:toprate_hrm/datasource/data/model/account_information.dart';
import 'package:toprate_hrm/datasource/data/model/response/login_model.dart';
import 'package:openapi/openapi.dart';

class LocalUserData {
  static final LocalUserData _singleton = LocalUserData._internal();

  factory LocalUserData() => _singleton;

  LocalUserData._internal();

  static LocalUserData get getInstance => _singleton;
  String? deviceToken;
  String? userName;
  String? firstName;
  String? partnerPhoneNumber;
  String? imgUrl;
  String? partnerName;
  String accessToken = '';
  String? refreshToken = '';
  String? deviceID = '';
  String? defaultLanguage = /*"En"*/ "VI";
  var user ;

  LoginModel getInfoResponse = LoginModel();

  Future<OWhoAmI> getAccountInformation() async {
    return await PreferenceUtils.getUserInformation();
  }

   getUserData() async {
     deviceID = await  PreferenceUtils.getString('device_id');
     print("DEvice ID ${deviceID}");
    user =  await PreferenceUtils.getUserInformation();
  }


  Future<void> saveInformationAccount(OWhoAmI userSave) async {
    user = userSave;
    PreferenceUtils.saveAccount(userSave);
  }

  Future saveDeviceId({String? deviceID}) async {
    return PreferenceUtils.setString('device_id', deviceID ?? '');
  }
  Future<void >saveToken(String? accessTokenNew) async {
    accessToken = accessTokenNew??"";
    PreferenceUtils.setString("access_token", accessTokenNew ?? "");
  }

  //Save Refresh Token
  Future<void>saveRefreshToken(String? refreshTokenNew) async {
    refreshToken = refreshToken??"";
    PreferenceUtils.setString("refresh_token", refreshTokenNew ?? "");
  }
}
