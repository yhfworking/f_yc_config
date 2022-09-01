import 'package:f_yc_config/src/events/index.dart';
import 'package:f_yc_utils/f_yc_utils.dart';
import 'package:flutter/widgets.dart';
import 'package:get_storage/get_storage.dart';
import 'index.dart';

class YcConfig {
  static Future<void> init(YcJson json) async {
    await GetStorage.init();
    if (json.reviewExpiredTimestamp != null) {
      await setReviewExpiredTimestamp(json.reviewExpiredTimestamp ?? 0);
    }
    if (json.primaryColor != null) {
      await GetStorage().write(
          'Storage_Key_color_value_primary', json.primaryColor ?? 0xFF5dd0ff);
    }
    if (json.primaryTextColor != null) {
      await GetStorage().write('Storage_Key_color_value_primary_text',
          json.primaryTextColor ?? 0xFF303133);
    }
    if (json.primarySubTextColor != null) {
      await GetStorage().write('Storage_Key_color_value_primary_sub_text',
          json.primarySubTextColor ?? 0xFF606266);
    }
    if (json.appName != null) {
      await GetStorage().write('Storage_Key_app_name', json.appName ?? '');
    }
    if (json.appStoreId != null) {
      await GetStorage()
          .write('Storage_Key_app_store_id', json.appStoreId ?? '');
    }
    if (json.packageName != null) {
      await GetStorage()
          .write('Storage_Key_package_name', json.packageName ?? '');
    }
    if (json.copyright != null) {
      await GetStorage().write('Storage_Key_copyright', json.copyright ?? '');
    }
    if (json.wxAppId != null) {
      await GetStorage().write('Storage_Key_wx_app_id', json.wxAppId ?? '');
    }
    if (json.wxAppSecret != null) {
      await GetStorage()
          .write('Storage_Key_wx_app_secret', json.wxAppSecret ?? '');
    }
    if (json.wxUniversalLink != null) {
      await GetStorage()
          .write('Storage_Key_wx_universal_link', json.wxUniversalLink ?? '');
    }
    if (json.wxKfServiceUrl != null) {
      await GetStorage()
          .write('Storage_Key_wx_kf_service_url', json.wxKfServiceUrl ?? '');
    }
    if (json.wxKfCorpId != null) {
      await GetStorage()
          .write('Storage_Key_wx_kf_corp_id', json.wxKfCorpId ?? '');
    }
    if (json.logoUrl != null) {
      await GetStorage().write(
          'Storage_Key_url_logo',
          json.logoUrl ??
              'https://vkceyugu.cdn.bspapp.com/VKCEYUGU-484de5b1-d581-46f1-a68b-9dda7cc01b6f/8f2b7552-5dee-4eae-bbf9-00af9d53ab87.png');
    }
    if (json.defalutAvatarUrl != null) {
      await GetStorage().write(
          'Storage_Key_url_defalut_avatar',
          json.defalutAvatarUrl ??
              'https://vkceyugu.cdn.bspapp.com/VKCEYUGU-484de5b1-d581-46f1-a68b-9dda7cc01b6f/8f2b7552-5dee-4eae-bbf9-00af9d53ab87.png');
    }
    if (json.userAgreementUrl != null) {
      await GetStorage()
          .write('Storage_Key_url_user_agreement', json.userAgreementUrl ?? '');
    }
    if (json.privacyPolicyUrl != null) {
      await GetStorage()
          .write('Storage_Key_url_privacy_policy', json.privacyPolicyUrl ?? '');
    }

    if (json.apiHost != null) {
      await GetStorage().write('Storage_Key_apis_host', json.apiHost ?? '');
    }
    if (json.apiAppkey != null) {
      await GetStorage()
          .write('Storage_Key_apis_app_key', json.apiAppkey ?? '');
    }
    if (json.apiAppSecret != null) {
      await GetStorage()
          .write('Storage_Key_apis_app_secret', json.apiAppSecret ?? '');
    }
    if (json.apiUriRemoteConfig != null) {
      await GetStorage().write(
          'Storage_Key_apis_uri_remote_config', json.apiUriRemoteConfig ?? '');
    }
    if (json.apiUriWalletInfo != null) {
      await GetStorage().write(
          'Storage_Key_apis_uri_wallet_info', json.apiUriWalletInfo ?? '');
    }
    if (json.apiUriBehaviorInfo != null) {
      await GetStorage().write(
          'Storage_Key_apis_uri_behavior_info', json.apiUriBehaviorInfo ?? '');
    }
    if (json.apiUriSubmitCashOut != null) {
      await GetStorage().write('Storage_Key_apis_uri_submit_cash_out',
          json.apiUriSubmitCashOut ?? '');
    }
    if (json.apiUriLogWallet != null) {
      await GetStorage()
          .write('Storage_Key_apis_uri_log_wallet', json.apiUriLogWallet ?? '');
    }
    if (json.apiUriLogCashOut != null) {
      await GetStorage().write(
          'Storage_Key_apis_uri_log_cash_out', json.apiUriLogCashOut ?? '');
    }
    if (json.apiUriReportAppPraise != null) {
      await GetStorage().write('Storage_Key_apis_uri_report_app_praise',
          json.apiUriReportAppPraise ?? '');
    }
    if (json.apiUriReportAdClick != null) {
      await GetStorage().write('Storage_Key_apis_uri_report_ad_click',
          json.apiUriReportAdClick ?? '');
    }
    if (json.apiUriReportRewardAdEvent != null) {
      await GetStorage().write('Storage_Key_apis_uri_report_reward_ad_event',
          json.apiUriReportRewardAdEvent ?? '');
    }

    if (json.apiUriUserWelfareRe != null) {
      await GetStorage().write('Storage_Key_apis_uri_user_welfare_re',
          json.apiUriUserWelfareRe ?? '');
    }

    if (json.apiUriReceiveUserWelfareRe != null) {
      await GetStorage().write('Storage_Key_apis_uri_receive_user_welfare_re',
          json.apiUriReceiveUserWelfareRe ?? '');
    }

    if (json.apiUriReceiveTimerRewardRe != null) {
      await GetStorage().write('Storage_Key_apis_uri_receive_timer_reward_re',
          json.apiUriReceiveTimerRewardRe ?? '');
    }

    if (json.apiUriSubmitSign != null) {
      await GetStorage().write(
          'Storage_Key_apis_uri_submit_sign', json.apiUriSubmitSign ?? '');
    }

    if (json.receiveContinuitySign != null) {
      await GetStorage().write('Storage_Key_apis_uri_receive_continuity_sign',
          json.receiveContinuitySign ?? '');
    }

    if (json.shareTitle != null) {
      await GetStorage()
          .write('Storage_Key_share_title', json.shareTitle ?? '');
    }
    if (json.shareDes != null) {
      await GetStorage().write('Storage_Key_share_des', json.shareDes ?? '');
    }
    if (json.shareUrl != null) {
      await GetStorage().write('Storage_Key_share_url', json.shareUrl ?? '');
    }
    if (json.shareLogo != null) {
      await GetStorage().write(
          'Storage_Key_share_logo',
          json.shareLogo ??
              'https://vkceyugu.cdn.bspapp.com/VKCEYUGU-484de5b1-d581-46f1-a68b-9dda7cc01b6f/8f2b7552-5dee-4eae-bbf9-00af9d53ab87.png');
    }
    if (json.pangleSplashAdId != null) {
      await GetStorage().write(
          'Storage_Key_pangle_splash_ad_id', json.pangleSplashAdId ?? '');
    }
    if (json.pangleInterstitialAdId != null) {
      await GetStorage().write('Storage_Key_pangle_interstitial_ad_id',
          json.pangleInterstitialAdId ?? '');
    }
    if (json.pangleRewardAdId != null) {
      await GetStorage().write(
          'Storage_Key_pangle_reward_ad_id', json.pangleRewardAdId ?? '');
    }
    if (json.pangleBannerAdId != null) {
      await GetStorage().write(
          'Storage_Key_pangle_banner_ad_id', json.pangleBannerAdId ?? '');
    }
    if (json.pangleProfileBannerAdId != null) {
      await GetStorage().write('Storage_Key_pangle_profile_banner_ad_id',
          json.pangleProfileBannerAdId ?? '');
    }
    if (json.pangleWelfareReBannerAdId != null) {
      await GetStorage().write('Storage_Key_pangle_welfare_re_banner_ad_id',
          json.pangleWelfareReBannerAdId ?? '');
    }
    await GetStorage().write('Storage_Key_ua', await StringUtils.ua());
  }

////////////////////////////////////////////////////////////////////////////////////////////////
  static String userToken() {
    return GetStorage().read('Storage_Key_user_token') ?? '';
  }

  static Future<void> setUserToken(String userToken) async {
    await GetStorage().write('Storage_Key_user_token', userToken);
  }

  static int userTokenExpiredTimestamp() {
    return GetStorage().read('Storage_Key_user_token_expired_timestamp') ?? 0;
  }

  static Future<void> setUserTokenExpiredTimestamp(int userTokenExpired) async {
    await GetStorage()
        .write('Storage_Key_user_token_expired_timestamp', userTokenExpired);
  }

////////////////////////////////////////////////////////////////////////////////////////////////

  static bool isLogin() {
    String userToken = YcConfig.userToken();
    int userTokenExpiredTimestamp = YcConfig.userTokenExpiredTimestamp();
    if (userToken.isNotEmpty && userTokenExpiredTimestamp != 0) {
      if (DateTime.now().millisecondsSinceEpoch < userTokenExpiredTimestamp) {
        return true;
      }
    }
    return false;
  }

  static YcUser userInfo() {
    return YcUser.fromJson(GetStorage().read('Storage_Key_user_info') ?? {});
  }

  static Future<void> setUserInfo(YcUser entitysUser) async {
    await GetStorage().write('Storage_Key_user_info', entitysUser.toJson());
  }

  static YcWallet walletInfo() {
    return YcWallet.fromJson(
        GetStorage().read('Storage_Key_user_wallet_info') ?? {});
  }

  static Future<void> setWalletInfo(YcWallet entitysWallet) async {
    await GetStorage()
        .write('Storage_Key_user_wallet_info', entitysWallet.toJson());
  }

  static YcBehavior behaviorInfo() {
    return YcBehavior.fromJson(
        GetStorage().read('Storage_Key_user_behavior_info') ?? {});
  }

  static Future<void> setBehaviorInfo(YcBehavior entitysBehavior) async {
    await GetStorage()
        .write('Storage_Key_user_behavior_info', entitysBehavior.toJson());
  }

  static Future<void> cleanAllLoginInfo() async {
    await GetStorage().remove('Storage_Key_user_token');
    await GetStorage().remove('Storage_Key_user_token_expired_timestamp');
    await GetStorage().remove('Storage_Key_user_info');
    await GetStorage().remove('Storage_Key_user_wallet_info');
    await GetStorage().remove('Storage_Key_user_behavior_info');
  }

  static YcRemoteConfig remoteConfig() {
    return YcRemoteConfig.fromJson(
        GetStorage().read('Storage_Key_remote_config') ?? {});
  }

  static Future<void> setRemoteConfig(YcRemoteConfig remoteConfig) async {
    await GetStorage()
        .write('Storage_Key_remote_config', remoteConfig.toJson());
  }

////////////////////////////////////////////////////////////////////////////////////////////////

  static bool isInR() {
    int reviewExpiredTimestamp = YcConfig.reviewExpiredTimestamp();
    if (DateTime.now().millisecondsSinceEpoch < reviewExpiredTimestamp) {
      return true;
    }
    return false;
  }

  static int reviewExpiredTimestamp() {
    return GetStorage().read('Storage_Key_review_expired_timestamp') ?? 0;
  }

  static Future<void> setReviewExpiredTimestamp(
      int reviewExpiredTimestamp) async {
    await GetStorage()
        .write('Storage_Key_review_expired_timestamp', reviewExpiredTimestamp);
  }

  static bool isInterstitialAdEnableShow() {
    int lastInterstitialAdShowTimestamp =
        GetStorage().read('Storage_Key_last_interstitial_ad_show_timestamp') ??
            0;
    int diffMs = (DateTime.now().millisecondsSinceEpoch -
            lastInterstitialAdShowTimestamp)
        .abs();
    YcRemoteConfig remoteConfig = YcConfig.remoteConfig();
    int interstitialAdIntervalSec = remoteConfig.ad!.interstitialAdIntervalSec!;
    if (diffMs > interstitialAdIntervalSec * 1000) {
      return true;
    }
    return false;
  }

  static Future<void> setLastInterstitialAdShowTimestamp() async {
    await GetStorage().write('Storage_Key_last_interstitial_ad_show_timestamp',
        DateTime.now().millisecondsSinceEpoch);
    YcEvents.emit(EventsInterstitialAdStatusUpdate());
  }

  static bool isRewardAdEnableShow() {
    int lastRewardAdShowTimestamp =
        GetStorage().read('Storage_Key_last_reward_ad_show_timestamp') ?? 0;
    int diffMs =
        (DateTime.now().millisecondsSinceEpoch - lastRewardAdShowTimestamp)
            .abs();
    YcRemoteConfig remoteConfig = YcConfig.remoteConfig();
    int rewardAdIntervalSec = remoteConfig.ad!.rewardAdIntervalSec!;
    if (diffMs > rewardAdIntervalSec * 1000) {
      return true;
    }
    return false;
  }

  static Future<void> setLastRewardAdShowTimestamp() async {
    await GetStorage().write('Storage_Key_last_reward_ad_show_timestamp',
        DateTime.now().millisecondsSinceEpoch);
    YcEvents.emit(EventsRewardAdStatusUpdate());
  }

  ////////////////////////////////////////////////////////////////////////////////////////////////

  static bool isSignPrivacyPolicy() {
    return GetStorage().read('Storage_Key_is_sign_privacy_policy') ?? false;
  }

  static Future<void> setIsSignPrivacyPolicy() async {
    await GetStorage().write('Storage_Key_is_sign_privacy_policy', true);
  }

  static int lastRemoteConfigTimestamp() {
    return GetStorage().read('Storage_Key_last_remote_config_timestamp') ?? 0;
  }

  static Future<void> setLastRemoteConfigTimestamp() async {
    await GetStorage().write('Storage_Key_last_remote_config_timestamp',
        DateTime.now().millisecondsSinceEpoch);
  }

  ////////////////////////////////////////////////////////////////////////////////////////////////
  static Color primaryColor() {
    return Color(
        GetStorage().read('Storage_Key_color_value_primary') ?? 0xFF5dd0ff);
  }

  static Color primaryTextColor() {
    return Color(GetStorage().read('Storage_Key_color_value_primary_text') ??
        0xFF303133);
  }

  static Color primarySubTextColor() {
    return Color(
        GetStorage().read('Storage_Key_color_value_primary_sub_text') ??
            0xFF606266);
  }

  static String appName() {
    return GetStorage().read('Storage_Key_app_name') ?? '';
  }

  static String appStoreId() {
    return GetStorage().read('Storage_Key_app_store_id') ?? '';
  }

  static String packageName() {
    return GetStorage().read('Storage_Key_package_name') ?? '';
  }

  static String copyright() {
    return GetStorage().read('Storage_Key_copyright') ?? '';
  }

  static String wxAppId() {
    return GetStorage().read('Storage_Key_wx_app_id') ?? '';
  }

  static String wxAppSecret() {
    return GetStorage().read('Storage_Key_wx_app_secret') ?? '';
  }

  static String wxUniversalLink() {
    return GetStorage().read('Storage_Key_wx_universal_link') ?? '';
  }

  static String wxKfServiceUrl() {
    return GetStorage().read('Storage_Key_wx_kf_service_url') ?? '';
  }

  static String wxKfCorpId() {
    return GetStorage().read('Storage_Key_wx_kf_corp_id') ?? '';
  }

  static String logoUrl() {
    return GetStorage().read('Storage_Key_url_logo') ??
        'https://vkceyugu.cdn.bspapp.com/VKCEYUGU-484de5b1-d581-46f1-a68b-9dda7cc01b6f/8f2b7552-5dee-4eae-bbf9-00af9d53ab87.png';
  }

  static String defalutAvatarUrl() {
    return GetStorage().read('Storage_Key_url_defalut_avatar') ??
        'https://vkceyugu.cdn.bspapp.com/VKCEYUGU-484de5b1-d581-46f1-a68b-9dda7cc01b6f/8f2b7552-5dee-4eae-bbf9-00af9d53ab87.png';
  }

  static String userAgreementUrl() {
    return GetStorage().read('Storage_Key_url_user_agreement') ?? '';
  }

  static String privacyPolicyUrl() {
    return GetStorage().read('Storage_Key_url_privacy_policy') ?? '';
  }

  ////////////////////////////////////////////////////////////////////////////////////////////////

  static String apiHost() {
    return GetStorage().read('Storage_Key_apis_host') ?? '';
  }

  static String apiAppkey() {
    return GetStorage().read('Storage_Key_apis_app_key') ?? '';
  }

  static String apiAppSecret() {
    return GetStorage().read('Storage_Key_apis_app_secret') ?? '';
  }

  static String apiUriRemoteConfig() {
    return GetStorage().read('Storage_Key_apis_uri_remote_config') ?? '';
  }

  static String apiUriWalletInfo() {
    return GetStorage().read('Storage_Key_apis_uri_wallet_info') ?? '';
  }

  static String apiUriBehaviorInfo() {
    return GetStorage().read('Storage_Key_apis_uri_behavior_info') ?? '';
  }

  static String apiUriSubmitCashOut() {
    return GetStorage().read('Storage_Key_apis_uri_submit_cash_out') ?? '';
  }

  static String apiUriLogWallet() {
    return GetStorage().read('Storage_Key_apis_uri_log_wallet') ?? '';
  }

  static String apiUriLogCashOut() {
    return GetStorage().read('Storage_Key_apis_uri_log_cash_out') ?? '';
  }

  static String apiUriReportAppPraise() {
    return GetStorage().read('Storage_Key_apis_uri_report_app_praise') ?? '';
  }

  static String apiUriReportAdClick() {
    return GetStorage().read('Storage_Key_apis_uri_report_ad_click') ?? '';
  }

  static String apiUriReportRewardAdEvent() {
    return GetStorage().read('Storage_Key_apis_uri_report_reward_ad_event') ??
        '';
  }

  static String apiUriUserWelfareRe() {
    return GetStorage().read('Storage_Key_apis_uri_user_welfare_re') ?? '';
  }

  static String apiUriReceiveUserWelfareRe() {
    return GetStorage().read('Storage_Key_apis_uri_receive_user_welfare_re') ??
        '';
  }

  static String apiUriSubmitSign() {
    return GetStorage().read('Storage_Key_apis_uri_submit_sign') ?? '';
  }

  static String apiUriReceiveContinuitySign() {
    return GetStorage().read('Storage_Key_apis_uri_receive_continuity_sign') ??
        '';
  }

  static String apiUriReceiveTimerRewardRe() {
    return GetStorage().read('Storage_Key_apis_uri_receive_timer_reward_re') ??
        '';
  }

  ////////////////////////////////////////////////////////////////////////////////////////////////
  static String shareTitle() {
    return GetStorage().read('Storage_Key_share_title') ?? '';
  }

  static String shareDes() {
    return GetStorage().read('Storage_Key_share_des') ?? '';
  }

  static String shareLogo() {
    return GetStorage().read('Storage_Key_share_logo') ?? '';
  }

  static String shareUrl() {
    return GetStorage().read('Storage_Key_share_url') ?? '';
  }

  ////////////////////////////////////////////////////////////////////////////////////////////////

  static String pangleSplashAdId() {
    return GetStorage().read('Storage_Key_pangle_splash_ad_id') ?? '';
  }

  static String pangleInterstitialAdId() {
    return GetStorage().read('Storage_Key_pangle_interstitial_ad_id') ?? '';
  }

  static String pangleRewardAdId() {
    return GetStorage().read('Storage_Key_pangle_reward_ad_id') ?? '';
  }

  static String pangleBannerAdId() {
    return GetStorage().read('Storage_Key_pangle_banner_ad_id') ?? '';
  }

  static String pangleProfileBannerAdId() {
    return GetStorage().read('Storage_Key_pangle_profile_banner_ad_id') ?? '';
  }

  static String pangleWelfareReBannerAdId() {
    return GetStorage().read('Storage_Key_pangle_welfare_re_banner_ad_id') ??
        '';
  }

  ////////////////////////////////////////////////////////////////////////////////////////////////

  static String ua() {
    return GetStorage().read('Storage_Key_ua') ?? '';
  }
}
