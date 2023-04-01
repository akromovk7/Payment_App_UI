class CardFields {
  static int cardId = cardId;
  static String cardNumber = cardNumber;
  static String validityPeriod = validityPeriod;
  static String cardOwner = cardOwner;
  static String moneyAmount = moneyAmount;
  static String iconImage = iconImage;
  static String gradinetColorFirst = gradinetColorFirst;
  static String gradientColorSecond = gradientColorSecond;
  static String bankName = bankName;
  static String cardType = cardType;
}

class CardModel {
  final int cardId;
  final String cardNumber;
  final String validityPeriod;
  final String cardOwner;
  final String moneyAmount;
  final String iconImage;
  final String gradinetColorFirst;
  final String gradientColorSecond;
  final String bankName;
  final String cardType;

  CardModel({
    required this.moneyAmount,
    required this.cardId,
    required this.cardNumber,
    required this.validityPeriod,
    required this.cardOwner,
    required this.iconImage,
    required this.gradinetColorFirst,
    required this.gradientColorSecond,
    required this.cardType,
    required this.bankName,
  });

  factory CardModel.fromJson(Map<String, dynamic> jsonData) {
    return CardModel(
      moneyAmount: jsonData['moneyAmount'] as String? ?? '',
      cardId: jsonData['cardId'] as int? ?? -1,
      cardNumber: jsonData['cardNumber'] as String? ?? '',
      validityPeriod: jsonData['validityPeriod'] as String? ?? '',
      cardOwner: jsonData['cardOwner'] as String? ?? '',
      iconImage: jsonData['iconImage'] as String? ?? '',
      gradinetColorFirst: jsonData['gradinetColorFirst'] as String? ?? '',
      gradientColorSecond: jsonData['gradientColorSecond'] as String? ?? '',
      cardType: jsonData['cardType'] as String? ?? '',
      bankName: jsonData['bankName'] as String? ?? '',
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'moneyAmount': moneyAmount,
      'cardId': cardId,
      'cardNumber': cardNumber,
      'validityPeriod': validityPeriod,
      'cardOwner': cardOwner,
      'iconImage': iconImage,
      'gradinetColorFirst': gradinetColorFirst,
      'gradientColorSecond': gradientColorSecond,
      'bankName': bankName,
      'cardType': cardType,
    };
  }

  @override
  String toString() {
    return '''
      moneyAmount: $moneyAmount
      cardId : $cardId,
      cardNumber: $cardNumber,
      validityPeriod: $validityPeriod,
      cardOwner: $cardOwner,
      iconImage: $iconImage,
      gradinetColorFirst: $gradinetColorFirst,
      gradientColorSecond: $gradientColorSecond,
      bankName: $bankName,
      cardType: $cardType,
      ''';
  }

  CardModel copyWith({
    String? moneyAmount,
    int? cardId,
    String? cardNumber,
    String? validityPeriod,
    String? cardOwner,
    String? iconImage,
    String? gradinetColorFirst,
    String? gradientColorSecond,
    String? bankName,
    String? cardType,
  }) =>
      CardModel(
        moneyAmount: moneyAmount ?? this.moneyAmount,
        cardId: cardId ?? this.cardId,
        cardNumber: cardNumber ?? this.cardNumber,
        validityPeriod: validityPeriod ?? this.validityPeriod,
        cardOwner: cardOwner ?? this.cardOwner,
        iconImage: iconImage ?? this.iconImage,
        gradinetColorFirst: gradinetColorFirst ?? this.gradinetColorFirst,
        gradientColorSecond: gradientColorSecond ?? this.gradientColorSecond,
        bankName: bankName ?? this.bankName,
        cardType: cardType ?? this.cardType,
      );
}
