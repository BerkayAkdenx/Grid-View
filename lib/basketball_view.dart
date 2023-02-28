import 'package:flutter/material.dart';

class BasketballView extends StatefulWidget {
  const BasketballView({Key? key}) : super(key: key);

  @override
  State<BasketballView> createState() => _BasketballViewState();
}

class _BasketballViewState extends State<BasketballView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
        child: Image.network('https://a4.espncdn.com/combiner/i?img=%2Fi%2Fespn%2Fmisc_logos%2F500%2Fnba.png', fit :BoxFit.cover),
    ),);
  }
}
