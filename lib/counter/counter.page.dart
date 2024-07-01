import 'package:bloc_test/counter/bloc/counter.bloc.dart';
import 'package:bloc_test/counter/counter.view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterPage extends StatelessWidget {
  const CounterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (BuildContext ctx) => CounterBloc()),
      ],
      child: const CounterView(),
    );
  }
}
