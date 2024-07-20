class ChatLinkModel {
  String name;
  String id;

  ChatLinkModel({
    required this.name,
    required this.id,
  });

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'id': id,
    };
  }

  factory ChatLinkModel.fromJson(Map<String, dynamic> json) {
    return ChatLinkModel(
      name: json['name'] as String,
      id: json['id'] as String,
    );
  }

  @override
  String toString() => "ChatLinkModel(name: $name,id: $id)";

  @override
  int get hashCode => Object.hash(name, id);

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ChatLinkModel &&
          runtimeType == other.runtimeType &&
          name == other.name &&
          id == other.id;
}
