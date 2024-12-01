class Episodes {
  final String serverName; //server_name
  final ServerData serverData; //server_data

  const Episodes({
    required this.serverName,
    required this.serverData,
  });

  factory Episodes.fromJson(Map<String, dynamic> json) {
    return Episodes(
      serverName: json['server_name'],
      serverData: ServerData.fromJson(json['server_data']),
    );
  }
}

class ServerData {
  final String name;
  final String slug;
  final String filename;
  final String linkEmbed; //link_embed
  final String linkM3u8; //link_m3u8

  const ServerData({
    required this.name,
    required this.slug,
    required this.filename,
    required this.linkEmbed,
    required this.linkM3u8,
  });

  factory ServerData.fromJson(Map<String, dynamic> json) {
    return ServerData(
      name: json['name'],
      slug: json['slug'],
      filename: json['filename'],
      linkEmbed: json['link_embed'],
      linkM3u8: json['link_m3u8'],
    );
  }
}
