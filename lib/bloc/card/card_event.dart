part of 'card_bloc.dart';

@freezed
abstract class CardEvent with _$CardEvent {
  factory CardEvent.getCard() = _GetCard;

  factory CardEvent.addCard({
    required CardModel cardModel,
  }) = _AddCard;
}
