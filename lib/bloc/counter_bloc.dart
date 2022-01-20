import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
part 'counter_event.dart';

class CounterBloc extends Bloc<CounterEvent, int> {
  CounterBloc() : super(0) {
    
    on<CounterEvent>((event, emit) => {
      if(event is IncrementEvent){
      emit(state + 1)
      }
      else{
        emit(state - 1)
      }
    }
    );
  }
}
