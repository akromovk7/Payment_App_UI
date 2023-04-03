import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:payment_card_ui/bloc/home/home_bloc_event.dart';
import 'package:payment_card_ui/bloc/home/home_bloc_state.dart';
import 'package:payment_card_ui/data/models/card_model/card_model.dart';
import 'package:payment_card_ui/data/repository/card_repo.dart';
import 'package:payment_card_ui/service/get_it.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(InitialStateGet()) {
    on<UpdateCard>(updateCard);
    on<DeleteCard>(deleteCard);
    on<FetchAllCards>(fetchAllCards);
    on<AddCard>(addCard);
  }

  updateCard(UpdateCard event, Emitter<HomeState> emit) async {
    emit(LoadInProgressUpdate());
    await getIt.get<CardRepository>().updateCard(event.card);
    emit(LoadInSuccessUpdate());
  }

  deleteCard(DeleteCard event, Emitter<HomeState> emit) async {
    emit(LoadInProgressDelete());
    await getIt.get<CardRepository>().deleteCard(event.cardId);
    emit(LoadInSuccessDelete());
  }

  fetchAllCards(FetchAllCards event, Emitter<HomeState> emit) async {
    emit(LoadInProgressGet());
    List<CardModel> cards = await getIt.get<CardRepository>().getAllCards();
    if (cards.isNotEmpty) {
      emit(LoadInSuccessGet(cards: cards));
    } else {
      emit(LoadFailureGet(errorText: "No information yet"));
    }
  }

  addCard(AddCard event, Emitter<HomeState> emit) async {
    emit(LoadInProgressAdd());
    await getIt.get<CardRepository>().insertCard(event.card);
    emit(LoadInSuccessAdd());
  }
}