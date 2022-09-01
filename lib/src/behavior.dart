class Behavior {
  final int? lastSignDate;
  final int? continuitySignTimes;
  final int? lastAppPraiseDate;
  final bool? isContinuity3RewardEnable;
  final bool? isContinuity7RewardEnable;
  final bool? isContinuity30RewardEnable;
  final bool? isContinuity365RewardEnable;

  const Behavior(
      {this.lastSignDate,
      this.continuitySignTimes,
      this.lastAppPraiseDate,
      this.isContinuity3RewardEnable,
      this.isContinuity7RewardEnable,
      this.isContinuity30RewardEnable,
      this.isContinuity365RewardEnable});

  factory Behavior.fromJson(Map<String, dynamic> json) => Behavior(
      lastSignDate: json["last_sign_date"] ?? 0,
      continuitySignTimes: json["continuity_sign_times"] ?? 0,
      lastAppPraiseDate: json["last_app_praise_date"] ?? 0,
      isContinuity3RewardEnable: json["is_continuity_3_reward_enable"] ?? false,
      isContinuity7RewardEnable: json["is_continuity_7_reward_enable"] ?? false,
      isContinuity30RewardEnable:
          json["is_continuity_30_reward_enable"] ?? false,
      isContinuity365RewardEnable:
          json["is_continuity_365_reward_enable"] ?? false);

  Map<String, dynamic> toJson() => {
        "last_sign_date": lastSignDate,
        "continuity_sign_times": continuitySignTimes,
        "last_app_praise_date": lastAppPraiseDate,
        "is_continuity_3_reward_enable": isContinuity3RewardEnable,
        "is_continuity_7_reward_enable": isContinuity7RewardEnable,
        "is_continuity_30_reward_enable": isContinuity30RewardEnable,
        "is_continuity_365_reward_enable": isContinuity365RewardEnable
      };
}
