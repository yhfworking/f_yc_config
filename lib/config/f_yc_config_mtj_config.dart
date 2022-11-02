import 'package:f_yc_config/f_yc_config.dart';

class FYcConfigMtjConfig extends FYcConfigBaseConfig {
  FYcConfigMtjConfig({
    String? iosAppKey,
    String? androidAppKey,
    String configId = GLOBAL_CONFIG_ID,
  })  : _iosAppKey = iosAppKey,
        _androidAppKey = androidAppKey,
        super(configId: configId);

  String? _iosAppKey;
  String? _androidAppKey;

  String get iosAppKey =>
      _iosAppKey ?? FYcConfigDefaultConfigUtils.defaultMtjConfig.iosAppKey;

  String get androidAppKey =>
      _androidAppKey ??
      FYcConfigDefaultConfigUtils.defaultMtjConfig.androidAppKey;

  @override
  void initConfig(
    String configId, {
    FYcConfigCommonConfig? currentLevelCommonConfig,
  }) {
    super.initConfig(
      configId,
      currentLevelCommonConfig: currentLevelCommonConfig,
    );
    FYcConfigMtjConfig mtjConfig =
        FYcConfigConfigurator.instance.getConfig(configId: configId).mtjConfig;

    _iosAppKey ??= mtjConfig._iosAppKey;
    _androidAppKey ??= mtjConfig._androidAppKey;
  }

  FYcConfigMtjConfig copyWith({String? iosAppKey, String? androidAppKey}) {
    return FYcConfigMtjConfig(
        iosAppKey: iosAppKey ?? _iosAppKey,
        androidAppKey: androidAppKey ?? _androidAppKey);
  }

  FYcConfigMtjConfig merge(FYcConfigMtjConfig? other) {
    if (other == null) return this;
    return copyWith(
        iosAppKey: other._iosAppKey, androidAppKey: other._androidAppKey);
  }
}
