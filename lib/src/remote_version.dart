class RemoteVersion {
  final String? title;
  final String? note;
  final String? url;
  final String? version;

  const RemoteVersion({this.title, this.note, this.url, this.version});

  factory RemoteVersion.fromJson(Map<String, dynamic> json) => RemoteVersion(
      title: json["title"] ?? '',
      note: json["note"] ?? '',
      url: json["url"] ?? '',
      version: json["version"] ?? '');

  Map<String, dynamic> toJson() =>
      {"title": title, "note": note, "url": url, "version": version};
}
