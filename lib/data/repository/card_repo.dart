import 'package:payment_card_ui/data/database/local_database.dart';
import 'package:payment_card_ui/data/models/card_model/card_model.dart';

class CardRepository {
  static final CardRepository _instance = CardRepository._();

  factory CardRepository() {
    return _instance;
  }

  CardRepository._();

  ///Add card
  Future<CardModel> insertCard(CardModel cardModel) =>
      LocalDatabase.insertToDatabase(cardModel);

  ///Delete card
  Future<int> deleteCard(int cardId) => LocalDatabase.deleteCardById(cardId);

  ///Update card
  Future<CardModel> updateCard(CardModel cardModel) =>
      LocalDatabase.updateTaskById(cardModel);

  ///Get all card
  Future<List<CardModel>> getAllCards() => LocalDatabase.getAllCards();
}
