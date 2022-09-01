class YcRemoteShare {
  final String? title;
  final String? des;
  final String? url;
  final String? logo;

  const YcRemoteShare({this.title, this.des, this.url, this.logo});

  factory YcRemoteShare.fromJson(Map<String, dynamic> json) => YcRemoteShare(
      // title: json["title"] ?? ComponentsStorages.shareTitle(),
      // des: json["des"] ?? ComponentsStorages.shareDes(),
      // url: json["url"] ?? ComponentsStorages.shareUrl(),
      // logo: json["logo"] ?? ComponentsStorages.shareLogo()
      );

  Map<String, dynamic> toJson() =>
      {"title": title, "des": des, "url": url, "logo": logo};
}
