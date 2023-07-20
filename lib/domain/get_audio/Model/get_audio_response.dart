import 'package:json_annotation/json_annotation.dart';

part 'downloads_response.g.dart';

@JsonSerializable()
class DownloadsResponse {
  @JsonKey(name: 'result')
  List<ResultData> result;

  DownloadsResponse({this.result = const []});

  factory DownloadsResponse.fromJson(Map<String, dynamic> json) {
    return _$DownloadsResponseFromJson(json);
  }

  Map<String, dynamic> toJson() => _$DownloadsResponseToJson(this);
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
