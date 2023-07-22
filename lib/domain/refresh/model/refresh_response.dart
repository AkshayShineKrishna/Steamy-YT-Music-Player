import 'package:json_annotation/json_annotation.dart';

part 'refresh_response.g.dart';

@JsonSerializable()
class RefreshResponse {
  @JsonKey(name: 'message')
  String? message;
  @JsonKey(name: 'result')
  String? result;
  @JsonKey(name: 'deleted')
  int? deleted;
  @JsonKey(name: 'total_files')
  int? total;

  RefreshResponse({this.message, this.result,this.deleted,this.total});

  factory RefreshResponse.fromJson(Map<String, dynamic> json) {
    return _$RefreshResponseFromJson(json);
  }

  Map<String, dynamic> toJson() => _$RefreshResponseToJson(this);
}
