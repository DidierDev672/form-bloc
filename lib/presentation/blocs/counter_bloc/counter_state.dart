part of 'counter_bloc.dart';

class CounterState extends Equatable {
  final int counter;
  final int transactions;
  const CounterState({
    this.counter = 10,
    this.transactions = 0,
  });

  CounterState copyWith({
    int? counter,
    int? transactionCount,
  }) =>
      CounterState(
        counter: counter ?? this.counter,
        transactions: transactionCount ?? transactions,
      );

  @override
  List<Object> get props => [counter, transactions];
}

final class CounterInitial extends CounterState {}
