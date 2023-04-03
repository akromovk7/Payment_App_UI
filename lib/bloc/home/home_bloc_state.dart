import 'package:payment_card_ui/data/models/card_model/card_model.dart';

abstract class HomeState {}

// GET CARDS
class InitialStateGet extends HomeState {}

class LoadInProgressGet extends HomeState {}

class LoadInSuccessGet extends HomeState {
  List<CardModel> cards;
  LoadInSuccessGet({required this.cards});
}

class LoadFailureGet extends HomeState {
  String errorText;
  LoadFailureGet({required this.errorText});
}

/// ADD CARDS
class LoadInProgressAdd extends HomeState {}

class LoadInSuccessAdd extends HomeState {}

class LoadInFailureAdd extends HomeState {}

/// UPDATE CARDS
class LoadInProgressUpdate extends HomeState {}

class LoadInSuccessUpdate extends HomeState {}

class LoadInFailureUpdate extends HomeState {}

/// DELETE CARDS
class LoadInProgressDelete extends HomeState {}

class LoadInSuccessDelete extends HomeState {}

class LoadInFailureDelete extends HomeState {}
