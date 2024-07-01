abstract class CounterEvent {}

class IncrementCounter extends CounterEvent {
  final int howMuch;

  IncrementCounter({this.howMuch = 1});
}

class DecrementCounter extends CounterEvent {
  final int howMuch;

  DecrementCounter({this.howMuch = 1});
}
