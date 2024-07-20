import 'package:haydi_ekspres_dev_tools/models/customer_model.dart';

class LogInCustomerModel {
  String mail;
  String password;
  bool isLoginSuccess;
  String? unSuccessfulReason;
  CustomerModel? customerData;
  String? uid;
  String? accessToken;

  LogInCustomerModel({
    required this.mail,
    required this.password,
    required this.isLoginSuccess,
    this.unSuccessfulReason,
    this.customerData,
    this.uid,
    this.accessToken,
  });

  Map<String, dynamic> toJson() {
    return {
      'mail': mail,
      'password': password,
      'isLoginSuccess': isLoginSuccess,
      'unSuccessfulReason': unSuccessfulReason,
      'uid': uid,
      'customerData': customerData?.toJson(),
      'accessToken': accessToken,
    };
  }

  factory LogInCustomerModel.fromJson(Map<String, dynamic> json) {
    return LogInCustomerModel(
      mail: json['mail'] as String,
      password: json['password'] as String,
      isLoginSuccess: json['isLoginSuccess'] as bool,
      unSuccessfulReason: json['unSuccessfulReason'] as String?,
      uid: json['uid'] as String?,
      customerData: json['customerData'] != null
          ? CustomerModel.fromJson(json['customerData'])
          : null,
      accessToken: json['accessToken'] as String?,
    );
  }

  @override
  String toString() =>
      "LogInCustomerModel(mail: $mail,password: $password,isLoginSuccess: $isLoginSuccess,unSuccessfulReason: $unSuccessfulReason)";

  @override
  int get hashCode =>
      Object.hash(mail, password, isLoginSuccess, unSuccessfulReason);

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is LogInCustomerModel &&
          runtimeType == other.runtimeType &&
          mail == other.mail &&
          password == other.password &&
          isLoginSuccess == other.isLoginSuccess &&
          unSuccessfulReason == other.unSuccessfulReason;
}
