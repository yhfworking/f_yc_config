import 'package:f_yc_config/f_yc_config.dart';
import 'package:get_storage/get_storage.dart';

class FYcConfigPangleConfig extends FYcConfigBaseConfig {
  FYcConfigPangleConfig({
    String? appId,
    String? splashAdId,
    String? interstitialAdId,
    String? rewardAdId,
    String? bannerAdId,
    String? profileBannerAdId,
    String? welfareReBannerAdId,
    int? interstitialAdIntervalSec,
    int? rewardAdIntervalSec,
    String configId = GLOBAL_CONFIG_ID,
  })  : _appId = appId,
        _splashAdId = splashAdId,
        _interstitialAdId = interstitialAdId,
        _rewardAdId = rewardAdId,
        _bannerAdId = bannerAdId,
        _profileBannerAdId = profileBannerAdId,
        _welfareReBannerAdId = welfareReBannerAdId,
        _interstitialAdIntervalSec = interstitialAdIntervalSec,
        _rewardAdIntervalSec = rewardAdIntervalSec,
        super(configId: configId);

  String? _appId;
  String? _splashAdId;
  String? _interstitialAdId;
  String? _rewardAdId;
  String? _bannerAdId;
  String? _profileBannerAdId;
  String? _welfareReBannerAdId;
  int? _interstitialAdIntervalSec;
  int? _rewardAdIntervalSec;

  String get appId =>
      _appId ?? FYcConfigDefaultConfigUtils.defaultPangleConfig.appId;

  String get splashAdId =>
      _splashAdId ?? FYcConfigDefaultConfigUtils.defaultPangleConfig.splashAdId;

  String get interstitialAdId =>
      _interstitialAdId ??
      FYcConfigDefaultConfigUtils.defaultPangleConfig.interstitialAdId;

  String get rewardAdId =>
      _rewardAdId ?? FYcConfigDefaultConfigUtils.defaultPangleConfig.rewardAdId;

  String get bannerAdId =>
      _bannerAdId ?? FYcConfigDefaultConfigUtils.defaultPangleConfig.bannerAdId;

  String get profileBannerAdId =>
      _profileBannerAdId ??
      FYcConfigDefaultConfigUtils.defaultPangleConfig.profileBannerAdId;

  String get welfareReBannerAdId =>
      _welfareReBannerAdId ??
      FYcConfigDefaultConfigUtils.defaultPangleConfig.welfareReBannerAdId;

  int get interstitialAdIntervalSec =>
      _interstitialAdIntervalSec ??
      FYcConfigDefaultConfigUtils.defaultPangleConfig.interstitialAdIntervalSec;

  int get rewardAdIntervalSec =>
      _rewardAdIntervalSec ??
      FYcConfigDefaultConfigUtils.defaultPangleConfig.rewardAdIntervalSec;

  bool isInterstitialAdEnableShow() {
    if (interstitialAdIntervalSec == 0) {
      return true;
    }
    int lastInterstitialAdShowTimestamp = GetStorage()
            .read('sk_f_yc_config_last_interstitial_ad_show_timestamp') ??
        0;
    int diffMs = (DateTime.now().millisecondsSinceEpoch -
            lastInterstitialAdShowTimestamp)
        .abs();
    if (diffMs > interstitialAdIntervalSec * 1000) {
      return true;
    }
    return false;
  }

  bool isRewardAdEnableShow() {
    if (rewardAdIntervalSec == 0) {
      return true;
    }
    int lastInterstitialAdShowTimestamp =
        GetStorage().read('sk_f_yc_config_last_reward_ad_show_timestamp') ?? 0;
    int diffMs = (DateTime.now().millisecondsSinceEpoch -
            lastInterstitialAdShowTimestamp)
        .abs();
    if (diffMs > rewardAdIntervalSec * 1000) {
      return true;
    }
    return false;
  }

  @override
  void initConfig(
    String configId, {
    FYcConfigCommonConfig? currentLevelCommonConfig,
  }) {
    super.initConfig(
      configId,
      currentLevelCommonConfig: currentLevelCommonConfig,
    );
    FYcConfigPangleConfig pangleConfig = FYcConfigConfigurator.instance
        .getConfig(configId: configId)
        .pangleConfig;

    _appId ??= pangleConfig._appId;
    _splashAdId ??= pangleConfig._splashAdId;
    _interstitialAdId ??= pangleConfig._interstitialAdId;
    _rewardAdId ??= pangleConfig._rewardAdId;
    _bannerAdId ??= pangleConfig._bannerAdId;
    _profileBannerAdId ??= pangleConfig._profileBannerAdId;
    _welfareReBannerAdId ??= pangleConfig._welfareReBannerAdId;
    _interstitialAdIntervalSec ??= pangleConfig._interstitialAdIntervalSec;
    _rewardAdIntervalSec ??= pangleConfig._rewardAdIntervalSec;
  }

  FYcConfigPangleConfig copyWith(
      {String? appId,
      String? splashAdId,
      String? interstitialAdId,
      String? rewardAdId,
      String? bannerAdId,
      String? profileBannerAdId,
      String? welfareReBannerAdId,
      int? interstitialAdIntervalSec,
      int? rewardAdIntervalSec}) {
    return FYcConfigPangleConfig(
        appId: appId ?? _appId,
        splashAdId: splashAdId ?? _splashAdId,
        interstitialAdId: interstitialAdId ?? _interstitialAdId,
        rewardAdId: rewardAdId ?? _rewardAdId,
        bannerAdId: bannerAdId ?? _bannerAdId,
        profileBannerAdId: profileBannerAdId ?? _profileBannerAdId,
        welfareReBannerAdId: welfareReBannerAdId ?? _welfareReBannerAdId,
        interstitialAdIntervalSec:
            interstitialAdIntervalSec ?? _interstitialAdIntervalSec,
        rewardAdIntervalSec: rewardAdIntervalSec ?? _rewardAdIntervalSec);
  }

  FYcConfigPangleConfig merge(FYcConfigPangleConfig? other) {
    if (other == null) return this;
    return copyWith(
        appId: other._appId,
        splashAdId: other._splashAdId,
        interstitialAdId: other._interstitialAdId,
        rewardAdId: other._rewardAdId,
        bannerAdId: other._bannerAdId,
        profileBannerAdId: other._profileBannerAdId,
        welfareReBannerAdId: other._welfareReBannerAdId,
        interstitialAdIntervalSec: other._interstitialAdIntervalSec,
        rewardAdIntervalSec: other._rewardAdIntervalSec);
  }
}
