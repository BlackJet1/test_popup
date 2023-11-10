import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'bloc/accept_bloc.dart';

class InitPage extends StatelessWidget {
  const InitPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener(
      bloc: BlocProvider.of<AcceptBloc>(context),
      listener: (context, state) {
        if (state is SingleState) {
          if (state.accepted) {
            Navigator.pushNamed(context, '/success');
          }
        }
      },
      child: BlocBuilder(
          bloc: BlocProvider.of<AcceptBloc>(context),
          builder: (context, state) {
            if (state is SingleState) {
              return Center(
                  child: ElevatedButton(
                onPressed: () {
                  context.read<AcceptBloc>().add(AEshowPopup(context));
                },
                child: const Text('Start'),
              ));
            }
            return const Center(child: CircularProgressIndicator());
          }),
    );
  }
}
