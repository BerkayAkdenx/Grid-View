import 'package:flutter/material.dart';

class SoccerView extends StatefulWidget {
  const SoccerView({Key? key}) : super(key: key);

  @override
  State<SoccerView> createState() => _SoccerViewState();
}

class _SoccerViewState extends State<SoccerView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.network(
            'https://image.api.playstation.com/vulcan/img/rnd/202111/0822/zDXM9K2cQiq0vKTDwF0TkAor.png',
            fit: BoxFit.cover),
      ),
    );
  }
}
