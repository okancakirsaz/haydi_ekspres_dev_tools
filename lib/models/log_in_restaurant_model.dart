import 'package:haydi_ekspres_dev_tools/haydi_ekspres_dev_tools.dart';

class LogInRestaurantModel {
  String mail;
  String password;
  bool isLoginSuccess;
  String? unSuccessfulReason;
  RestaurantModel? restaurantData;
  String? uid;
  String? accessToken;

  LogInRestaurantModel({
    required this.mail,
    required this.password,
    required this.isLoginSuccess,
    this.unSuccessfulReason,
    this.restaurantData,
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
      'restaurantData': restaurantData?.toJson(),
      'accessToken': accessToken,
    };
  }

  factory LogInRestaurantModel.fromJson(Map<String, dynamic> json) {
    return LogInRestaurantModel(
      mail: json['mail'] as String,
      password: json['password'] as String,
      isLoginSuccess: json['isLoginSuccess'] as bool,
      unSuccessfulReason: json['unSuccessfulReason'] as String?,
      uid: json['uid'] as String?,
      restaurantData: json['restaurantData'] != null
          ? RestaurantModel.fromJson(json['restaurantData'])
          : null,
      accessToken: json['accessToken'] as String?,
    );
  }

  @override
  String toString() =>
      "LogInRestaurantModel(mail: $mail,password: $password,isLoginSuccess: $isLoginSuccess,unSuccessfulReason: $unSuccessfulReason)";

  @override
  int get hashCode =>
      Object.hash(mail, password, isLoginSuccess, unSuccessfulReason);

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is LogInRestaurantModel &&
          runtimeType == other.runtimeType &&
          mail == other.mail &&
          password == other.password &&
          isLoginSuccess == other.isLoginSuccess &&
          unSuccessfulReason == other.unSuccessfulReason;
}
