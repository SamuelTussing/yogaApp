import 'package:flutter/material.dart';
import 'package:yoga/welcome_page.dart';

const d_red = Color.fromARGB(223, 202, 13, 29);


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Yoga App',
      debugShowCheckedModeBanner: false,
      home: WelcomePage(),
    );
  }
}
