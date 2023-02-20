import 'package:flutter_starter_template/data/responses/base_response.dart';

class AuthenticationResponse extends BaseResponse {
  CustomerResponse? customer;
  ContactsResponse? contacts;

  AuthenticationResponse(this.customer, this.contacts);

  factory AuthenticationResponse.fromJson(Map<String, dynamic> json) => AuthenticationResponse(
      json['customer'] == null ? null : CustomerResponse.fromJson(json['customer'] as Map<String, dynamic>),
      json['contacts'] == null ? null : ContactsResponse.fromJson(json['contacts'] as Map<String, dynamic>))
    ..status = json['status'] as int?
    ..message = json['message'] as String?;
}

class CustomerResponse {
  String? id;
  String? name;
  int? numOfNotifications;

  CustomerResponse(this.id, this.name, this.numOfNotifications);

  factory CustomerResponse.fromJson(Map<String, dynamic> json) =>
      CustomerResponse(json['id'] as String?, json['name'] as String?, json['numOfNotifications'] as int?);
}

class ContactsResponse {
  String? email;
  String? phone;
  String? link;

  ContactsResponse(this.email, this.phone, this.link);

  factory ContactsResponse.fromJson(Map<String, dynamic> json) =>
      ContactsResponse(json['email'] as String?, json['phone'] as String?, json['link'] as String?);
}
