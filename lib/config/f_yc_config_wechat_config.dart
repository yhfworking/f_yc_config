import 'package:f_yc_config/f_yc_config.dart';

class FYcConfigWechatConfig extends FYcConfigBaseConfig {
  FYcConfigWechatConfig({
    String? appId,
    String? appSecret,
    String? universalLink,
    String? kfServiceUrl,
    String? kfCorpId,
    String configId = GLOBAL_CONFIG_ID,
  })  : _appId = appId,
        _appSecret = appSecret,
        _universalLink = universalLink,
        _kfServiceUrl = kfServiceUrl,
        _kfCorpId = kfCorpId,
        super(configId: configId);

  String? _appId;
  String? _appSecret;
  String? _universalLink;
  String? _kfServiceUrl;
  String? _kfCorpId;

  String get appId =>
      _appId ?? FYcConfigDefaultConfigUtils.defaultWechatConfig.appId;

  String get appSecret =>
      _appSecret ?? FYcConfigDefaultConfigUtils.defaultWechatConfig.appSecret;
  String get universalLink =>
      _universalLink ??
      FYcConfigDefaultConfigUtils.defaultWechatConfig.universalLink;
  String get kfServiceUrl =>
      _kfServiceUrl ??
      FYcConfigDefaultConfigUtils.defaultWechatConfig.kfServiceUrl;
  String get kfCorpId =>
      _kfCorpId ?? FYcConfigDefaultConfigUtils.defaultWechatConfig.kfCorpId;

  @override
  void initConfig(
    String configId, {
    FYcConfigCommonConfig? currentLevelCommonConfig,
  }) {
    super.initConfig(
      configId,
      currentLevelCommonConfig: currentLevelCommonConfig,
    );
    FYcConfigWechatConfig wechatConfig = FYcConfigConfigurator.instance
        .getConfig(configId: configId)
        .wechatConfig;

    _appId ??= wechatConfig._appId;
    _appSecret ??= wechatConfig._appSecret;
    _universalLink ??= wechatConfig._universalLink;
    _kfServiceUrl ??= wechatConfig._kfServiceUrl;
    _kfCorpId ??= wechatConfig._kfCorpId;
  }

  FYcConfigWechatConfig copyWith({
    String? appId,
    String? appSecret,
    String? universalLink,
    String? kfServiceUrl,
    String? kfCorpId,
  }) {
    return FYcConfigWechatConfig(
        appId: appId ?? _appId,
        appSecret: appSecret ?? _appSecret,
        universalLink: universalLink ?? _universalLink,
        kfServiceUrl: kfServiceUrl ?? _kfServiceUrl,
        kfCorpId: kfCorpId ?? _kfCorpId);
  }

  FYcConfigWechatConfig merge(FYcConfigWechatConfig? other) {
    if (other == null) return this;
    return copyWith(
        appId: other._appId,
        appSecret: other._appSecret,
        universalLink: other._universalLink,
        kfServiceUrl: other._kfServiceUrl,
        kfCorpId: other._kfCorpId);
  }
}
