import 'package:f_yc_config/f_yc_config.dart';
import 'package:flutter/material.dart';

/// 默认配置
class FYcConfigDefaultConfigUtils {
  const FYcConfigDefaultConfigUtils._();

  /// 默认全局配置
  static FYcConfigAllConfig defaultAllConfig = FYcConfigAllConfig(
    commonConfig: defaultCommonConfig,
    pangrowthConfig: defaultPangrowthConfig,
    pangleConfig: defaultPangleConfig,
    wechatConfig: defaultWechatConfig,
  );

  /// 全局默认配置
  static FYcConfigCommonConfig defaultCommonConfig = FYcConfigCommonConfig(
      preRETimestamp: 12389120381,
      primaryColor: const Color(0xFF0984F9),
      primaryTextColor: const Color(0x190984F9),
      primarySubTextColor: const Color(0xFF00AE66),
      appName: '',
      appNameEn: '',
      appStoreId: '',
      packageName: '',
      copyright: '',
      logoUrl: '',
      defalutAvatarUrl: '',
      userAgreementUrl: '',
      privacyPolicyUrl: '',
      apiHost: '',
      apiAppkey: '',
      apiAppSecret: '',
      shareTitle: '',
      shareDes: '',
      shareLogo: '',
      shareUrl: '');

  /// Pangrowth配置
  static FYcConfigPangrowthConfig defaultPangrowthConfig =
      FYcConfigPangrowthConfig(
          andoridAppId: '', iosAppId: '', mPartner: '', mSecureKey: '');

  /// Pangle配置
  static FYcConfigPangleConfig defaultPangleConfig = FYcConfigPangleConfig(
      appId: '',
      splashAdId: '',
      interstitialAdId: '',
      rewardAdId: '',
      bannerAdId: '',
      profileBannerAdId: '',
      welfareReBannerAdId: '',
      interstitialAdIntervalSec: 0,
      rewardAdIntervalSec: 0);

  /// Mtj配置
  static FYcConfigMtjConfig defaultMtjConfig =
      FYcConfigMtjConfig(iosAppKey: '', androidAppKey: '');

  /// Wechat配置
  static FYcConfigWechatConfig defaultWechatConfig = FYcConfigWechatConfig(
      appId: '',
      appSecret: '',
      universalLink: '',
      kfServiceUrl: '',
      kfCorpId: '');
}
