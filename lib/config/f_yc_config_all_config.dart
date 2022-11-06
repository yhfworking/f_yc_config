import 'package:f_yc_config/f_yc_config.dart';

import 'f_yc_config_storages_config.dart';

/// 描述: 全局配置
class FYcConfigAllConfig {
  FYcConfigAllConfig(
      {FYcConfigCommonConfig? commonConfig,
      FYcConfigPangrowthConfig? pangrowthConfig,
      FYcConfigPangleConfig? pangleConfig,
      FYcConfigMtjConfig? mtjConfig,
      FYcConfigWechatConfig? wechatConfig,
      FYcConfigApiConfig? apiConfig,
      FYcConfigStoragesConfig? storagesConfig,
      String configId = GLOBAL_CONFIG_ID})
      : _commonConfig = commonConfig,
        _pangrowthConfig = pangrowthConfig,
        _pangleConfig = pangleConfig,
        _mtjConfig = mtjConfig,
        _wechatConfig = wechatConfig,
        _apiConfig = apiConfig,
        _storagesConfig = storagesConfig;

  FYcConfigCommonConfig? _commonConfig;

  FYcConfigCommonConfig get commonConfig =>
      _commonConfig ?? FYcConfigDefaultConfigUtils.defaultCommonConfig;

  FYcConfigPangrowthConfig? _pangrowthConfig;

  FYcConfigPangrowthConfig get pangrowthConfig =>
      _pangrowthConfig ?? FYcConfigDefaultConfigUtils.defaultPangrowthConfig;

  FYcConfigPangleConfig? _pangleConfig;

  FYcConfigPangleConfig get pangleConfig =>
      _pangleConfig ?? FYcConfigDefaultConfigUtils.defaultPangleConfig;

  FYcConfigMtjConfig? _mtjConfig;

  FYcConfigMtjConfig get mtjConfig =>
      _mtjConfig ?? FYcConfigDefaultConfigUtils.defaultMtjConfig;

  FYcConfigWechatConfig? _wechatConfig;

  FYcConfigWechatConfig get wechatConfig =>
      _wechatConfig ?? FYcConfigDefaultConfigUtils.defaultWechatConfig;

  FYcConfigApiConfig? _apiConfig;

  FYcConfigApiConfig get apiConfig =>
      _apiConfig ?? FYcConfigDefaultConfigUtils.defaultApiConfig;

  FYcConfigStoragesConfig? _storagesConfig;

  FYcConfigStoragesConfig get storagesConfig =>
      _storagesConfig ?? FYcConfigDefaultConfigUtils.defaultStoragesConfig;

  void initConfig(String configId) {
    _commonConfig ??= FYcConfigCommonConfig();
    _pangrowthConfig ??= FYcConfigPangrowthConfig();
    _pangleConfig ??= FYcConfigPangleConfig();
    _mtjConfig ??= FYcConfigMtjConfig();
    _wechatConfig ??= FYcConfigWechatConfig();
    _apiConfig ??= FYcConfigApiConfig();
    _storagesConfig ??= FYcConfigStoragesConfig();

    commonConfig.initConfig(configId);
    pangrowthConfig.initConfig(
      configId,
      currentLevelCommonConfig: commonConfig,
    );
    pangleConfig.initConfig(
      configId,
      currentLevelCommonConfig: commonConfig,
    );
    mtjConfig.initConfig(
      configId,
      currentLevelCommonConfig: commonConfig,
    );
    wechatConfig.initConfig(
      configId,
      currentLevelCommonConfig: commonConfig,
    );
    apiConfig.initConfig(
      configId,
      currentLevelCommonConfig: commonConfig,
    );
    storagesConfig.initConfig(
      configId,
      currentLevelCommonConfig: commonConfig,
    );
  }
}
