class CommentModel {
  String comment;
  String restaurantId;
  String menuId;
  String customerId;
  int like;

  CommentModel({
    required this.comment,
    required this.like,
    required this.menuId,
    required this.customerId,
    required this.restaurantId,
  });

  Map<String, dynamic> toJson() {
    return {
      'comment': comment,
      'menuId': menuId,
      'customerId': customerId,
      'restaurantId': restaurantId,
      'like': like,
    };
  }

  factory CommentModel.fromJson(Map<String, dynamic> json) {
    return CommentModel(
      comment: json['comment'] as String,
      menuId: json['menuId'] as String,
      customerId: json['customerId'] as String,
      restaurantId: json['restaurantId'] as String,
      like: json['like'] as int,
    );
  }

  @override
  String toString() => "CommentModel(comment: $comment,like: $like)";

  @override
  int get hashCode => Object.hash(comment, like);

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CommentModel &&
          runtimeType == other.runtimeType &&
          comment == other.comment &&
          like == other.like;
}
