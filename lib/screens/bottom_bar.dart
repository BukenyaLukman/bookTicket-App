import 'package:bookticket/screens/home_screen.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({Key? key}) : super(key: key);

  @override
  _BottomBarState createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  // List Widgets
  // Navigating through the widgets
  int _selectIndex = 0;
  static final List<Widget> _widgetOptions = <Widget>[
      HomeScreen(),
      const Text("Search"),
      const Text("Tickets"),
      const Text("Profile"),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectIndex = index;
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("My Tickets"),
      ),
      body: Center(
          child: _widgetOptions[_selectIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: _onItemTapped,
        currentIndex: _selectIndex,
        type: BottomNavigationBarType.fixed,
        elevation:10,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedItemColor: Colors.blueGrey,
        unselectedItemColor: const Color(0xFF526480),
        items: const [
          BottomNavigationBarItem(icon: Icon(FluentSystemIcons.ic_fluent_home_regular),
              activeIcon: Icon(FluentSystemIcons.ic_fluent_home_filled),
              label: "Home"),
          BottomNavigationBarItem(icon: Icon(FluentSystemIcons.ic_fluent_search_regular),
              activeIcon: Icon(FluentSystemIcons.ic_fluent_search_regular),
              label: "Search"),
          BottomNavigationBarItem(icon: Icon(FluentSystemIcons.ic_fluent_ticket_regular),
              activeIcon: Icon(FluentSystemIcons.ic_fluent_ticket_filled),
              label: "Ticket"),
          BottomNavigationBarItem(icon: Icon(FluentSystemIcons.ic_fluent_person_regular),
              activeIcon: Icon(FluentSystemIcons.ic_fluent_search_filled),
              label: "Profile"),
        ],
      ),
    );
  }
}
