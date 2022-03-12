// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:mxnk_app/ui/screens/routine_screen.dart';

class MyRoutinesScreen extends StatefulWidget {
  const MyRoutinesScreen({Key? key}) : super(key: key);

  @override
  State<MyRoutinesScreen> createState() => _MyRoutinesScreenState();
}

class _MyRoutinesScreenState extends State<MyRoutinesScreen> {
  List<Map<String, String>> _routines = [];

  @override
  void initState() {
    // TODO: fetch routine list from Firebase
    // TODO: use models
    _routines = [
      {"name": "Pata"},
      {"name": "Pecho & espalda"},
      {"name": "Brazo & hombro & glúteo"},
    ];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
          child: Container(
            padding: EdgeInsets.all(45),
            child: ListView(
              children: [
                Text(
                  'Your',
                  style: TextStyle(fontWeight: FontWeight.w700, fontSize: 36),
                ),
                Text(
                  'Routines',
                  style: TextStyle(fontWeight: FontWeight.w300, fontSize: 36),
                ),
                SizedBox(height: 100),
                _my_routines_list(),
              ],
            ),
          ),
        ),
        floatingActionButton: Container(
          height: 80,
          width: 160,
          child: FloatingActionButton(
            onPressed: () {},
            // TODO: build NewRoutineScreen
            // onPressed: () {
            //   Navigator.of(context).push(
            //     MaterialPageRoute(
            //       builder: (BuildContext context) => NewRoutineScreen()
            //     ),
            //   );
            // },
            child: Text(
              'Add routine',
              style: TextStyle(fontSize: 20),
            ),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(15))),
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.endFloat);
  }

  Widget _my_routines_list() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: _routines.map((Map<String, String> routine) {
        return Column(
          children: [
            TextButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (BuildContext context) => RoutineScreen()
                    ),
                  );
                },
                child: Text(
                  routine["name"] ?? '',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
                )),
            SizedBox(height: 15),
          ],
        );
      }).toList(),
    );
  }
}
