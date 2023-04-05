import 'package:payment_card_ui/data/models/card_model/card_model.dart';

abstract class GetCardsState {}

class GetCardsInitial extends GetCardsState {}

class GetCardsInLoading extends GetCardsState {}

class GetCardsInSuccess extends GetCardsState {
  GetCardsInSuccess({required this.cards});

  final List<CardModel> cards;
}