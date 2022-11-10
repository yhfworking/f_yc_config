import 'package:f_yc_config/f_yc_config.dart';

class FYcConfigApiConfig extends FYcConfigBaseConfig {
  FYcConfigApiConfig({
    String? host,
    String? appkey,
    String? appSecret,
    String? apiVersion,
    String? appleLoginUri,
    String configId = GLOBAL_CONFIG_ID,
  })  : _host = host,
        _appkey = appkey,
        _appSecret = appSecret,
        _apiVersion = apiVersion,
        super(configId: configId);

  String? _host;
  String? _appkey;
  String? _appSecret;
  String? _apiVersion;

  String get host => _host ?? FYcConfigDefaultConfigUtils.defaultApiConfig.host;

  String get appkey =>
      _appkey ?? FYcConfigDefaultConfigUtils.defaultApiConfig.appkey;

  String get appSecret =>
      _appSecret ?? FYcConfigDefaultConfigUtils.defaultApiConfig.appSecret;

  String get apiVersion =>
      _apiVersion ?? FYcConfigDefaultConfigUtils.defaultApiConfig.apiVersion;

  @override
  void initConfig(
    String configId, {
    FYcConfigCommonConfig? currentLevelCommonConfig,
  }) {
    super.initConfig(
      configId,
      currentLevelCommonConfig: currentLevelCommonConfig,
    );
    FYcConfigApiConfig apiConfig =
        FYcConfigConfigurator.instance.getConfig(configId: configId).apiConfig;

    _host ??= apiConfig._host;
    _appkey ??= apiConfig._appkey;
    _appSecret ??= apiConfig._appSecret;
    _apiVersion ??= apiConfig._apiVersion;
  }

  FYcConfigApiConfig copyWith({
    String? host,
    String? appkey,
    String? appSecret,
    String? apiVersion,
  }) {
    return FYcConfigApiConfig(
      host: host ?? _host,
      appkey: appkey ?? _appkey,
      appSecret: appSecret ?? _appSecret,
      apiVersion: apiVersion ?? _apiVersion,
    );
  }

  FYcConfigApiConfig merge(FYcConfigApiConfig? other) {
    if (other == null) return this;
    return copyWith(
        host: other._host,
        appkey: other._appkey,
        appSecret: other._appSecret,
        apiVersion: other._apiVersion);
  }
}
