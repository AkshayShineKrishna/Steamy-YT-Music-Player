import 'package:json_annotation/json_annotation.dart';

part 'delete_response.g.dart';

@JsonSerializable()
class DeleteResponse {
  @JsonKey(name: 'message')
  String? message;
  @JsonKey(name: 'result')
  String? result;
  @JsonKey(name: 'deleted')
  int? deleted;
  @JsonKey(name: 'total_files')
  int? total;

  DeleteResponse({this.message, this.result,this.deleted,this.total});

  factory DeleteResponse.fromJson(Map<String, dynamic> json) {
    return _$DeleteResponseFromJson(json);
  }

  Map<String, dynamic> toJson() => _$DeleteResponseToJson(this);
}
