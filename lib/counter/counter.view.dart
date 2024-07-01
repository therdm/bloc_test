import 'package:bloc_test/counter/bloc/counter.bloc.dart';
import 'package:bloc_test/counter/bloc/counter.event.dart';
import 'package:bloc_test/counter/bloc/counter.state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterView extends StatelessWidget {
  const CounterView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Builder(
              builder: (BuildContext newContext) {
                return Text('The current value of counter is ${newContext.watch<CounterBloc>().state.count}');
              }
            ),
            Text('The current value of counter is '
                '${BlocProvider.of<CounterBloc>(context, listen: false).state.count}'),
            BlocBuilder<CounterBloc, CounterState>(
              builder: (BuildContext newContext, CounterState counter) {
                return Text(
                  '${counter.count}',
                  textScaler: const TextScaler.linear(2),
                );
              },
            ),
          ],
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FloatingActionButton(
            child: Icon(Icons.exposure_minus_2),
            onPressed: () {
              context.read<CounterBloc>().add(DecrementCounter(howMuch: 2));
            },
          ),
          const SizedBox(width: 4),
          FloatingActionButton(
            child: Icon(Icons.exposure_minus_1),
            onPressed: () {
              context.read<CounterBloc>().add(DecrementCounter());
            },
          ),
          const SizedBox(width: 4),
          FloatingActionButton(
            child: Icon(Icons.exposure_plus_1),
            onPressed: () {
              context.read<CounterBloc>().add(IncrementCounter());
            },
          ),
          const SizedBox(width: 4),
          FloatingActionButton(
            child: Icon(Icons.exposure_plus_2),
            onPressed: () {
              context.read<CounterBloc>().add(IncrementCounter(howMuch: 2));
            },
          ),
        ],
      ),
    );
  }
}

class Xyz extends StatelessWidget {
  const Xyz({super.key});

  @override
  Widget build(BuildContext context) {
    // context.read<CounterBloc>();
    return Scaffold(
      body: const Placeholder(),
    );
  }
}
