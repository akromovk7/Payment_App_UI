import 'package:payment_card_ui/data/models/card_model/card_model.dart';

abstract class HomeEvent {}

class AddCard extends HomeEvent {
  CardModel card;
  AddCard({required this.card});
}

class UpdateCard extends HomeEvent {
  CardModel card;
  UpdateCard({required this.card});
}

class DeleteCard extends HomeEvent {
  int cardId;
  DeleteCard({required this.cardId});
}

class FetchAllCards extends HomeEvent {}
