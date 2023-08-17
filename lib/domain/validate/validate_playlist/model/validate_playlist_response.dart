import 'package:json_annotation/json_annotation.dart';
part 'validate_playlist_response.g.dart';

@JsonSerializable()
class ValidatePlaylistResponse {
  @JsonKey(name: 'result')
  List<PlalistResultResponse>? result;

  ValidatePlaylistResponse({this.result});

  factory ValidatePlaylistResponse.fromJson(Map<String, dynamic> json) {
    return _$ValidatePlaylistResponseFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ValidatePlaylistResponseToJson(this);
}

@JsonSerializable()
class PlalistResultResponse {
  @JsonKey(name: 'total_duration')
  String? totalDuration;

  PlalistResultResponse({this.totalDuration});

  factory PlalistResultResponse.fromJson(Map<String, dynamic> json) {
    return _$PlalistResultResponseFromJson(json);
  }

  Map<String, dynamic> toJson() => _$PlalistResultResponseToJson(this);
}
