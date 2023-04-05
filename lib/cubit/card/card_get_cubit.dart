// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:payment_card_ui/cubit/card/card_get_cubit_state.dart';
// import 'package:payment_card_ui/data/models/card_model/card_model.dart';
// import 'package:payment_card_ui/data/repository/card_repo.dart';

// class GetCardsCubit extends Cubit<GetCardsState> {
//   final CardRepository cardRepository;

//   GetCardsCubit({required this.cardRepository}) : super(GetCardsInitial()) {
//     fetchAllContacts();
//   }

//   fetchAllContacts() {
//     emit(GetCardsInLoading());
//     cardRepository.getAllCards().((List<CardModel> cards) {
//       emit(
//         GetCardsInSuccess(cards: cards),
//       );
//     });
//   }
// }
