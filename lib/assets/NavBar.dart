import 'package:flutter/material.dart';

import 'package:transwift/homepage_body.dart';
import 'package:transwift/views/Profile/profile.dart';
import 'package:transwift/views/Trip/my_trip.dart';

class NavBar extends StatefulWidget {
  final int selectedIndex;

  const NavBar({super.key, required this.selectedIndex});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      height: 50,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          IconButton(
            icon: const Icon(Icons.home),
            onPressed: () => _onItemTapped(0),
            color: widget.selectedIndex == 0 ? Colors.blue : Colors.black,
            iconSize: widget.selectedIndex == 0 ? 30 : 24,
          ),
          IconButton(
            icon: const Icon(Icons.map_outlined),
            onPressed: () => _onItemTapped(1),
            color: widget.selectedIndex == 1 ? Colors.blue : Colors.black,
            iconSize: widget.selectedIndex == 1 ? 30 : 24,
          ),
          IconButton(
            icon: const Icon(Icons.account_circle),
            onPressed: () => _onItemTapped(2),
            color: widget.selectedIndex == 2 ? Colors.blue : Colors.black,
            iconSize: widget.selectedIndex == 2 ? 30 : 24,
          ),
        ],
      ),
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
    switch (index) {
      case 0:
        Navigator.of(context)
            .pushReplacement(_createRoute(const HomepageBody()));
        break;
      case 1:
        Navigator.of(context).pushReplacement(_createRoute(const MyTrip()));
        break;
      case 2:
        Navigator.of(context).pushReplacement(_createRoute(const Profile()));
        break;
    }
  }

  Route _createRoute(Widget page) {
    return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) => page,
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        const begin = Offset(1.0, 0.0);
        const end = Offset.zero;
        const curve = Curves.easeInOut;

        var tween =
            Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

        return SlideTransition(
          position: animation.drive(tween),
          child: child,
        );
      },
    );
  }
}
