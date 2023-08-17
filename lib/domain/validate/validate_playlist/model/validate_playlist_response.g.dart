// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'validate_playlist_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ValidatePlaylistResponse _$ValidatePlaylistResponseFromJson(
        Map<String, dynamic> json) =>
    ValidatePlaylistResponse(
      result: (json['result'] as List<dynamic>?)
          ?.map(
              (e) => PlalistResultResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ValidatePlaylistResponseToJson(
        ValidatePlaylistResponse instance) =>
    <String, dynamic>{
      'result': instance.result,
    };

PlalistResultResponse _$PlalistResultResponseFromJson(
        Map<String, dynamic> json) =>
    PlalistResultResponse(
      totalDuration: json['total_duration'] as String?,
    );

Map<String, dynamic> _$PlalistResultResponseToJson(
        PlalistResultResponse instance) =>
    <String, dynamic>{
      'total_duration': instance.totalDuration,
    };
