import 'package:hive_flutter/hive_flutter.dart';
part 'song_data.g.dart';

@HiveType(typeId: 1)
class SongData extends HiveObject {
  @HiveField(0)
  String title;

  @HiveField(1)
  String url;

  @HiveField(2)
  String artist;

  @HiveField(3)
  String songKey;

  @HiveField(4)
  String songDuration;

  SongData(this.title, this.url, this.artist, this.songKey, this.songDuration);
}
