import 'package:haydi_ekspres_dev_tools/models/chat_model.dart';

class ChatRoomModel {
  String roomId;
  String customerId;
  String customerName;
  String helperId;
  String helperName;
  bool isConversationStarterHelper;
  String roomCreationDate;
  bool isRoomClosed;
  List<ChatModel> content;

  ChatRoomModel({
    required this.roomId,
    required this.customerId,
    required this.customerName,
    required this.helperId,
    required this.helperName,
    required this.isConversationStarterHelper,
    required this.roomCreationDate,
    required this.isRoomClosed,
    required this.content,
  });

  Map<String, dynamic> toJson() {
    return {
      'roomId': roomId,
      'customerId': customerId,
      'customerName': customerName,
      'helperId': helperId,
      'helperName': helperName,
      'isConversationStarterHelper': isConversationStarterHelper,
      'roomCreationDate': roomCreationDate,
      'isRoomClosed': isRoomClosed,
      'content': content.map((e) => e.toJson()).toList(),
    };
  }

  factory ChatRoomModel.fromJson(Map<String, dynamic> json) {
    return ChatRoomModel(
      roomId: json['roomId'] as String,
      customerId: json['customerId'] as String,
      customerName: json['customerName'] as String,
      helperId: json['helperId'] as String,
      helperName: json['helperName'] as String,
      isConversationStarterHelper: json['isConversationStarterHelper'] as bool,
      roomCreationDate: json['roomCreationDate'] as String,
      isRoomClosed: json['isRoomClosed'] as bool,
      content: (json['content'] as List<dynamic>)
          .map((e) => ChatModel.fromJson(e))
          .toList(),
    );
  }

  @override
  String toString() =>
      "ChatRoomModel(roomId: $roomId,customerId: $customerId,customerName: $customerName,helperId: $helperId,helperName: $helperName,isConversationStarterHelper: $isConversationStarterHelper,roomCreationDate: $roomCreationDate,isRoomClosed: $isRoomClosed,content: $content)";

  @override
  int get hashCode => Object.hash(
        roomId,
        customerId,
        customerName,
        helperId,
        helperName,
        isConversationStarterHelper,
        roomCreationDate,
        isRoomClosed,
        content,
      );

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ChatRoomModel &&
          runtimeType == other.runtimeType &&
          roomId == other.roomId &&
          customerId == other.customerId &&
          customerName == other.customerName &&
          helperId == other.helperId &&
          helperName == other.helperName &&
          isConversationStarterHelper == other.isConversationStarterHelper &&
          roomCreationDate == other.roomCreationDate &&
          isRoomClosed == other.isRoomClosed &&
          content == other.content;
}
