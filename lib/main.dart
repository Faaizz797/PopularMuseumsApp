import 'package:flutter/material.dart';
import 'package:worlds_popular_museums/popularmuseums/museum_main.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MuseumMain(),
    );
  }
}
