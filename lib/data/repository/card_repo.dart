import 'package:payment_card_ui/data/database/local_database.dart';
import 'package:payment_card_ui/data/models/card_model/card_model.dart';

class CardRepository {
  static final CardRepository _instance = CardRepository._();

  factory CardRepository() {
    return _instance;
  }

  CardRepository._();

  ///Add card
  Future<void> insertCard(CardModel cardModel) async {}
      // LocalDatabase.insertToDatabase(cardModel);

  ///Delete card
  Future<void> deleteCard(int cardId) async {} 
  // => LocalDatabase.deleteCardById(cardId);

  ///Update card
  Future<void> updateCard(CardModel cardModel) async {}
      // LocalDatabase.updateTaskById(cardModel);

  ///Get all card
  Future<void> getAllCards() async {}
  // => LocalDatabase.getAllCards();
}
