import 'package:flutter_wekan/components/index.dart';

class RemoteShare {
  final String? title;
  final String? des;
  final String? url;
  final String? logo;

  const RemoteShare({this.title, this.des, this.url, this.logo});

  factory RemoteShare.fromJson(Map<String, dynamic> json) => RemoteShare(
      title: json["title"] ?? ComponentsStorages.shareTitle(),
      des: json["des"] ?? ComponentsStorages.shareDes(),
      url: json["url"] ?? ComponentsStorages.shareUrl(),
      logo: json["logo"] ?? ComponentsStorages.shareLogo());

  Map<String, dynamic> toJson() =>
      {"title": title, "des": des, "url": url, "logo": logo};
}
