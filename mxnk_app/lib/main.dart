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
        scaffoldBackgroundColor: MxnkColors.white,
        appBarTheme: AppBarTheme(
          color: MxnkColors.white,
          titleTextStyle: TextStyle(color: MxnkColors.mediumTurquoise, fontFamily: 'Comfortaa'),
          centerTitle: false,
          elevation: 0,
          iconTheme: IconThemeData(color: MxnkColors.mediumTurquoise, size: 15),
          titleSpacing: -30,
        ),
        textTheme: Theme.of(context).textTheme.apply(
              fontFamily: 'Comfortaa',
              bodyColor: MxnkColors.jet,
              displayColor: MxnkColors.jet,
            ),
        floatingActionButtonTheme: FloatingActionButtonThemeData(
          backgroundColor: MxnkColors.jet,
        ),
        textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(
            primary: MxnkColors.deepTaupe,
          ),
        ),
      ),
      home: const MyRoutinesScreen(),
    );
  }
}
