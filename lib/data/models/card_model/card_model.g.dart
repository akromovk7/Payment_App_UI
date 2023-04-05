// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'card_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class CardModelAdapter extends TypeAdapter<CardModel> {
  @override
  final int typeId = 1;

  @override
  CardModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return CardModel(
      cardId: fields[1] as String,
      cardNumber: fields[2] as String,
      carvalidityPerioddId: fields[3] as String,
      cardOwner: fields[4] as String,
      moneyAmount: fields[5] as String,
      iconImage: fields[6] as String,
      gradinetColorFirst: fields[7] as String,
      gradientColorSecond: fields[8] as String,
      bankName: fields[9] as String,
      cardType: fields[10] as String,
    );
  }

  @override
  void write(BinaryWriter writer, CardModel obj) {
    writer
      ..writeByte(10)
      ..writeByte(1)
      ..write(obj.cardId)
      ..writeByte(2)
      ..write(obj.cardNumber)
      ..writeByte(3)
      ..write(obj.carvalidityPerioddId)
      ..writeByte(4)
      ..write(obj.cardOwner)
      ..writeByte(5)
      ..write(obj.moneyAmount)
      ..writeByte(6)
      ..write(obj.iconImage)
      ..writeByte(7)
      ..write(obj.gradinetColorFirst)
      ..writeByte(8)
      ..write(obj.gradientColorSecond)
      ..writeByte(9)
      ..write(obj.bankName)
      ..writeByte(10)
      ..write(obj.cardType);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CardModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
