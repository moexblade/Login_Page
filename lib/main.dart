import 'package:flutter/material.dart';
import 'package:login_ui/features/welcome/presentation/welcome.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Simple Auth App",
      theme: ThemeData(fontFamily: 'PlayfairDisplay'),
      debugShowCheckedModeBanner: false,
      home: const Welcome(),
    );
  }
}

