// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'validate_song_data_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ValidateSongDataResponse _$ValidateSongDataResponseFromJson(
        Map<String, dynamic> json) =>
    ValidateSongDataResponse(
      result: (json['result'] as List<dynamic>?)
          ?.map((e) => SongDataResult.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ValidateSongDataResponseToJson(
        ValidateSongDataResponse instance) =>
    <String, dynamic>{
      'result': instance.result,
    };

SongDataResult _$SongDataResultFromJson(Map<String, dynamic> json) =>
    SongDataResult(
      artist: json['artist'] as String? ?? '',
      songDuration: json['song_duration'] as String? ?? '0 sec',
      songKey: json['song_key'] as String? ?? '',
      title: json['title'] as String? ?? '',
    );

Map<String, dynamic> _$SongDataResultToJson(SongDataResult instance) =>
    <String, dynamic>{
      'artist': instance.artist,
      'song_duration': instance.songDuration,
      'song_key': instance.songKey,
      'title': instance.title,
    };
