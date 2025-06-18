import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Stack(
          children: [
          Positioned(
            top: 50,
            left: 0,
            child: TableCalendar(
                firstDay: DateTime(2000, 1, 1),
                lastDay: DateTime(2100, 12, 31),
                focusedDay: DateTime.now(),
                currentDay: DateTime.now(),
                onDaySelected: (selectedDay, focusedDay) => {
                  Text('Selected day: $selectedDay, Focused day: $focusedDay'),
                }
              ),
          ),
        ])
      )
      );
  }
}
