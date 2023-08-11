// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'playlist_data.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class PlaylistDataAdapter extends TypeAdapter<PlaylistData> {
  @override
  final int typeId = 0;

  @override
  PlaylistData read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return PlaylistData(
      fields[0] as String,
      (fields[1] as List).cast<SongData>(),
      fields[2] as String?,
      fields[3] as String,
      fields[4] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, PlaylistData obj) {
    writer
      ..writeByte(5)
      ..writeByte(0)
      ..write(obj.name)
      ..writeByte(1)
      ..write(obj.songs)
      ..writeByte(2)
      ..write(obj.mood)
      ..writeByte(3)
      ..write(obj.duration)
      ..writeByte(4)
      ..write(obj.description);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PlaylistDataAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
