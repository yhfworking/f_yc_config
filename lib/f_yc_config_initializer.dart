import 'package:f_yc_config/f_yc_config.dart';

/// 初始化
class FYcConfigInitializer {
  /// 手动注册时，默认注册渠道是 GLOBAL_CONFIG_ID
  static register({
    FYcConfigAllConfig? allConfig,
    String configId = GLOBAL_CONFIG_ID,
  }) {
    /// 配置定制
    FYcConfigConfigurator.instance.register(allConfig, configId: configId);
  }
}
