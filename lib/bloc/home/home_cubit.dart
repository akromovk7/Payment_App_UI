import 'package:bloc/bloc.dart';
import 'package:payment_card_ui/bloc/home/home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeInitialState());
}