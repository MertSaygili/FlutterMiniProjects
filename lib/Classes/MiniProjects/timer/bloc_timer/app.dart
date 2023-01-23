import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project1_change_appbar_color/Classes/MiniProjects/timer/bloc_timer/timer_cubit.dart';

class TimerApp extends StatelessWidget {
  const TimerApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => TimerCubit(),
      child: BlocConsumer<TimerCubit, TimerStates>(
        listener: (context, state) {},
        builder: (context, state) {
          if (state is DummyState) {
            return Scaffold(
              body: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      onPressed: () => context.read<TimerCubit>().startTimer(10),
                      child: const Text('Start timer'),
                    ),
                    state.counter == 0
                        ? GestureDetector(
                            onTap: () => context.read<TimerCubit>().startTimer(10),
                            child: const Text('Timer is over, tap to restart'),
                          )
                        : Text(state.counter.toString()),
                  ],
                ),
              ),
            );
          }
          return const Scaffold();
        },
      ),
    );
  }
}
