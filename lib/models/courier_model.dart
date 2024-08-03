class CourierModel {
  String nameSurname;
  String secureCode;
  bool isWorking;
  String phoneNumber;
  String courierId;
  String workStartDate;

  CourierModel({
    required this.nameSurname,
    required this.secureCode,
    required this.isWorking,
    required this.phoneNumber,
    required this.courierId,
    required this.workStartDate,
  });

  Map<String, dynamic> toJson() {
    return {
      'nameSurname': nameSurname,
      'secureCode': secureCode,
      'isWorking': isWorking,
      'phoneNumber': phoneNumber,
      'courierId': courierId,
      'workStartDate': workStartDate,
    };
  }

  factory CourierModel.fromJson(Map<String, dynamic> json) {
    return CourierModel(
      nameSurname: json['nameSurname'] as String,
      secureCode: json['secureCode'] as String,
      isWorking: json['isWorking'] as bool,
      phoneNumber: json['phoneNumber'] as String,
      courierId: json['courierId'] as String,
      workStartDate: json['workStartDate'] as String,
    );
  }

  @override
  String toString() =>
      "CourierModel(nameSurname: $nameSurname,secureCode: $secureCode,isWorking: $isWorking,phoneNumber: $phoneNumber,courierId: $courierId,workStartDate: $workStartDate)";

  @override
  int get hashCode => Object.hash(nameSurname, secureCode, isWorking,
      phoneNumber, courierId, workStartDate);

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CourierModel &&
          runtimeType == other.runtimeType &&
          nameSurname == other.nameSurname &&
          secureCode == other.secureCode &&
          isWorking == other.isWorking &&
          phoneNumber == other.phoneNumber &&
          courierId == other.courierId &&
          workStartDate == other.workStartDate;
}
