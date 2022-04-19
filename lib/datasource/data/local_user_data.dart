import 'package:toprate_hrm/common/utils/preference_utils.dart';
import 'package:toprate_hrm/datasource/data/model/account_information.dart';
import 'package:toprate_hrm/datasource/data/model/response/login_model.dart';
import 'package:openapi/openapi.dart';

class LocalUserData {
  static final LocalUserData _singleton = LocalUserData._internal();

  factory LocalUserData() => _singleton;

  LocalUserData._internal();

  static LocalUserData get getInstance => _singleton;

  String? partnerPhoneNumber;
  String? imgUrl;
  String? partnerName;
  String accessToken = '';
  String? refreshToken = '';
  String? deviceID = '';
  String? defaultLanguage = /*"En"*/ "VI";
  var user ;

  LoginModel getInfoResponse = LoginModel();

  // Future<OWhoAmI> getAccountInformation() async {
  //   return await PreferenceUtils.getAccountInformation();
  // }

  //  getUserData() async {
  //    deviceID = await  PreferenceUtils.getString('device_id');
  //    print("DEvice ID ${deviceID}");
  //   user =  await PreferenceUtils.getAccountInformation();
  // }
  //
  // Future<OWhoAmI> getAccountInformationFromAcount(
  //     AccountInformation acount) async {
  //   return await PreferenceUtils.getAccountInformationFromUser(acount);
  // }
  //
  // Future<void> saveInformationAcount(OWhoAmI userSave) async {
  //   user = userSave;
  //   PreferenceUtils.saveAccountInformation(userSave);
  // }

  Future saveDeviceId({String? deviceID}) async {
    return PreferenceUtils.setString('device_id', deviceID ?? '');
  }

}
