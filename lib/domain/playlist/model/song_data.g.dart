// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'song_data.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class SongDataAdapter extends TypeAdapter<SongData> {
  @override
  final int typeId = 1;

  @override
  SongData read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return SongData(
      fields[0] as String,
      fields[1] as String,
      fields[2] as String,
      fields[3] as String,
      fields[4] as String,
    );
  }

  @override
  void write(BinaryWriter writer, SongData obj) {
    writer
      ..writeByte(5)
      ..writeByte(0)
      ..write(obj.title)
      ..writeByte(1)
      ..write(obj.url)
      ..writeByte(2)
      ..write(obj.artist)
      ..writeByte(3)
      ..write(obj.songKey)
      ..writeByte(4)
      ..write(obj.songDuration);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SongDataAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
