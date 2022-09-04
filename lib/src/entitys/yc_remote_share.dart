import 'package:f_yc_config/f_yc_config.dart';

class YcRemoteShare {
  final String? title;
  final String? des;
  final String? url;
  final String? logo;

  const YcRemoteShare({this.title, this.des, this.url, this.logo});

  factory YcRemoteShare.fromJson(Map<String, dynamic> json) => YcRemoteShare(
      title: json["title"] ?? YcConfig.shareTitle(),
      des: json["des"] ?? YcConfig.shareDes(),
      url: json["url"] ?? YcConfig.shareUrl(),
      logo: json["logo"] ?? YcConfig.shareLogo());

  Map<String, dynamic> toJson() =>
      {"title": title, "des": des, "url": url, "logo": logo};
}
