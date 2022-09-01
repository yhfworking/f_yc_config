class User {
  final String? userId;
  final String? nickname;
  final String? avatar;

  const User({
    this.userId,
    this.nickname,
    this.avatar,
  });

  factory User.fromJson(Map<String, dynamic> json) => User(
        userId: json["userId"] ?? '',
        nickname: json["nickname"] ?? '',
        avatar: json["avatar"] ?? '',
      );

  Map<String, dynamic> toJson() =>
      {"userId": userId, "nickname": nickname, "avatar": avatar};
}
