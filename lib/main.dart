import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:worlds_popular_museums/popularmuseums/museum_main.dart';

void main() {
  runApp(DevicePreview(
    enabled: true,
    builder: (context) => const MainApp(),
  ));
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      useInheritedMediaQuery: true,
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'Staatliches'),
      home: const MuseumMain(),
    );
  }
}
