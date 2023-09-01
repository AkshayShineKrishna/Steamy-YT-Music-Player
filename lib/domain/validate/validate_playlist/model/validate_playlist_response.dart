import 'package:json_annotation/json_annotation.dart';
part 'validate_playlist_response.g.dart';

@JsonSerializable()
class ValidatePlaylistResponse {
  @JsonKey(name: 'duration')
  String? duration;

  ValidatePlaylistResponse({this.duration});

  factory ValidatePlaylistResponse.fromJson(Map<String, dynamic> json) {
    return _$ValidatePlaylistResponseFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ValidatePlaylistResponseToJson(this);
}
