class YcJson {
  final int? reviewExpiredTimestamp;
  final int? primaryColor;
  final int? primaryTextColor;
  final int? primarySubTextColor;
  final String? appName;
  final String? appStoreId;
  final String? packageName;
  final String? copyright;
  final String? wxAppId;
  final String? wxAppSecret;
  final String? wxUniversalLink;
  final String? wxKfServiceUrl;
  final String? wxKfCorpId;
  final String? logoUrl;
  final String? defalutAvatarUrl;
  final String? userAgreementUrl;
  final String? privacyPolicyUrl;
  final String? pangleAppId;
  final String? pangleSplashAdId;
  final String? pangleInterstitialAdId;
  final String? pangleRewardAdId;
  final String? pangleBannerAdId;
  final String? pangleProfileBannerAdId;
  final String? pangleWelfareReBannerAdId;
  final String? mtjAppKeyIos;
  final String? mtjAppKeyAndroid;
  final String? apiHost;
  final String? apiAppkey;
  final String? apiAppSecret;
  final String? apiUriRemoteConfig;
  final String? apiUriWalletInfo;
  final String? apiUriBehaviorInfo;
  final String? apiUriSubmitCashOut;
  final String? apiUriLogWallet;
  final String? apiUriLogCashOut;
  final String? apiUriReportAppPraise;
  final String? apiUriReportAdClick;
  final String? apiUriReportRewardAdEvent;
  final String? apiUriUserWelfareRe;
  final String? apiUriReceiveUserWelfareRe;
  final String? apiUriReceiveTimerRewardRe;
  final String? apiUriSubmitSign;
  final String? receiveContinuitySign;
  final String? shareTitle;
  final String? shareDes;
  final String? shareLogo;
  final String? shareUrl;

  const YcJson(
      {this.reviewExpiredTimestamp,
      this.primaryColor,
      this.primaryTextColor,
      this.primarySubTextColor,
      this.appName,
      this.appStoreId,
      this.packageName,
      this.copyright,
      this.wxAppId,
      this.wxAppSecret,
      this.wxUniversalLink,
      this.wxKfServiceUrl,
      this.wxKfCorpId,
      this.logoUrl,
      this.defalutAvatarUrl,
      this.userAgreementUrl,
      this.privacyPolicyUrl,
      this.pangleAppId,
      this.pangleSplashAdId,
      this.pangleInterstitialAdId,
      this.pangleRewardAdId,
      this.pangleBannerAdId,
      this.pangleProfileBannerAdId,
      this.pangleWelfareReBannerAdId,
      this.mtjAppKeyIos,
      this.mtjAppKeyAndroid,
      this.apiHost,
      this.apiAppkey,
      this.apiAppSecret,
      this.apiUriRemoteConfig,
      this.apiUriWalletInfo,
      this.apiUriBehaviorInfo,
      this.apiUriSubmitCashOut,
      this.apiUriLogWallet,
      this.apiUriLogCashOut,
      this.apiUriReportAppPraise,
      this.apiUriReportAdClick,
      this.apiUriReportRewardAdEvent,
      this.apiUriUserWelfareRe,
      this.apiUriReceiveUserWelfareRe,
      this.apiUriReceiveTimerRewardRe,
      this.apiUriSubmitSign,
      this.receiveContinuitySign,
      this.shareTitle,
      this.shareDes,
      this.shareLogo,
      this.shareUrl});

  factory YcJson.fromJson(Map<String, dynamic> json) => YcJson(
        reviewExpiredTimestamp: json["reviewExpiredTimestamp"] ?? 0,
        primaryColor: int.parse(json["primaryColor"] ?? 0xFF5dd0ff),
        primaryTextColor: int.parse(json["primaryTextColor"] ?? 0xFF303133),
        primarySubTextColor:
            int.parse(json["primarySubTextColor"] ?? 0xFF606266),
        appName: json["appName"] ?? '',
        appStoreId: json["appStoreId"] ?? '',
        packageName: json["packageName"] ?? '',
        copyright: json["copyright"] ?? '',
        wxAppId: json["wxAppId"] ?? '',
        wxAppSecret: json["wxAppSecret"] ?? '',
        wxUniversalLink: json["wxUniversalLink"] ?? '',
        wxKfServiceUrl: json["wxKfServiceUrl"] ?? '',
        wxKfCorpId: json["wxKfCorpId"] ?? '',
        logoUrl: json["logoUrl"] ?? '',
        defalutAvatarUrl: json["defalutAvatarUrl"] ?? '',
        userAgreementUrl: json["userAgreementUrl"] ?? '',
        privacyPolicyUrl: json["privacyPolicyUrl"] ?? '',
        pangleAppId: json["pangleAppId"] ?? '',
        pangleSplashAdId: json["pangleSplashAdId"] ?? '',
        pangleInterstitialAdId: json["pangleInterstitialAdId"] ?? '',
        pangleRewardAdId: json["pangleRewardAdId"] ?? '',
        pangleBannerAdId: json["pangleBannerAdId"] ?? '',
        pangleProfileBannerAdId: json["pangleProfileBannerAdId"] ?? '',
        pangleWelfareReBannerAdId: json["pangleWelfareReBannerAdId"] ?? '',
        mtjAppKeyIos: json["mtjAppKeyIos"] ?? '',
        mtjAppKeyAndroid: json["mtjAppKeyAndroid"] ?? '',
        apiHost: json["apiHost"] ?? '',
        apiAppkey: json["apiAppkey"] ?? '',
        apiAppSecret: json["apiAppSecret"] ?? '',
        apiUriRemoteConfig: json["apiUriRemoteConfig"] ?? '',
        apiUriWalletInfo: json["apiUriWalletInfo"] ?? '',
        apiUriBehaviorInfo: json["apiUriBehaviorInfo"] ?? '',
        apiUriSubmitCashOut: json["apiUriSubmitCashOut"] ?? '',
        apiUriLogWallet: json["apiUriLogWallet"] ?? '',
        apiUriLogCashOut: json["apiUriLogCashOut"] ?? '',
        apiUriReportAppPraise: json["apiUriReportAppPraise"] ?? '',
        apiUriReportAdClick: json["apiUriReportAdClick"] ?? '',
        apiUriReportRewardAdEvent: json["apiUriReportRewardAdEvent"] ?? '',
        apiUriUserWelfareRe: json["apiUriUserWelfareRe"] ?? '',
        apiUriReceiveUserWelfareRe: json["apiUriReceiveUserWelfareRe"] ?? '',
        apiUriReceiveTimerRewardRe: json["apiUriReceiveTimerRewardRe"] ?? '',
        apiUriSubmitSign: json["apiUriSubmitSign"] ?? '',
        receiveContinuitySign: json["receiveContinuitySign"] ?? '',
        shareTitle: json["shareTitle"] ?? '',
        shareDes: json["shareDes"] ?? '',
        shareLogo: json["shareLogo"] ?? '',
        shareUrl: json["shareUrl"] ?? '',
      );
}
