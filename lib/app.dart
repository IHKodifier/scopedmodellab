import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:scoped_model_lab/bloc/authentication_bloc.dart';
import 'package:scoped_model_lab/bloc/counter_bloc.dart';

import 'homepage.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<CounterBloc>.value(
          value: CounterBloc(),
        ),
         ChangeNotifierProvider<AuthenticationBloc>.value(
          value: AuthenticationBloc(),),
      ],
      child: MaterialApp(
        title: 'State management Lab',
        theme: ThemeData(
          primarySwatch: Colors.orange,
        ),
        home: MyHomePage(),
      ),
    );
  }
}
