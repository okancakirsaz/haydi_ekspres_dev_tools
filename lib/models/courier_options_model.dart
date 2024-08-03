class CourierOptionsModel {
  num revenuePerPackage;

  CourierOptionsModel({
    required this.revenuePerPackage,
  });

  Map<String, dynamic> toJson() {
    return {
      'revenuePerPackage': revenuePerPackage,
    };
  }

  factory CourierOptionsModel.fromJson(Map<String, dynamic> json) {
    return CourierOptionsModel(
      revenuePerPackage: json['revenuePerPackage'] as num,
    );
  }
}
