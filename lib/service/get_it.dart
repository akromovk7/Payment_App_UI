import 'package:get_it/get_it.dart';
import 'package:payment_card_ui/data/repository/card_repo.dart';

final getIt = GetIt.instance;

void setup() {
  getIt.registerLazySingleton(() => CardRepository());
}
