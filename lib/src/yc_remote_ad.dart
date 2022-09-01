class YcRemoteAd {
  final int? interstitialAdIntervalSec;
  final int? rewardAdIntervalSec;

  const YcRemoteAd({this.interstitialAdIntervalSec, this.rewardAdIntervalSec});

  factory YcRemoteAd.fromJson(Map<String, dynamic> json) => YcRemoteAd(
      interstitialAdIntervalSec: json["interstitialAdIntervalSec"] ?? 120,
      rewardAdIntervalSec: json["rewardAdIntervalSec"] ?? 120);

  Map<String, dynamic> toJson() => {
        "interstitialAdIntervalSec": interstitialAdIntervalSec,
        "rewardAdIntervalSec": rewardAdIntervalSec
      };
}
