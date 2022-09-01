class YcUser {
  final String? userId;
  final String? nickname;
  final String? avatar;

  const YcUser({
    this.userId,
    this.nickname,
    this.avatar,
  });

  factory YcUser.fromJson(Map<String, dynamic> json) => YcUser(
        userId: json["userId"] ?? '',
        nickname: json["nickname"] ?? '',
        avatar: json["avatar"] ?? '',
      );

  Map<String, dynamic> toJson() =>
      {"userId": userId, "nickname": nickname, "avatar": avatar};
}
