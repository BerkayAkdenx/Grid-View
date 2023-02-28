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
  final List<int> _selectedItems = [];

  void _toggleSelection(int index) {
    setState(() {
      if (_selectedItems.contains(index)) {
        _selectedItems.remove(index);
      } else {
        _selectedItems.add(index);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: GridView.builder(
            scrollDirection: Axis.horizontal,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, childAspectRatio: 2 / 1),
            itemCount: (pageNames.length),
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  // Navigator.push(context,MaterialPageRoute(builder: (context) => pages[index]));
                  _toggleSelection(index);
                },
                child: Card(
                  color: _selectedItems.contains(index)
                      ? Colors.blue.withOpacity(0.5)
                      : Colors.white,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(pageNames[index]),
                    ],
                  ),
                ),
              );
            }));
  }
}
