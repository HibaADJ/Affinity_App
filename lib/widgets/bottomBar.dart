import 'package:affinity_game/favoritesPage.dart';
import 'package:affinity_game/settings.dart';
import 'package:affinity_game/welcomPage.dart';
import 'package:affinity_game/widgets/card.dart';
import 'package:affinity_game/widgets/usersList.dart';
import 'package:flutter/material.dart';

import '../home.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({super.key});

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  List<Widget> WidgetOption = <Widget>[
    UsersList(),
    FavoritesPage(),
    Sittings()
  ];
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: currentIndex,
          backgroundColor: Colors.grey[300],
          items: const [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                size: 40,
                color: Colors.black,
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.favorite,
                size: 40,
                color: Colors.black,
              ),
              label: 'Favorites',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.settings,
                size: 40,
                color: Colors.black,
              ),
              label: 'Settings',
            ),
          ],
          onTap: (index) {
            setState(() {
              currentIndex = index;
            });
          },
        ),
        body: WidgetOption.elementAt(currentIndex),
        appBar: AppBar(
          leading: Padding(
            padding: const EdgeInsets.only(left: 10),
            child: const CircleAvatar(
              backgroundImage: AssetImage('images/hiba.jpg'),
              radius: 80,
            ),
          ),
          title: const Text.rich(TextSpan(children: [
            TextSpan(
                text: 'Adjmi Hibat\n',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                )),
            TextSpan(
                text: 'adjmihibat@gmail.com',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 17,
                ))
          ])),
          centerTitle: false,
          backgroundColor: Colors.grey[300],
          toolbarHeight: 100,
        ),
      ),
    );
  }
}
