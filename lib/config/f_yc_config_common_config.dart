import 'dart:core';
import 'package:f_yc_config/f_yc_config.dart';
import 'package:flutter/painting.dart';

/// 描述: 全局配置
/// 配置属性：色值、字体大小、间距、圆角
class FYcConfigCommonConfig extends FYcConfigBaseConfig {
  FYcConfigCommonConfig({
    double? preRETimestamp,
    Color? primaryColor,
    Color? primaryTextColor,
    Color? primarySubTextColor,
    String? appName,
    String? appNameEn,
    String? appStoreId,
    String? packageName,
    String? copyright,
    String? logoUrl,
    String? defalutAvatarUrl,
    String? userAgreementUrl,
    String? privacyPolicyUrl,
    String? shareTitle,
    String? shareDes,
    String? shareLogo,
    String? shareUrl,
    String? platform,
    String? os,
    String? ua,
    String configId = GLOBAL_CONFIG_ID,
  })  : _preRETimestamp = preRETimestamp,
        _primaryColor = primaryColor,
        _primaryTextColor = primaryTextColor,
        _primarySubTextColor = primarySubTextColor,
        _appName = appName,
        _appNameEn = appNameEn,
        _appStoreId = appStoreId,
        _packageName = packageName,
        _copyright = copyright,
        _logoUrl = logoUrl,
        _defalutAvatarUrl = defalutAvatarUrl,
        _userAgreementUrl = userAgreementUrl,
        _privacyPolicyUrl = privacyPolicyUrl,
        _shareTitle = shareTitle,
        _shareDes = shareDes,
        _shareLogo = shareLogo,
        _shareUrl = shareUrl,
        _platform = platform,
        _os = os,
        _ua = ua,
        super(configId: configId);

  FYcConfigCommonConfig.autoFlatConfig({
    double? preRETimestamp,
    Color? primaryColor,
    Color? primaryTextColor,
    Color? primarySubTextColor,
    String? appName,
    String? appNameEn,
    String? appStoreId,
    String? packageName,
    String? copyright,
    String? logoUrl,
    String? defalutAvatarUrl,
    String? userAgreementUrl,
    String? privacyPolicyUrl,
    String? shareTitle,
    String? shareDes,
    String? shareLogo,
    String? shareUrl,
    String? platform,
    String? os,
    String? ua,
    String configId = GLOBAL_CONFIG_ID,
  })  : _preRETimestamp = preRETimestamp,
        _primaryColor = primaryColor,
        _primaryTextColor = primaryTextColor,
        _primarySubTextColor = primarySubTextColor,
        _appName = appName,
        _appNameEn = appNameEn,
        _appStoreId = appStoreId,
        _packageName = packageName,
        _copyright = copyright,
        _logoUrl = logoUrl,
        _defalutAvatarUrl = defalutAvatarUrl,
        _userAgreementUrl = userAgreementUrl,
        _privacyPolicyUrl = privacyPolicyUrl,
        _shareTitle = shareTitle,
        _shareDes = shareDes,
        _shareLogo = shareLogo,
        _shareUrl = shareUrl,
        _platform = platform,
        _os = os,
        _ua = ua,
        super(configId: configId, autoFlatConfig: true);

  /// 预计审核通过时间戳
  /// 默认为 000000
  double? _preRETimestamp;

  /// 品牌色
  /// 默认为 Color(0xFF0984F9)
  Color? _primaryColor;

  /// 主字体颜色
  /// 默认为 Color(0x190984F9)
  Color? _primaryTextColor;

  /// 副字体颜色
  /// 默认为 Color(0xFF00AE66)
  Color? _primarySubTextColor;

  String? _appName;
  String? _appNameEn;
  String? _appStoreId;
  String? _packageName;
  String? _copyright;
  String? _logoUrl;
  String? _defalutAvatarUrl;
  String? _userAgreementUrl;
  String? _privacyPolicyUrl;
  String? _shareTitle;
  String? _shareDes;
  String? _shareLogo;
  String? _shareUrl;
  String? _platform;
  String? _os;
  String? _ua;

  double get preRETimestamp =>
      _preRETimestamp ??
      FYcConfigDefaultConfigUtils.defaultCommonConfig.preRETimestamp;

  Color get primaryColor =>
      _primaryColor ??
      FYcConfigDefaultConfigUtils.defaultCommonConfig.primaryColor;

  Color get primaryTextColor =>
      _primaryTextColor ??
      FYcConfigDefaultConfigUtils.defaultCommonConfig.primaryTextColor;

  Color get primarySubTextColor =>
      _primarySubTextColor ??
      FYcConfigDefaultConfigUtils.defaultCommonConfig.primarySubTextColor;

  String get appName =>
      _appName ?? FYcConfigDefaultConfigUtils.defaultCommonConfig.appName;

  String get appNameEn =>
      _appNameEn ?? FYcConfigDefaultConfigUtils.defaultCommonConfig.appNameEn;

  String get appStoreId =>
      _appStoreId ?? FYcConfigDefaultConfigUtils.defaultCommonConfig.appStoreId;

  String get packageName =>
      _packageName ??
      FYcConfigDefaultConfigUtils.defaultCommonConfig.packageName;

  String get copyright =>
      _copyright ?? FYcConfigDefaultConfigUtils.defaultCommonConfig.copyright;

  String get logoUrl =>
      _logoUrl ?? FYcConfigDefaultConfigUtils.defaultCommonConfig.logoUrl;
  String get defalutAvatarUrl =>
      _defalutAvatarUrl ??
      FYcConfigDefaultConfigUtils.defaultCommonConfig.defalutAvatarUrl;

  String get userAgreementUrl =>
      _userAgreementUrl ??
      FYcConfigDefaultConfigUtils.defaultCommonConfig.userAgreementUrl;
  String get privacyPolicyUrl =>
      _privacyPolicyUrl ??
      FYcConfigDefaultConfigUtils.defaultCommonConfig.privacyPolicyUrl;
  String get shareTitle =>
      _shareTitle ?? FYcConfigDefaultConfigUtils.defaultCommonConfig.shareTitle;
  String get shareDes =>
      _shareDes ?? FYcConfigDefaultConfigUtils.defaultCommonConfig.shareDes;
  String get shareLogo =>
      _shareLogo ?? FYcConfigDefaultConfigUtils.defaultCommonConfig.shareLogo;
  String get shareUrl =>
      _shareUrl ?? FYcConfigDefaultConfigUtils.defaultCommonConfig.shareUrl;

  String get platform =>
      _platform ?? FYcConfigDefaultConfigUtils.defaultCommonConfig.platform;

  String get os => _os ?? FYcConfigDefaultConfigUtils.defaultCommonConfig.os;

  String get ua => _ua ?? FYcConfigDefaultConfigUtils.defaultCommonConfig.ua;

  bool isInR() {
    if (DateTime.now().millisecondsSinceEpoch < preRETimestamp) {
      return true;
    }
    return false;
  }

  /// 优先级 [GLOBAL_CONFIG_ID] 获取配置 > [KIT_CONFIG_ID] 获取配置
  @override
  void initConfig(
    String configId, {
    FYcConfigCommonConfig? currentLevelCommonConfig,
  }) {
    super.initConfig(
      configId,
      currentLevelCommonConfig: currentLevelCommonConfig,
    );

    /// 获取合适的 完整配置（FYcAllConfig）
    _preRETimestamp ??= commonConfig._preRETimestamp;
    _primaryColor ??= commonConfig._primaryColor;
    _primaryTextColor ??= commonConfig._primaryTextColor;
    _primarySubTextColor ??= commonConfig._primarySubTextColor;
    _appName ??= commonConfig._appName;
    _appNameEn ??= commonConfig._appNameEn;
    _appStoreId ??= commonConfig._appStoreId;
    _packageName ??= commonConfig._packageName;
    _copyright ??= commonConfig._copyright;
    _logoUrl ??= commonConfig._logoUrl;
    _defalutAvatarUrl ??= commonConfig._defalutAvatarUrl;
    _userAgreementUrl ??= commonConfig._userAgreementUrl;
    _privacyPolicyUrl ??= commonConfig._privacyPolicyUrl;
    _shareTitle ??= commonConfig._shareTitle;
    _shareDes ??= commonConfig._shareDes;
    _shareLogo ??= commonConfig._shareLogo;
    _shareUrl ??= commonConfig._shareUrl;
    _platform ??= commonConfig._platform;
    _os ??= commonConfig._os;
    _ua ??= commonConfig._ua;
  }
}
