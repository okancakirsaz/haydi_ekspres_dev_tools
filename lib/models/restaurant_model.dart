import 'package:haydi_ekspres_dev_tools/models/address_model.dart';
import 'package:haydi_ekspres_dev_tools/models/models_index.dart';
import 'package:haydi_ekspres_dev_tools/models/work_hours_model.dart';

class RestaurantModel {
  String ownerName;
  String ownerSurname;
  String phoneNumber;
  String businessName;
  String email;
  String password;
  WorkHoursModel workHours;
  String taxNumber;
  bool isMailVerified;
  AddressModel address;
  bool wantDeliveryFromUs;
  String ibanNumber;
  String bankName;
  String bankAccountOwner;
  CardModel payment;
  String accountCreationDate;
  bool isPoliciesAccepted;
  String uid;
  String? nextPaymentDate;
  String? lastPaymentDate;
  num bills;
  bool isAccountBanned;

  RestaurantModel({
    required this.ownerName,
    required this.payment,
    required this.ownerSurname,
    required this.phoneNumber,
    required this.businessName,
    required this.email,
    required this.accountCreationDate,
    required this.password,
    required this.taxNumber,
    required this.isMailVerified,
    required this.address,
    required this.workHours,
    required this.wantDeliveryFromUs,
    required this.ibanNumber,
    required this.bankName,
    required this.bankAccountOwner,
    required this.isPoliciesAccepted,
    required this.uid,
    required this.bills,
    this.nextPaymentDate,
    this.lastPaymentDate,
    required this.isAccountBanned,
  });

  Map<String, dynamic> toJson() {
    return {
      'ownerName': ownerName,
      'ownerSurname': ownerSurname,
      'phoneNumber': phoneNumber,
      'businessName': businessName,
      'email': email,
      'password': password,
      'taxNumber': taxNumber,
      'isMailVerified': isMailVerified,
      'address': address.toJson(),
      'wantDeliveryFromUs': wantDeliveryFromUs,
      'workHours': workHours.toJson(),
      'ibanNumber': ibanNumber,
      'bankName': bankName,
      'bankAccountOwner': bankAccountOwner,
      'payment': payment.toJson(),
      'accountCreationDate': accountCreationDate,
      'isPoliciesAccepted': isPoliciesAccepted,
      'uid': uid,
      'nextPaymentDate': nextPaymentDate,
      'lastPaymentDate': lastPaymentDate,
      'bills': bills,
      'isAccountBanned': isAccountBanned,
    };
  }

  factory RestaurantModel.fromJson(Map<String, dynamic> json) {
    return RestaurantModel(
      accountCreationDate: json['accountCreationDate'] as String,
      ownerName: json['ownerName'] as String,
      ownerSurname: json['ownerSurname'] as String,
      phoneNumber: json['phoneNumber'] as String,
      businessName: json['businessName'] as String,
      email: json['email'] as String,
      workHours: WorkHoursModel.fromJson(json['workHours']),
      password: json['password'] as String,
      taxNumber: json['taxNumber'] as String,
      isMailVerified: json['isMailVerified'] as bool,
      address: AddressModel.fromJson(json['address']),
      wantDeliveryFromUs: json['wantDeliveryFromUs'] as bool,
      ibanNumber: json['ibanNumber'] as String,
      bankName: json['bankName'] as String,
      bankAccountOwner: json['bankAccountOwner'] as String,
      payment: CardModel.fromJson(json['payment']),
      isPoliciesAccepted: json['isPoliciesAccepted'] as bool,
      uid: json['uid'] as String,
      bills: json['bills'] as num,
      nextPaymentDate: json['nextPaymentDate'] as String?,
      lastPaymentDate: json['lastPaymentDate'] as String?,
      isAccountBanned: json['isAccountBanned'] as bool,
    );
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is RestaurantModel &&
          runtimeType == other.runtimeType &&
          ownerName == other.ownerName &&
          ownerSurname == other.ownerSurname &&
          phoneNumber == other.phoneNumber &&
          businessName == other.businessName &&
          email == other.email &&
          password == other.password &&
          taxNumber == other.taxNumber &&
          isMailVerified == other.isMailVerified &&
          address == other.address &&
          wantDeliveryFromUs == other.wantDeliveryFromUs &&
          ibanNumber == other.ibanNumber &&
          bankName == other.bankName &&
          bankAccountOwner == other.bankAccountOwner &&
          isPoliciesAccepted == other.isPoliciesAccepted &&
          uid == other.uid;
}
