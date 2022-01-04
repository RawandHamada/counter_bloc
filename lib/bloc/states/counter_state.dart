abstract class CounterState{}

class CounterInitialState extends CounterState{
  int counter=0;

}
class CounterUpdaterState extends CounterState{
  int counter;
  CounterUpdaterState(this.counter);

}
class CounterErrorState   extends CounterState{
  String massege;
  CounterErrorState(this.massege);
}