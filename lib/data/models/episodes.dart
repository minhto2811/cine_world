import 'package:isar/isar.dart';
part 'episodes.g.dart';
@embedded
class Episodes {
  final String? serverName; //server_name
  final List<ServerData>? serverData; //server_data

  const Episodes({
    this.serverName,
    this.serverData,
  });

  static List<Episodes> parseEpisodesList(List<dynamic> jsonList) {
    return jsonList
        .map((e) => Episodes.fromJson(e as Map<String, dynamic>))
        .toList();
  }

  factory Episodes.fromJson(Map<String, dynamic> json) {
    return Episodes(
      serverName: json['server_name'],
      serverData:
          ServerData.parseServerDataList(json['server_data'] as List<dynamic>),
    );
  }
}

@embedded
class ServerData {
  final String? name;
  final String? slug;
  final String? filename;
  final String? linkEmbed; //link_embed
  final String? linkM3u8; //link_m3u8

  const ServerData({
    this.name,
    this.slug,
    this.filename,
    this.linkEmbed,
    this.linkM3u8,
  });

  static List<ServerData> parseServerDataList(List<dynamic> jsonList) {
    return jsonList
        .map((e) => ServerData.fromJson(e as Map<String, dynamic>))
        .toList();
  }

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
