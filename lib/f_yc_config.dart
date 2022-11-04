library f_yc_config;

import 'package:f_yc_config/f_yc_config.dart';
export './f_yc_config.dart';
export './f_yc_config_configurator.dart';
export './config/f_yc_config_all_config.dart';
export './config/f_yc_config_base_config.dart';
export './config/f_yc_config_common_config.dart';
export './config/f_yc_config_default_config_utils.dart';
export './config/f_yc_config_pangrowth_config.dart';
export './config/f_yc_config_pangle_config.dart';
export './config/f_yc_config_mtj_config.dart';
export './config/f_yc_config_wechat_config.dart';
export './config/f_yc_config_api_config.dart';

/// 初始化
class FYcConfig {
  static initializer({
    FYcConfigAllConfig? allConfig,
    String configId = GLOBAL_CONFIG_ID,
  }) {
    FYcConfigConfigurator.instance.register(allConfig, configId: configId);
  }
}
