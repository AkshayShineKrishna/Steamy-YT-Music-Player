// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delete_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DeleteResponse _$DeleteResponseFromJson(Map<String, dynamic> json) =>
    DeleteResponse(
      message: json['message'] as String?,
      result: json['result'] as String?,
      deleted: json['deleted'] as int?,
      total: json['total_files'] as int?,
    );

Map<String, dynamic> _$DeleteResponseToJson(DeleteResponse instance) =>
    <String, dynamic>{
      'message': instance.message,
      'result': instance.result,
      'deleted': instance.deleted,
      'total_files': instance.total,
    };
