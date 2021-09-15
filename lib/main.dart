import 'package:flutter/material.dart';
import 'package:schedulex/DefaultTheme.dart';
import 'package:schedulex/screens/home/HomePage.dart';
import 'package:schedulex/screens/schedule/SchedulePage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Schedule X',
      theme: DefaultTheme().lightTheme,
      darkTheme: DefaultTheme().darkTheme,
      initialRoute: '/',
      routes: {
        '/': (context) => const HomePage(),
        '/schedule': (context) => const SchedulePage(),
      },
    );
  }
}
