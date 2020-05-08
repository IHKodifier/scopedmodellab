import 'package:flutter/material.dart';
import 'package:scoped_model_lab/bloc/authentication_bloc.dart';
import 'package:scoped_model_lab/bloc/counter_bloc.dart';
import 'package:provider/provider.dart';

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final CounterBloc counterBloc = Provider.of<CounterBloc>(context);
    final AuthenticationBloc authenticationBloc =
        Provider.of<AuthenticationBloc>(context);

    return Scaffold(
      // appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              authenticationBloc.authenticatedUser,
              style: TextStyle(fontSize: 26),
            ),
            Text(
              authenticationBloc.lastSignIn,
              style: TextStyle(fontSize: 16),
            ),
            Text(
              authenticationBloc.lastModified,
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
