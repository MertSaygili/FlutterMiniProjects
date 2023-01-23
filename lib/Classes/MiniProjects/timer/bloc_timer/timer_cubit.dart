import 'dart:async';

import 'package:bloc/bloc.dart';

class TimerCubit extends Cubit<TimerStates> {
  TimerCubit() : super(const DummyState(120));

  int startingTime = 10;

  void startTimer(int time) {
    startingTime = time;
    emit(const TimerInitial());
    emit(DummyState(startingTime));

    Timer timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (startingTime == 0) {
        timer.cancel();
      } else {
        startingTime--;
        emit(const TimerInitial());
        emit(DummyState(startingTime));
      }
    });
  }
}

abstract class TimerStates {
  const TimerStates();
}

class DummyState extends TimerStates {
  final int counter;
  const DummyState(this.counter);
}

class TimerInitial extends TimerStates {
  const TimerInitial();
}
