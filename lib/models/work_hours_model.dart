class WorkHoursModel {
  int startHour;
  int startMinute;
  int endHour;
  int endMinute;

  WorkHoursModel({
    required this.startHour,
    required this.startMinute,
    required this.endHour,
    required this.endMinute,
  });

  Map<String, dynamic> toJson() {
    return {
      'startHour': startHour,
      'startMinute': startMinute,
      'endHour': endHour,
      'endMinute': endMinute,
    };
  }

  factory WorkHoursModel.fromJson(Map<String, dynamic> json) {
    return WorkHoursModel(
      startHour: json['startHour'] as int,
      startMinute: json['startMinute'] as int,
      endHour: json['endHour'] as int,
      endMinute: json['endMinute'] as int,
    );
  }

  @override
  String toString() =>
      "WorkHoursModel(startHour: $startHour,startMinute: $startMinute,endHour: $endHour,endMinute: $endMinute)";

  @override
  int get hashCode => Object.hash(startHour, startMinute, endHour, endMinute);

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is WorkHoursModel &&
          runtimeType == other.runtimeType &&
          startHour == other.startHour &&
          startMinute == other.startMinute &&
          endHour == other.endHour &&
          endMinute == other.endMinute;
}
