import 'package:flutter/material.dart';
import 'package:smartyou/pages/home_page.dart';
import 'package:smartyou/pages/profie_page.dart';

class WidgetPath extends StatefulWidget {
  const WidgetPath({super.key});

  @override
  State<WidgetPath> createState() => _WidgetPathState();
}

class _WidgetPathState extends State<WidgetPath> {
  int currentPage = 0;

  List<Widget> pages = [
   const HomePage(), const ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages.elementAt(currentPage),
      bottomNavigationBar: NavigationBar(
        destinations: const [
          NavigationDestination(icon: Icon(Icons.home), label: 'Home'),
          NavigationDestination(icon: Icon(Icons.person), label: 'Profile'),
        ],
        selectedIndex: currentPage,
        onDestinationSelected: (int value) {
          setState(() {
            currentPage = value;
          });
        },
      ),
    );
  }
}
