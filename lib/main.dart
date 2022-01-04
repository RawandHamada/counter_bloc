import 'package:counter_bloc/Screens/main_screen.dart';
import 'package:counter_bloc/bloc/bloc/counter_bloc.dart';
import 'package:counter_bloc/bloc/states/counter_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_)=> CounterBloc(CounterInitialState()),
      child: MaterialApp(
        initialRoute: '/main_screen',
        routes:{
          '/main_screen':(context)=> MainScreen(),
        }
        ,
      ),
    );
  }
}
