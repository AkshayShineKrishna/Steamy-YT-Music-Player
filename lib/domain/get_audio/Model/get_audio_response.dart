import 'package:json_annotation/json_annotation.dart';

part 'get_audio_response.g.dart';

@JsonSerializable()
class GetAudioResponse {
  @JsonKey(name: 'result')
  List<ResultData> result;

  GetAudioResponse({this.result = const []});

  factory GetAudioResponse.fromJson(Map<String, dynamic> json) {
    return _$GetAudioResponseFromJson(json);
  }

  Map<String, dynamic> toJson() => _$GetAudioResponseToJson(this);
}

@JsonSerializable()
class ResultData {
  @JsonKey(name: 'filename')
  String? filename;
  @JsonKey(name: 'title')
  String? title;
  @JsonKey(name: 'videoId')
  String? videoId;
  @JsonKey(name: 'channel')
  String? artist;

  ResultData({this.filename, this.title, this.videoId, this.artist});

  factory ResultData.fromJson(Map<String, dynamic> json) {
    return _$ResultDataFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ResultDataToJson(this);
}
