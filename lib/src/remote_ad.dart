class RemoteAd {
  final int? interstitialAdIntervalSec;
  final int? rewardAdIntervalSec;

  const RemoteAd({this.interstitialAdIntervalSec, this.rewardAdIntervalSec});

  factory RemoteAd.fromJson(Map<String, dynamic> json) => RemoteAd(
      interstitialAdIntervalSec: json["interstitialAdIntervalSec"] ?? 120,
      rewardAdIntervalSec: json["rewardAdIntervalSec"] ?? 120);

  Map<String, dynamic> toJson() => {
        "interstitialAdIntervalSec": interstitialAdIntervalSec,
        "rewardAdIntervalSec": rewardAdIntervalSec
      };
}
