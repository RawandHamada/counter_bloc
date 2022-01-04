
import 'package:counter_bloc/bloc/events/counter_events.dart';
import 'package:counter_bloc/bloc/states/counter_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterBloc extends Bloc<CounterEvents,CounterState>{
  int counter=0;
  CounterBloc(CounterState initialState) : super(initialState){
    on<Increment>(onIncrement);
    on<Decrement>(onDecrement);


  }
void onIncrement (Increment event ,Emitter emit){
  emit(CounterUpdaterState(++counter));
}
void onDecrement (Decrement event ,Emitter emit){
    if(counter>0){
      emit(CounterUpdaterState(--counter));

    }else{
      emit(CounterErrorState('Error count reach zero'));
    }

}

  void increment(){
    emit(CounterUpdaterState(++counter));
}
  void decrement(){
    
    if(counter >0)
    emit(CounterUpdaterState(--counter));
    else
      emit(CounterErrorState('Counter Value Reach  Zero!'));
}


}