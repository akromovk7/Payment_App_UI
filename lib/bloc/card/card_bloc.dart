import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:payment_card_ui/data/models/card_model/card_model.dart';
import 'package:payment_card_ui/service/service_db.dart';

part 'card_event.dart';
part 'card_state.dart';
part 'card_bloc.freezed.dart';

class CardBloc extends Bloc<CardEvent, CardState> {
  CardBloc() : super(const _CardState()) {
    on<_GetCard>(_getCard);
    on<_AddCard>(_addCard);
  }

  Future<void> _getCard(_GetCard _getCard, Emitter<CardState> emit) async {
    List res = await DbService.readList(key: "cards");
    List<CardModel> card =
        res.map((e) => CardModel.fromJson(e.toJson())).toList();
    emit(state.copyWith(cards: card));
  }

  Future<void> _addCard(_AddCard _addCard, Emitter<CardState> emit) async {
    print("====================");
    var res = await DbService.writeList(
      key: "cards",
      value: _addCard.cardModel,
    );
    print("====================");

    List<CardModel> card =
        res.map((e) => CardModel.fromJson(e.toJson())).toList();
    emit(
      state.copyWith(
        cards: card,
        cardImage: '',
        gradientValue: 1.0,
        cardName: '',
      ),
    );
  }
}
