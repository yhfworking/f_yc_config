import 'package:f_yc_config/f_yc_config.dart';

class FYcConfigPangrowthConfig extends FYcConfigBaseConfig {
  FYcConfigPangrowthConfig({
    String? andoridAppId,
    String? iosAppId,
    String? mPartner,
    String? mSecureKey,
    String configId = GLOBAL_CONFIG_ID,
  })  : _andoridAppId = andoridAppId,
        _iosAppId = iosAppId,
        _mPartner = mPartner,
        _mSecureKey = mSecureKey,
        super(configId: configId);

  String? _andoridAppId;
  String? _iosAppId;
  String? _mPartner;
  String? _mSecureKey;

  String get andoridAppId =>
      _andoridAppId ??
      FYcConfigDefaultConfigUtils.defaultPangrowthConfig.andoridAppId;

  String get iosAppId =>
      _iosAppId ?? FYcConfigDefaultConfigUtils.defaultPangrowthConfig.iosAppId;

  String get mPartner =>
      _mPartner ?? FYcConfigDefaultConfigUtils.defaultPangrowthConfig.mPartner;

  String get mSecureKey =>
      _mSecureKey ??
      FYcConfigDefaultConfigUtils.defaultPangrowthConfig.mSecureKey;

  @override
  void initConfig(
    String configId, {
    FYcConfigCommonConfig? currentLevelCommonConfig,
  }) {
    super.initConfig(
      configId,
      currentLevelCommonConfig: currentLevelCommonConfig,
    );
    FYcConfigPangrowthConfig pangrowthConfig = FYcConfigConfigurator.instance
        .getConfig(configId: configId)
        .pangrowthConfig;

    _andoridAppId ??= pangrowthConfig._andoridAppId;
    _iosAppId ??= pangrowthConfig._iosAppId;
    _mPartner ??= pangrowthConfig._mPartner;
    _mSecureKey ??= pangrowthConfig._mSecureKey;
  }

  FYcConfigPangrowthConfig copyWith(
      {String? andoridAppId,
      String? iosAppId,
      String? mPartner,
      String? mSecureKey}) {
    return FYcConfigPangrowthConfig(
        andoridAppId: andoridAppId ?? _andoridAppId,
        iosAppId: iosAppId ?? _iosAppId,
        mPartner: mPartner ?? _mPartner,
        mSecureKey: mSecureKey ?? _mSecureKey);
  }

  FYcConfigPangrowthConfig merge(FYcConfigPangrowthConfig? other) {
    if (other == null) return this;
    return copyWith(
        andoridAppId: other._andoridAppId,
        iosAppId: other._iosAppId,
        mPartner: other._mPartner,
        mSecureKey: other._mSecureKey);
  }
}
