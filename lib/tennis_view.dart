import 'package:flutter/material.dart';

class TennisView extends StatefulWidget {
  const TennisView({Key? key}) : super(key: key);

  @override
  State<TennisView> createState() => _TennisViewState();
}

class _TennisViewState extends State<TennisView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.network('https://upload.wikimedia.org/wikipedia/commons/thumb/3/3e/Tennis_Racket_and_Balls.jpg/1280px-Tennis_Racket_and_Balls.jpg', fit :BoxFit.cover),
      ),);
  }
}
