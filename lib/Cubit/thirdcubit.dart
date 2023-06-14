import 'package:flutter_bloc/flutter_bloc.dart';

class ThirdCubtit extends Cubit<int> {
  ThirdCubtit() : super(0);
  void increament() => emit(state + 1);
}
