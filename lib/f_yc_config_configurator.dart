import 'package:f_yc_config/f_yc_config.dart';

const String KIT_CONFIG_ID = 'KIT_CONFIG_ID';
const String GLOBAL_CONFIG_ID = 'GLOBAL_CONFIG_ID';

class FYcConfigConfigurator {
  FYcConfigConfigurator._() {
    _checkAndInitConfig();
  }

  static final FYcConfigConfigurator _instance = FYcConfigConfigurator._();

  static FYcConfigConfigurator get instance {
    return _instance;
  }

  Map<String, FYcConfigAllConfig> globalConfig = <String, FYcConfigAllConfig>{};

  /// 手动注册时，默认注册渠道是 GLOBAL_CONFIG_ID
  void register(
    FYcConfigAllConfig? allConfig, {
    String configId = GLOBAL_CONFIG_ID,
  }) {
    // 打平内部字段
    if (allConfig != null) {
      // 赋值传入配置
      globalConfig[configId] = allConfig..initConfig(configId);
    }
  }

  /// 获取合适的配置
  /// 1、获取 configId 对应的全局主题配置，
  /// 2、若获取的为 null，则使用默认的全局配置。
  /// 3、若没有配置 GLOBAL_CONFIG_ID ，则使用 NNKIT 的配置。
  FYcConfigAllConfig getConfig({String configId = GLOBAL_CONFIG_ID}) {
    FYcConfigAllConfig? allConfig = globalConfig[configId] ??
        globalConfig[GLOBAL_CONFIG_ID] ??
        globalConfig[KIT_CONFIG_ID];
    assert(allConfig != null, 'No suitable config found.');
    return allConfig!;
  }

  /// 检查是否有默认配置
  bool isConfig() => globalConfig[KIT_CONFIG_ID] != null;

  /// 没有默认配置 配置默认配置
  void _checkAndInitConfig() {
    if (!isConfig()) {
      globalConfig[KIT_CONFIG_ID] =
          FYcConfigDefaultConfigUtils.defaultAllConfig;
    }
  }
}
