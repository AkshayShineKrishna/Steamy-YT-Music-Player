import 'package:hive_flutter/hive_flutter.dart';
import 'package:steamy/domain/playlist/model/song_data.dart';
part 'playlist_data.g.dart';

@HiveType(typeId: 0)
class PlaylistData extends HiveObject {
  @HiveField(0)
  String name;

  @HiveField(1)
  List<SongData> songs;

  @HiveField(2)
  String? mood;

  @HiveField(3)
  String duration;

  @HiveField(4)
  String? description;

  PlaylistData(this.name, this.songs, this.mood, this.duration, this.description);
}
