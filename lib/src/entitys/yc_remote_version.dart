class YcRemoteVersion {
  final String? title;
  final String? note;
  final String? url;
  final String? version;

  const YcRemoteVersion({this.title, this.note, this.url, this.version});

  factory YcRemoteVersion.fromJson(Map<String, dynamic> json) =>
      YcRemoteVersion(
          title: json["title"] ?? '',
          note: json["note"] ?? '',
          url: json["url"] ?? '',
          version: json["version"] ?? '');

  Map<String, dynamic> toJson() =>
      {"title": title, "note": note, "url": url, "version": version};
}
