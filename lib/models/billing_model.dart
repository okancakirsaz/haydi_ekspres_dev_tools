class BillingModel {
  String date;
  String businessId;
  num amount;

  BillingModel({
    required this.date,
    required this.businessId,
    required this.amount,
  });

  Map<String, dynamic> toJson() {
    return {
      'date': date,
      'businessId': businessId,
      'amount': amount,
    };
  }

  factory BillingModel.fromJson(Map<String, dynamic> json) {
    return BillingModel(
      date: json['date'] as String,
      businessId: json['businessId'] as String,
      amount: json['amount'] as num,
    );
  }

  @override
  String toString() =>
      "BillingModel(date: $date,businessId: $businessId,amount: $amount)";

  @override
  int get hashCode => Object.hash(date, businessId, amount);

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is BillingModel &&
          runtimeType == other.runtimeType &&
          date == other.date &&
          businessId == other.businessId &&
          amount == other.amount;
}
