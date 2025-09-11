import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:table_calendar/table_calendar.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  MainApp({super.key});

  DateTime now = DateTime.now();
  

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child:TableCalendar(
            firstDay: DateTime(2000, 7, 13),
            lastDay: DateTime(2025, 12, 31),
            focusedDay: DateTime.now(),
            currentDay:   DateTime.now(),
        ),
      ),
    ));
  }
}
