// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class MyRoutinesScreen extends StatelessWidget {
  const MyRoutinesScreen({Key? key}) : super(key: key);

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
                // TODO: Use models and data
                Text(
                  'Pata',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
                ),
                SizedBox(height: 30),
                Text(
                  'Pecho & espalda',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
                ),
                SizedBox(height: 30),
                Text(
                  'Brazo & hombro & glúteo',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
                ),
              ],
            ),
          ),
        ),
        floatingActionButton: Container(
          height: 80,
          width: 150,
          child: FloatingActionButton(
            onPressed: () {},
            child: Text('Add routine', style: TextStyle(fontSize: 20),),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(15))
            ),
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.endFloat);
  }
}
