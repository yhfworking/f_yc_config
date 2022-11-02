import 'package:f_yc_config/f_yc_config_configurator.dart';
import 'f_yc_config_common_config.dart';

/// 配置基类
abstract class FYcConfigBaseConfig {
  FYcConfigBaseConfig({
    String configId = GLOBAL_CONFIG_ID,
    bool autoFlatConfig = false,
  }) : _configId = configId {
    if (autoFlatConfig) {
      initConfig(configId);
    }
  }

  String get configId => _configId;
  // ignore: prefer_final_fields
  String _configId;
  FYcConfigCommonConfig? _currentLevelCommonConfig;

  void initConfig(
    String configId, {
    FYcConfigCommonConfig? currentLevelCommonConfig,
  }) {
    _currentLevelCommonConfig = currentLevelCommonConfig;
  }

  /// 当自定义组件的配置时调用
  /// 根据自定义时传入的 [configId] 对配置字段打平
  void initConfigPersonal() {
    initConfig(configId);
  }

  FYcConfigCommonConfig get commonConfig =>
      _currentLevelCommonConfig ??
      FYcConfigConfigurator.instance.getConfig(configId: configId).commonConfig;
}
