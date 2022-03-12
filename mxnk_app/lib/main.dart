import 'package:flutter/material.dart';
import 'package:mxnk_app/ui/screens/my_routines_screen.dart';
import 'package:mxnk_app/ui/util/constants.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mxnk',
      theme: ThemeData(
        textTheme: Theme.of(context).textTheme.apply(
          fontFamily: 'Comfortaa',
          bodyColor: MxnkColors.jet,
          displayColor: MxnkColors.jet,
        ),
        floatingActionButtonTheme: FloatingActionButtonThemeData(backgroundColor: MxnkColors.jet)
      ),
      home: const MyRoutinesScreen(),
    );
  }
}
