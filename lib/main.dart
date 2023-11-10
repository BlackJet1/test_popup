import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:testpopup/screen/init/bloc/accept_bloc.dart';

import 'screen/init/core_widget.dart';
import 'screen/success/core_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AcceptBloc(),
      child: MaterialApp(
          title: 'Flutter Demo',
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.blueGrey),
            useMaterial3: true,
          ),
          initialRoute: '/init',
          routes: {
            '/init': (BuildContext context) =>
                const Scaffold(body: Center(child: InitPage())),
            '/success': (BuildContext context) =>
                const Scaffold(body: SuccsessPage()),
          }),
    );
  }
}
