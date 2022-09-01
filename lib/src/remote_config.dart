import 'index.dart';

class RemoteConfig {
  final RemoteAd? ad;
  final RemoteShare? share;
  final RemoteVersion? version;
  final List? apps;

  const RemoteConfig({this.ad, this.share, this.version, this.apps});

  factory RemoteConfig.fromJson(Map<String, dynamic> json) {
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
    return RemoteConfig(
      ad: RemoteAd.fromJson(json["ad"] ?? {}),
      share: RemoteShare.fromJson(json["share"] ?? {}),
      version: RemoteVersion.fromJson(json["version"] ?? {}),
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
