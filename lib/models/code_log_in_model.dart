class CodeLogInModel {
  String code;
  String? userId;
  String? accessToken;

  CodeLogInModel({
    required this.code,
    this.userId,
    this.accessToken,
  });

  Map<String, dynamic> toJson() {
    return {
      'code': code,
      'userId': userId,
      'accessToken': accessToken,
    };
  }

  factory CodeLogInModel.fromJson(Map<String, dynamic> json) {
    return CodeLogInModel(
      code: json['code'] as String,
      userId: json['userId'] as String?,
      accessToken: json['accessToken'] as String?,
    );
  }

  @override
  String toString() => "CodeLogInModel(code: $code)";

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CodeLogInModel &&
          runtimeType == other.runtimeType &&
          code == other.code;
}
