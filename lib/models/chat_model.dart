import 'package:haydi_ekspres_dev_tools/models/chat_link_model.dart';

class ChatModel {
  String owner;
  String roomId;
  String content;
  ChatLinkModel? link;

  ChatModel({
    required this.owner,
    required this.roomId,
    required this.content,
    required this.link,
  });

  Map<String, dynamic> toJson() {
    return {
      'owner': owner,
      'roomId': roomId,
      'content': content,
      'link': link?.toJson(),
    };
  }

  factory ChatModel.fromJson(Map<String, dynamic> json) {
    return ChatModel(
      owner: json['owner'] as String,
      roomId: json['roomId'] as String,
      content: json['content'] as String,
      link: json['link'] != null ? ChatLinkModel.fromJson(json['link']) : null,
    );
  }

  @override
  String toString() =>
      "ChatModel(owner: $owner,roomId: $roomId,content: $content,link: $link)";

  @override
  int get hashCode => Object.hash(owner, roomId, content, link);

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ChatModel &&
          runtimeType == other.runtimeType &&
          owner == other.owner &&
          roomId == other.roomId &&
          content == other.content &&
          link == other.link;
}
