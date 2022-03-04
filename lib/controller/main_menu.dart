import 'package:flutter/material.dart';
import 'package:vaganza/controller/account.dart';
import 'package:vaganza/controller/playing.dart';
import 'package:vaganza/controller/upcoming.dart';

class MainMenu extends StatefulWidget {
  const MainMenu({Key? key}) : super(key: key);

  @override
  _MainMenu createState() => _MainMenu();
}

class _MainMenu extends State<MainMenu> {
  int selectedPage = 0;

  final _page = [const Playing(), const Upcoming(), const Account()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _page[selectedPage],
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.play_arrow_outlined),
            label: 'Playing',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.upcoming_outlined),
            label: 'Upcoming',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            label: 'Account',
          ),
        ],
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.black,
        currentIndex: selectedPage,
        backgroundColor: Colors.white,
        onTap: (index) {
          setState(() {
            selectedPage = index;
          });
        },
      ),
    );
  }
}
