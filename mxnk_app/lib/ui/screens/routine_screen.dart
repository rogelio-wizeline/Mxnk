// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:mxnk_app/ui/util/constants.dart';

class RoutineScreen extends StatefulWidget {
  const RoutineScreen({Key? key}) : super(key: key);

  @override
  State<RoutineScreen> createState() => _RoutineScreenState();
}

class _RoutineScreenState extends State<RoutineScreen> {
  List<Map<String, String>> _exercises = [];

  @override
  void initState() {
    // TODO: fetch exercise list from Firebase
    // TODO: use models
    _exercises = [
      {"name": "Sentadilla"},
      {"name": "Press pata"},
      {"name": "Peso muerto rumano"},
      {"name": "Sentadilla sumo"},
      {"name": "Sentadilla búlgara"},
      {"name": "Cuádriceps máquina"},
      {"name": "Curl máquina"},
      {"name": "Abrir pata"},
      {"name": "Cerrar pata"},
    ];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: TextButton(
            child: Text('Your routines', style: TextStyle(fontWeight: FontWeight.w300, fontSize: 13, color: MxnkColors.mediumTurquoise),),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ),
        body: SafeArea(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 45, vertical: 10),
            child: ListView(
              children: [
                Text(
                  'Routine',
                  style: TextStyle(fontWeight: FontWeight.w300, fontSize: 20),
                ),
                Text(
                  'Pata',
                  style: TextStyle(fontWeight: FontWeight.w700, fontSize: 36),
                ),
                SizedBox(height: 100),
                _my_exercises_list(),
              ],
            ),
          ),
        ),
        floatingActionButton: Container(
          height: 80,
          width: 160,
          child: FloatingActionButton(
            onPressed: () {},
            // TODO: build NewExerciseScreen
            // onPressed: () {
            //   Navigator.of(context).push(
            //     MaterialPageRoute(
            //       builder: (BuildContext context) => NewExerciseScreen()
            //     ),
            //   );
            // },
            child: Text(
              'Add exercise',
              style: TextStyle(fontSize: 20),
            ),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(15))),
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.endFloat);
  }

  Widget _my_exercises_list() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: _exercises.map((Map<String, String> exercise) {
        return Column(
          children: [
            TextButton(
                onPressed: () {},
                // TODO: build RoutineScreen
                // onPressed: () {
                //   Navigator.of(context).push(
                //     MaterialPageRoute(
                //       builder: (BuildContext context) => ExerciseScreen()
                //     ),
                //   );
                // },
                child: Text(
                  exercise["name"] ?? '',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
                )),
            SizedBox(height: 15),
          ],
        );
      }).toList(),
    );
  }
}
