import 'package:flutter/material.dart';
import 'package:grid_view/basketball_view.dart';
import 'package:grid_view/soccer_view.dart';
import 'package:grid_view/tennis_view.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  List<String> pageNames = ['BasketBoll', 'Futbol', 'Tenis'];
  List<Widget> pages = [BasketballView(), SoccerView(), TennisView()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, childAspectRatio: 2 / 1),
            itemCount: (pageNames.length),
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => pages[index]));
                },
                child: Card(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [Text(pageNames[index])],
                  ),
                ),
              );
            }));
  }
}
