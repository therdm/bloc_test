import 'package:bloc_test/counter/bloc/counter.event.dart';
import 'package:bloc_test/counter/bloc/counter.state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(CounterState()) {
    on<IncrementCounter>((IncrementCounter event, Emitter<CounterState> emit) {
      emit(CounterState(state.count + event.howMuch));
    });
    on<DecrementCounter>((DecrementCounter event, Emitter<CounterState> emit) {
      emit(CounterState(state.count - event.howMuch));
    });
  }

}