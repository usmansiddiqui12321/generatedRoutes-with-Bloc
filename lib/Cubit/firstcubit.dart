import 'package:flutter_bloc/flutter_bloc.dart';

class FirstCubtit extends Cubit<int> {
  FirstCubtit() : super(0) ;
    void increament() => emit(state + 1);
  
}
