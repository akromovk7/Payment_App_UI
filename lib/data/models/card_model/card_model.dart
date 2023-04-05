import 'dart:convert';

import 'package:hive/hive.dart';

part 'card_model.g.dart';
CardModel cardModelFromJson(String str) => CardModel.fromJson(json.decode(str));

String cardModelToJson(CardModel data) => json.encode(data.toJson());

@HiveType(typeId: 1)
class CardModel {
    CardModel({
        required this.cardId,
        required this.cardNumber,
        required this.carvalidityPerioddId,
        required this.cardOwner,
        required this.moneyAmount,
        required this.iconImage,
        required this.gradinetColorFirst,
        required this.gradientColorSecond,
        required this.bankName,
        required this.cardType,
    });

    @HiveField(1) String cardId;
    @HiveField(2) String cardNumber;
    @HiveField(3) String carvalidityPerioddId;
    @HiveField(4) String cardOwner;
    @HiveField(5) String moneyAmount;
    @HiveField(6) String iconImage;
    @HiveField(7) String gradinetColorFirst;
    @HiveField(8) String gradientColorSecond;
    @HiveField(9) String bankName;
    @HiveField(10) String cardType;

    factory CardModel.fromJson(Map<String, dynamic> json) => CardModel(
        cardId: json["cardId"],
        cardNumber: json["cardNumber"],
        carvalidityPerioddId: json["carvalidityPerioddId"],
        cardOwner: json["cardOwner"],
        moneyAmount: json["moneyAmount"],
        iconImage: json["iconImage"],
        gradinetColorFirst: json["gradinetColorFirst"],
        gradientColorSecond: json["gradientColorSecond"],
        bankName: json["bankName"],
        cardType: json["cardType"],
    );

    Map<String, dynamic> toJson() => {
        "cardId": cardId,
        "cardNumber": cardNumber,
        "carvalidityPerioddId": carvalidityPerioddId,
        "cardOwner": cardOwner,
        "moneyAmount": moneyAmount,
        "iconImage": iconImage,
        "gradinetColorFirst": gradinetColorFirst,
        "gradientColorSecond": gradientColorSecond,
        "bankName": bankName,
        "cardType": cardType,
    };
}
