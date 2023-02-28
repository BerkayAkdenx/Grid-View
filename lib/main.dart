import 'package:flutter/material.dart';
import 'package:grid_view/basketball_view.dart';
import 'package:grid_view/home_view.dart';
import 'package:grid_view/soccer_view.dart';
import 'package:grid_view/tennis_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomeView(),
    );
  }
}
