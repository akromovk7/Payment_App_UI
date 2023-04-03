import 'package:bloc/bloc.dart';

class HomeCubit extends Cubit<int> {
  HomeCubit() : super(0);
  int activePageIndex = 0;

  void changePageIndex(int newIndex) {
    emit(activePageIndex = newIndex);
  }
}