// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:mxnk_app/ui/util/constants.dart';

class ExerciseScreen extends StatefulWidget {
  const ExerciseScreen({Key? key}) : super(key: key);

  @override
  State<ExerciseScreen> createState() => _seriescreenState();
}

class _seriescreenState extends State<ExerciseScreen> {
  List<Map<String, String>> _series = [];

  @override
  void initState() {
    // TODO: fetch exercise list from Firebase
    // TODO: use models
    _series = [
      {"weight": "10", "unit": "kg", "reps": "15"},
      {"weight": "15", "unit": "kg", "reps": "12"},
      {"weight": "20", "unit": "kg", "reps": "6"},
    ];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: TextButton(
            // TODO: instead of 'Routine', display the name of the selected routine
            child: Text(
              'Routine',
              style: TextStyle(
                  fontWeight: FontWeight.w300,
                  fontSize: 13,
                  color: MxnkColors.mediumTurquoise),
            ),
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
                  'Exercise',
                  style: TextStyle(fontWeight: FontWeight.w300, fontSize: 20),
                ),
                Text(
                  'Press pata',
                  style: TextStyle(fontWeight: FontWeight.w700, fontSize: 36),
                ),
                SizedBox(height: 100),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Weight",
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 20,
                          color: MxnkColors.jet),
                    ),
                    Text(
                      "Reps",
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 20,
                          color: MxnkColors.jet),
                    ),
                  ],
                ),
                SizedBox(height: 50),
                _seriesList(),
              ],
            ),
          ),
        ),
        floatingActionButton: Container(
          height: 80,
          width: 160,
          child: FloatingActionButton(
            onPressed: () {},
            // onPressed: () {
            // TODO: bottomSheet selectors to add serie
            // },
            child: Text(
              'Add serie',
              style: TextStyle(fontSize: 20),
            ),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(15))),
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.endFloat);
  }

  Widget _seriesList() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: _series.map((Map<String, String> serie) {
        return Column(
          children: [
            TextButton(
                onPressed: () {},
                // onPressed: () {
                // TODO: bottomSheet selectors for editing
                // },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "${serie["weight"]} ${serie["unit"]}",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
                    ),
                    Text(
                      serie["reps"] ?? '',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
                    ),
                  ],
                )),
            SizedBox(height: 15),
          ],
        );
      }).toList(),
    );
  }
}
