// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'downloads_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DownloadsResponse _$DownloadsResponseFromJson(Map<String, dynamic> json) =>
    DownloadsResponse(
      result: (json['result'] as List<dynamic>?)
              ?.map((e) => ResultData.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$DownloadsResponseToJson(DownloadsResponse instance) =>
    <String, dynamic>{
      'result': instance.result,
    };

ResultData _$ResultDataFromJson(Map<String, dynamic> json) => ResultData(
      filename: json['filename'] as String?,
      title: json['title'] as String?,
      videoId: json['videoId'] as String?,
    );

Map<String, dynamic> _$ResultDataToJson(ResultData instance) =>
    <String, dynamic>{
      'filename': instance.filename,
      'title': instance.title,
      'videoId': instance.videoId,
    };
