import 'package:bloc/bloc.dart';

class PagesCubit extends Cubit<int> {
  PagesCubit() : super(0);

  void setPages(int newPages) {
    emit(newPages);
  }
}
