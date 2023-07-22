// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'refresh_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RefreshResponse _$RefreshResponseFromJson(Map<String, dynamic> json) =>
    RefreshResponse(
      message: json['message'] as String?,
      result: json['result'] as String?,
      deleted: json['deleted'] as int?,
      total: json['total_files'] as int?,
    );

Map<String, dynamic> _$RefreshResponseToJson(RefreshResponse instance) =>
    <String, dynamic>{
      'message': instance.message,
      'result': instance.result,
      'deleted': instance.deleted,
      'total_files': instance.total,
    };
