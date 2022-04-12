import 'package:equatable/equatable.dart';

class CreateApplication extends Equatable{

  CreateApplication({
    this.clientId,
    required this.clientName,
    this.email,
    this.mobile,
    this.phone,
    this.fax,
    this.contact,
    this.address1,
    this.qualityOfInvoice,
    this.totalBilled,
  });
  String? clientId;
  String? clientName;
  String? email;
  String? mobile;
  String? phone;
  String? fax;
  String? contact;
  String? address1;
  int? qualityOfInvoice;
  int? totalBilled;

  CreateApplication.fromJson(Map<String, dynamic> json) {
    clientId = json['_id'];
    clientName = json['client_name'];
    email = json['email'];
    mobile = json['mobile'];
    phone = json['phone'];
    fax = json['fax'];
    contact = json['contact'];
    address1 = json['address1'];
    qualityOfInvoice = json['quality_of_invoice'];
    totalBilled = json['total_billed'];
  }

  Map<String, dynamic> toCreateApplicationJson() {
    final _data = <String, dynamic>{};
    _data['client_name'] = clientName;
    _data['email'] = email;
    _data['mobile'] = mobile;
    _data['phone'] = phone;
    _data['fax'] = fax;
    _data['contact'] = contact;
    _data['address1'] = address1;
    _data['quality_of_invoice'] = qualityOfInvoice;
    _data['total_billed'] = totalBilled;
    return _data;
  }
  @override
  // TODO: implement props
  List<Object?> get props => throw UnimplementedError();

}