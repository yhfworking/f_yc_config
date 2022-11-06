import 'package:f_yc_config/f_yc_config.dart';

class FYcConfigStoragesConfig extends FYcConfigBaseConfig {
  FYcConfigStoragesConfig({
    String? isInitKey,
    String? userTokenKey,
    String? userTokenExpiredKey,
    String? userInfoKey,
    String? walletInfoKey,
    String? behaviorInfoKey,
    String? remoteConfigKey,
    String? isSignPrivacyPolicyKey,
    String? lastRemoteConfigTimestampKey,
    String? lastInterstitialAdShowTimestampKey,
    String? lastRewardAdShowTimestampKey,
    String? rewardAmountKey,
    String configId = GLOBAL_CONFIG_ID,
  })  : _isInitKey = isInitKey,
        _userTokenKey = userTokenKey,
        _userTokenExpiredKey = userTokenExpiredKey,
        _userInfoKey = userInfoKey,
        _walletInfoKey = walletInfoKey,
        _behaviorInfoKey = behaviorInfoKey,
        _remoteConfigKey = remoteConfigKey,
        _isSignPrivacyPolicyKey = isSignPrivacyPolicyKey,
        _lastRemoteConfigTimestampKey = lastRemoteConfigTimestampKey,
        _lastInterstitialAdShowTimestampKey =
            lastInterstitialAdShowTimestampKey,
        _lastRewardAdShowTimestampKey = lastRewardAdShowTimestampKey,
        _rewardAmountKey = rewardAmountKey,
        super(configId: configId);
  String? _isInitKey;
  String? _userTokenKey;
  String? _userTokenExpiredKey;
  String? _userInfoKey;
  String? _walletInfoKey;
  String? _behaviorInfoKey;
  String? _remoteConfigKey;
  String? _isSignPrivacyPolicyKey;
  String? _lastRemoteConfigTimestampKey;
  String? _lastInterstitialAdShowTimestampKey;
  String? _lastRewardAdShowTimestampKey;
  String? _rewardAmountKey;

  String get isInitKey =>
      _isInitKey ?? FYcConfigDefaultConfigUtils.defaultStoragesConfig.isInitKey;

  String get userTokenKey =>
      _userTokenKey ??
      FYcConfigDefaultConfigUtils.defaultStoragesConfig.userTokenKey;

  String get userTokenExpiredKey =>
      _userTokenExpiredKey ??
      FYcConfigDefaultConfigUtils.defaultStoragesConfig.userTokenExpiredKey;

  String get userInfoKey =>
      _userInfoKey ??
      FYcConfigDefaultConfigUtils.defaultStoragesConfig.userInfoKey;

  String get walletInfoKey =>
      _walletInfoKey ??
      FYcConfigDefaultConfigUtils.defaultStoragesConfig.walletInfoKey;

  String get behaviorInfoKey =>
      _behaviorInfoKey ??
      FYcConfigDefaultConfigUtils.defaultStoragesConfig.behaviorInfoKey;

  String get remoteConfigKey =>
      _remoteConfigKey ??
      FYcConfigDefaultConfigUtils.defaultStoragesConfig.remoteConfigKey;

  String get isSignPrivacyPolicyKey =>
      _isSignPrivacyPolicyKey ??
      FYcConfigDefaultConfigUtils.defaultStoragesConfig.isSignPrivacyPolicyKey;

  String get lastRemoteConfigTimestampKey =>
      _lastRemoteConfigTimestampKey ??
      FYcConfigDefaultConfigUtils
          .defaultStoragesConfig.lastRemoteConfigTimestampKey;

  String get lastInterstitialAdShowTimestampKey =>
      _lastInterstitialAdShowTimestampKey ??
      FYcConfigDefaultConfigUtils
          .defaultStoragesConfig.lastInterstitialAdShowTimestampKey;

  String get lastRewardAdShowTimestampKey =>
      _lastRewardAdShowTimestampKey ??
      FYcConfigDefaultConfigUtils
          .defaultStoragesConfig.lastRewardAdShowTimestampKey;

  String get rewardAmountKey =>
      _rewardAmountKey ??
      FYcConfigDefaultConfigUtils.defaultStoragesConfig.rewardAmountKey;

  @override
  void initConfig(
    String configId, {
    FYcConfigCommonConfig? currentLevelCommonConfig,
  }) {
    super.initConfig(
      configId,
      currentLevelCommonConfig: currentLevelCommonConfig,
    );

    FYcConfigStoragesConfig storagesConfig = FYcConfigConfigurator.instance
        .getConfig(configId: configId)
        .storagesConfig;

    _isInitKey ??= storagesConfig._isInitKey;
    _userTokenKey ??= storagesConfig._userTokenKey;
    _userTokenExpiredKey ??= storagesConfig._userTokenExpiredKey;
    _userInfoKey ??= storagesConfig._userInfoKey;
    _walletInfoKey ??= storagesConfig._walletInfoKey;
    _behaviorInfoKey ??= storagesConfig._behaviorInfoKey;
    _remoteConfigKey ??= storagesConfig._remoteConfigKey;
    _isSignPrivacyPolicyKey ??= storagesConfig._isSignPrivacyPolicyKey;
    _lastRemoteConfigTimestampKey ??=
        storagesConfig._lastRemoteConfigTimestampKey;
    _lastInterstitialAdShowTimestampKey ??=
        storagesConfig._lastInterstitialAdShowTimestampKey;
    _lastRewardAdShowTimestampKey ??=
        storagesConfig._lastRewardAdShowTimestampKey;
    _rewardAmountKey ??= storagesConfig._rewardAmountKey;
  }

  FYcConfigStoragesConfig copyWith({
    String? isInitKey,
    String? userTokenKey,
    String? userTokenExpiredKey,
    String? userInfoKey,
    String? walletInfoKey,
    String? behaviorInfoKey,
    String? remoteConfigKey,
    String? isSignPrivacyPolicyKey,
    String? lastRemoteConfigTimestampKey,
    String? lastInterstitialAdShowTimestampKey,
    String? lastRewardAdShowTimestampKey,
    String? rewardAmountKey,
  }) {
    return FYcConfigStoragesConfig(
        isInitKey: isInitKey ?? _isInitKey,
        userTokenKey: userTokenKey ?? _userTokenKey,
        userTokenExpiredKey: userTokenExpiredKey ?? _userTokenExpiredKey,
        userInfoKey: userInfoKey ?? _userInfoKey,
        walletInfoKey: walletInfoKey ?? _walletInfoKey,
        behaviorInfoKey: behaviorInfoKey ?? _behaviorInfoKey,
        remoteConfigKey: remoteConfigKey ?? _remoteConfigKey,
        isSignPrivacyPolicyKey:
            isSignPrivacyPolicyKey ?? _isSignPrivacyPolicyKey,
        lastRemoteConfigTimestampKey:
            lastRemoteConfigTimestampKey ?? _lastRemoteConfigTimestampKey,
        lastInterstitialAdShowTimestampKey:
            lastInterstitialAdShowTimestampKey ??
                _lastInterstitialAdShowTimestampKey,
        lastRewardAdShowTimestampKey:
            lastRewardAdShowTimestampKey ?? _lastRewardAdShowTimestampKey,
        rewardAmountKey: rewardAmountKey ?? _rewardAmountKey);
  }

  FYcConfigStoragesConfig merge(FYcConfigStoragesConfig? other) {
    if (other == null) return this;
    return copyWith(
      isInitKey: other._isInitKey,
      userTokenKey: other._userTokenKey,
      userTokenExpiredKey: other._userTokenExpiredKey,
      userInfoKey: other._userInfoKey,
      walletInfoKey: other._walletInfoKey,
      behaviorInfoKey: other._behaviorInfoKey,
      remoteConfigKey: other._remoteConfigKey,
      isSignPrivacyPolicyKey: other._isSignPrivacyPolicyKey,
      lastRemoteConfigTimestampKey: other._lastRemoteConfigTimestampKey,
      lastInterstitialAdShowTimestampKey:
          other._lastInterstitialAdShowTimestampKey,
      lastRewardAdShowTimestampKey: other._lastRewardAdShowTimestampKey,
      rewardAmountKey: other._rewardAmountKey,
    );
  }
}
