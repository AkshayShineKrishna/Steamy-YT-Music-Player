// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_audio_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetAudioResponse _$GetAudioResponseFromJson(Map<String, dynamic> json) =>
    GetAudioResponse(
      result: (json['result'] as List<dynamic>?)
              ?.map((e) => ResultData.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$GetAudioResponseToJson(GetAudioResponse instance) =>
    <String, dynamic>{
      'result': instance.result,
    };

ResultData _$ResultDataFromJson(Map<String, dynamic> json) => ResultData(
      filename: json['filename'] as String?,
      title: json['title'] as String?,
      videoId: json['videoId'] as String?,
      artist: json['channel'] as String?,
    );

Map<String, dynamic> _$ResultDataToJson(ResultData instance) =>
    <String, dynamic>{
      'filename': instance.filename,
      'title': instance.title,
      'videoId': instance.videoId,
      'channel': instance.artist,
    };
