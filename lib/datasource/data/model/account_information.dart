// {
// "id": 1,
// "uuid": "a4b1f3a4-282d-4a8a-803b-9155101a034d",
// "username": "admin",
// "full_name": "Nguyễn Phương Nam1",
// "phone": "0964712926",
// "national_id": "123454676",
// "birthday": "1999-05-15",
// "sex": "Nam",
// "email": "test1@toprate.io",
// "account_balance": "0",
// "is_lock": 1,
// "created_by": null,
// "deleted_at": null,
// "created_at": null,
// "updated_at": "2022-02-22T06:40:20.000000Z",
// "bank_id": 15,
// "address": "Đông Anh, Hà Nội",
// "date_of_issue": "2019-11-20",
// "place_of_issue": "Công An TPHN",
// "company_id": 4,
// "role": {
// "id": 3,
// "name": "Staff",
// "guard_name": "api",
// "created_at": null,
// "updated_at": null,
// "status": "Active",
// "description": null
// },
// "permission": [],
// "labor_contract": [],
// "bank": [
// {
// "id": 15,
// "bank_name": "Ngân hàng nhà nước và phát triển nông thôn hhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhh <h1>hh</h1>",
// "bank_account": "99999999999",
// "card_number": null,
// "created_by": 1,
// "deleted_at": null,
// "created_at": "2022-02-19T04:31:08.000000Z",
// "updated_at": "2022-02-19T04:31:08.000000Z"
// }
// ]
// }
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:openapi/openapi.dart';

/// id : 1
/// uuid : "a4b1f3a4-282d-4a8a-803b-9155101a034d"
/// username : "admin"
/// full_name : "admin"
/// phone : "0964712946"
/// national_id : "123454677"
/// birthday : "1999-05-02"
/// sex : "Nam"
/// email : "admin@toprate.io"
/// account_balance : "12000000"
/// is_lock : 1
/// created_by : null
/// deleted_at : null
/// created_at : null
/// updated_at : null
/// bank_id : null
/// furlough : [{"id":1,"type":"furlough","content":"Xin nghỉ ốm","from_date":"2022-02-14 00:00:00","to_date":"2022-02-15 00:00:00","status":"approve","company_id":null,"user_id":1,"created_by":1,"deleted_at":null,"created_at":"2022-02-15T14:12:36.000000Z","updated_at":"2022-02-17T11:08:59.000000Z"},{"id":3,"type":"furlough","content":"Xin nghỉ ốm","from_date":"2022-02-14 00:00:00","to_date":"2022-02-15 00:00:00","status":"waiting-for-approval","company_id":null,"user_id":1,"created_by":1,"deleted_at":null,"created_at":"2022-02-18T10:52:57.000000Z","updated_at":"2022-02-18T10:52:57.000000Z"},{"id":4,"type":"furlough","content":"Xin nghỉ ốm","from_date":"2022-02-14 00:00:00","to_date":"2022-02-15 00:00:00","status":"waiting-for-approval","company_id":null,"user_id":1,"created_by":1,"deleted_at":null,"created_at":"2022-02-18T10:54:45.000000Z","updated_at":"2022-02-18T10:54:45.000000Z"},{"id":5,"type":"furlough","content":"Xin nghỉ phép","from_date":"2022-02-14 00:00:00","to_date":"2022-02-15 00:00:00","status":"waiting-for-approval","company_id":null,"user_id":1,"created_by":1,"deleted_at":null,"created_at":"2022-02-18T10:55:16.000000Z","updated_at":"2022-02-18T10:55:16.000000Z"},{"id":6,"type":"furlough","content":"string","from_date":"2022-02-19 00:00:00","to_date":"2022-02-19 00:00:00","status":"waiting-for-approval","company_id":null,"user_id":1,"created_by":1,"deleted_at":null,"created_at":"2022-02-19T01:47:00.000000Z","updated_at":"2022-02-19T01:47:00.000000Z"},{"id":7,"type":"furlough","content":"Xin nghỉ ốm","from_date":"2022-02-14 00:00:00","to_date":"2022-02-15 00:00:00","status":"waiting-for-approval","company_id":null,"user_id":1,"created_by":1,"deleted_at":null,"created_at":"2022-02-19T02:07:07.000000Z","updated_at":"2022-02-19T02:07:07.000000Z"},{"id":8,"type":"furlough","content":"Xin nghỉ ốm","from_date":"2022-02-14 00:00:00","to_date":"2022-02-15 00:00:00","status":"waiting-for-approval","company_id":null,"user_id":1,"created_by":1,"deleted_at":null,"created_at":"2022-02-19T02:54:25.000000Z","updated_at":"2022-02-19T02:54:25.000000Z"},{"id":9,"type":"furlough","content":"Xin nghỉ ốm","from_date":"2022-02-16 00:00:00","to_date":"2022-02-17 00:00:00","status":"waiting-for-approval","company_id":null,"user_id":1,"created_by":1,"deleted_at":null,"created_at":"2022-02-19T03:08:12.000000Z","updated_at":"2022-02-19T03:08:12.000000Z"},{"id":10,"type":"furlough","content":"Xin nghỉ","from_date":"2022-02-16 00:00:00","to_date":"2022-02-17 00:00:00","status":"waiting-for-approval","company_id":null,"user_id":1,"created_by":1,"deleted_at":null,"created_at":"2022-02-19T03:08:32.000000Z","updated_at":"2022-02-19T03:08:32.000000Z"},{"id":11,"type":"furlough","content":"Xin nghỉ việc","from_date":"2022-02-16 00:00:00","to_date":"2022-02-17 00:00:00","status":"waiting-for-approval","company_id":null,"user_id":1,"created_by":1,"deleted_at":null,"created_at":"2022-02-19T03:13:01.000000Z","updated_at":"2022-02-19T03:13:01.000000Z"}]
/// labor_contract : []
Serializers standardSerializers =
    (serializers.toBuilder()..addPlugin(StandardJsonPlugin())).build();

// class AccountInformation {
//   AccountInformation({
//     this.id,
//     this.uuid,
//     this.username,
//     this.fullName,
//     this.phone,
//     this.nationalId,
//     this.birthday,
//     this.sex,
//     this.email,
//     this.accountBalance,
//     this.isLock,
//     this.createdBy,
//     this.deletedAt,
//     this.createdAt,
//     this.updatedAt,
//     this.bankId,
//     this.address,
//     this.date_of_issue,
//     this.place_of_issue,
//     this.furlough,
//     this.laborContract,
//     this.bank,
//     this.company,
//     this.role
//   });
//
//   AccountInformation.fromJson(Map<String, dynamic> json) {
//     id = json['id'];
//     uuid = json['uuid'];
//     username = json['username'];
//     fullName = json['full_name'];
//     phone = json['phone'];
//     nationalId = json['national_id'];
//     birthday = json['birthday'];
//     sex = json['sex'];
//     email = json['email'];
//     accountBalance = json['account_balance'];
//     isLock = json['is_lock'];
//     createdBy = json['created_by'];
//     deletedAt = json['deleted_at'];
//     createdAt = json['created_at'];
//     updatedAt = json['updated_at'];
//     bankId = json['bank_id'];
//     address = json['address'];
//     date_of_issue = json['date_of_issue'];
//     place_of_issue = json['place_of_issue'];
//
//     if (json['furlough'] != null) {
//       furlough = [];
//       json['furlough'].forEach((v) {
//         furlough?.add(Furlough.fromJson(v));
//       });
//     }
//     if (json['bank'] != null) {
//       bank = BankModelUser.fromJson(json['bank']);
//     }
//     if (json['company'] != null) {
//       company = CompanyModel.fromJson(json['company']);
//     }
//     if (json['role'] != null) {
//       role = RoleModel.fromJson(json['role']);
//     }
//     if (json['labor_contract'] != null) {
//       laborContract = [];
//       json['labor_contract'].forEach((v) {
//         laborContract?.add(LaborContractModel.fromJson(v));
//       });
//     }
//   }
//
//   int? id;
//   String? uuid;
//   String? username;
//   String? fullName;
//   String? phone;
//   String? nationalId;
//   String? birthday;
//   String? sex;
//   String? email;
//   String? accountBalance;
//   int? isLock;
//   dynamic createdBy;
//   dynamic deletedAt;
//   dynamic createdAt;
//   dynamic updatedAt;
//   dynamic bankId;
//   String? address;
//   String? date_of_issue;
//   String? place_of_issue;
//   List<Furlough>? furlough;
//   List<LaborContractModel>? laborContract;
//   BankModelUser? bank;
//   CompanyModel? company;
//   RoleModel? role;
//
//   AccountInformation.init(OWhoAmI user) {
//     this.id = user.id;
//     this.uuid = user.uuid;
//     this.username = user.username;
//     this.fullName = user.fullName;
//     this.phone = user.phone;
//     this.nationalId = user.nationalId;
//     this.birthday = "${user.birthday}";
//     this.sex = user.sex;
//     this.email = user.email;
//     this.accountBalance = user.accountBalance;
//     this.isLock = user.isLock;
//     this.bank = BankModelUser(
//         bankName: user.bank?.bankName,
//         bankAccount: user.bank?.bankAccount,
//         cardNumber: user.bank?.cardNumber);
//     this.company =
//         CompanyModel(name: user.company?.name, address: user.company?.address);
//     this.laborContract = [
//       LaborContractModel(
//           status: user.laborContract?.first.status,
//           link: user.laborContract?.first.link)
//     ];
//     this.role = RoleModel(
//       id: user.role?.id,
//       name:  user.role?.name
//     );
//   }
//
//   Map<String, dynamic> toJson() {
//     final map = <String, dynamic>{};
//     map['id'] = id;
//     map['uuid'] = uuid;
//     map['username'] = username;
//     map['full_name'] = fullName;
//     map['phone'] = phone;
//     map['national_id'] = nationalId;
//     map['birthday'] = birthday;
//     map['sex'] = sex;
//     map['email'] = email;
//     map['account_balance'] = accountBalance;
//     map['is_lock'] = isLock;
//     map['created_by'] = createdBy;
//     map['deleted_at'] = deletedAt;
//     map['created_at'] = createdAt;
//     map['updated_at'] = updatedAt;
//     map['bank_id'] = bankId;
//     map['address'] = address;
//     map['date_of_issue'] = date_of_issue;
//     map['place_of_issue'] = place_of_issue;
//
//     if (furlough != null) {
//       map['furlough'] = furlough?.map((v) => v.toJson()).toList();
//     }
//     if (laborContract != null) {
//       map['labor_contract'] = laborContract?.map((v) => v.toJson()).toList();
//     }
//     if (company != null) {
//       map['company'] = company?.toJson();
//     }
//     if (bank != null) {
//       map['bank'] = bank?.toJson();
//     }
//     if(role != null){
//       map['role'] = role?.toJson();
//     }
//     return map;
//   }
// }

/// id : 1
/// type : "furlough"
/// content : "Xin nghỉ ốm"
/// from_date : "2022-02-14 00:00:00"
/// to_date : "2022-02-15 00:00:00"
/// status : "approve"
/// company_id : null
/// user_id : 1
/// created_by : 1
/// deleted_at : null
/// created_at : "2022-02-15T14:12:36.000000Z"
/// updated_at : "2022-02-17T11:08:59.000000Z"

class Furlough {
  Furlough({
    this.id,
    this.type,
    this.content,
    this.fromDate,
    this.toDate,
    this.status,
    this.companyId,
    this.userId,
    this.createdBy,
    this.deletedAt,
    this.createdAt,
    this.updatedAt,
  });

  Furlough.fromJson(dynamic json) {
    type = json['type'];
    content = json['content'];
    fromDate = json['from_date'];
    toDate = json['to_date'];
    status = json['status'];
    companyId = json['company_id'];
    userId = json['user_id'];
    createdBy = json['created_by'];
    deletedAt = json['deleted_at'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  int? id;
  String? type;
  String? content;
  String? fromDate;
  String? toDate;
  String? status;
  dynamic companyId;
  int? userId;
  int? createdBy;
  dynamic deletedAt;
  String? createdAt;
  String? updatedAt;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['type'] = type;
    map['content'] = content;
    map['from_date'] = fromDate;
    map['to_date'] = toDate;
    map['status'] = status;
    map['company_id'] = companyId;
    map['user_id'] = userId;
    map['created_by'] = createdBy;
    map['deleted_at'] = deletedAt;
    map['created_at'] = createdAt;
    map['updated_at'] = updatedAt;
    return map;
  }
}

class BankModelUser {
  int? id;
  String? bankName;
  String? bankAccount;
  String? cardNumber;

  BankModelUser({this.id, this.bankName, this.bankAccount, this.cardNumber});

  BankModelUser.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    bankName = json['bank_name'];
    bankAccount = json['bank_account'];
    cardNumber = json['card_number'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['bank_name'] = this.bankName;
    data['bank_account'] = this.bankAccount;
    data['card_number'] = this.cardNumber;
    return data;
  }
}
class RoleModel {
  int? id;
  String? name;
  String? guardName;
  String? createdAt;
  String? updatedAt;
  String? status;

  RoleModel(
      {this.id,
        this.name,
        this.guardName,
        this.createdAt,
        this.updatedAt,
        this.status,});

  RoleModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    guardName = json['guard_name'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    status = json['status'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['guard_name'] = this.guardName;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    data['status'] = this.status;
    return data;
  }
}

class LaborContractModel {
  int? id;
  String? number;
  String? link;
  String? status;
  int? userId;
  int? companyId;

  LaborContractModel(
      {this.id,
      this.number,
      this.link,
      this.status,
      this.userId,
      this.companyId});

  LaborContractModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    number = json['number'];
    link = json['link'];
    status = json['status'];
    userId = json['user_id'];
    companyId = json['company_id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['number'] = this.number;
    data['link'] = this.link;
    data['status'] = this.status;
    data['user_id'] = this.userId;
    data['company_id'] = this.companyId;
    return data;
  }
}

class CompanyModel {
  int? id;
  String? name;
  int? industrialAreaId;
  String? address;
  String? image;
  String? description;

  CompanyModel(
      {this.id,
      this.name,
      this.industrialAreaId,
      this.address,
      this.image,
      this.description});

  CompanyModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    industrialAreaId = json['industrial_area_id'];
    address = json['address'];
    image = json['image'];
    description = json['description'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['industrial_area_id'] = this.industrialAreaId;
    data['address'] = this.address;
    data['image'] = this.image;
    data['description'] = this.description;
    return data;
  }
}
