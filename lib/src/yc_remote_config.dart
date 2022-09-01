import 'index.dart';

class YcRemoteConfig {
  final YcRemoteAd? ad;
  final YcRemoteShare? share;
  final YcRemoteVersion? version;
  final List? apps;

  const YcRemoteConfig({this.ad, this.share, this.version, this.apps});

  factory YcRemoteConfig.fromJson(Map<String, dynamic> json) {
    // var appsMapList = json["apps"] ?? [];
    // List<EntitysRemoteConfigApps> appsList = [];
    // for (var i = 0; i < appsMapList.length; i++) {
    //   var item = appsMapList[i] ?? {};
    //   if (item != null) {
    //     String image = item['image'] ?? '';
    //     String url = item['url'] ?? '';
    //     EntitysRemoteConfigApps thisApp =
    //         EntitysRemoteConfigApps.fromJson({"image": image, "url": url});
    //     appsList.add(thisApp);
    //   }
    // }
    return YcRemoteConfig(
      ad: YcRemoteAd.fromJson(json["ad"] ?? {}),
      share: YcRemoteShare.fromJson(json["share"] ?? {}),
      version: YcRemoteVersion.fromJson(json["version"] ?? {}),
      apps: json["apps"] ?? [],
    );
  }

  Map<String, dynamic> toJson() => {
        "ad": ad!.toJson(),
        "share": share!.toJson(),
        "version": version!.toJson(),
        "apps": apps!
      };
}
