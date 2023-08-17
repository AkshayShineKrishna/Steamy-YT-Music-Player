import 'package:json_annotation/json_annotation.dart';
part 'validate_song_data_response.g.dart';

@JsonSerializable()
class ValidateSongDataResponse {
  @JsonKey(name: 'result')
  List<SongDataResult>? result;

  ValidateSongDataResponse({this.result});

  factory ValidateSongDataResponse.fromJson(Map<String, dynamic> json) {
    return _$ValidateSongDataResponseFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ValidateSongDataResponseToJson(this);
}

@JsonSerializable()
class SongDataResult {
  @JsonKey(name: 'artist')
  String? artist;
  @JsonKey(name: 'song_duration')
  String? songDuration;
  @JsonKey(name: 'song_key')
  String? songKey;
  @JsonKey(name: 'title')
  String? title;

  SongDataResult({this.artist, this.songDuration, this.songKey, this.title});

  factory SongDataResult.fromJson(Map<String, dynamic> json) {
    return _$SongDataResultFromJson(json);
  }

  Map<String, dynamic> toJson() => _$SongDataResultToJson(this);
}
