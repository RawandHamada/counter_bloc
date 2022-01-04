
import 'package:counter_bloc/bloc/bloc/counter_bloc.dart';
import 'package:counter_bloc/bloc/events/counter_events.dart';
import 'package:counter_bloc/bloc/states/counter_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Main'),
        actions: [
          IconButton(onPressed: (){
            BlocProvider.of<CounterBloc>(context).add(Decrement());
          }, icon: Icon(Icons.remove)),
        ],
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){
        BlocProvider.of<CounterBloc>(context).add(Increment());
      },child: Icon(Icons.add),),
      body:
      BlocBuilder<CounterBloc,CounterState>(
        builder:(context, CounterState state) {
          if (state is CounterUpdaterState) {
            return Center(
                child:
                Text('counter : ${state.counter}'));
          } else if(state is CounterErrorState){
            return Center(child: Text(state.massege));
          }else {
            CounterInitialState initialState=state as CounterInitialState;
            return Center(child: Text(state.counter.toString()));
          }
        }

      ) ,
    );
  }
}
