import 'package:flutter/material.dart';
import 'package:flutter_lab/lab2.dart';
import 'package:flutter_lab/lab3.dart';
import 'lab1.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: NavigationRailPage(),
    );
  }
}

class NavigationRailPage extends StatefulWidget {
  const NavigationRailPage({super.key});

  @override
  State<NavigationRailPage> createState() => _NavigationRailPageState();
}

const _navBarItems = [
  BottomNavigationBarItem(
    icon: Icon(Icons.looks_one_outlined),
    activeIcon: Icon(Icons.looks_one_rounded),
    label: 'Lab 1',
  ),
  BottomNavigationBarItem(
    icon: Icon(Icons.looks_two_outlined),
    activeIcon: Icon(Icons.looks_two_rounded),
    label: 'Lab 2',
  ),
  BottomNavigationBarItem(
    icon: Icon(Icons.looks_3_outlined),
    activeIcon: Icon(Icons.looks_3_rounded),
    label: 'Lab 3',
  ),
];

class _NavigationRailPageState extends State<NavigationRailPage> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    const Lab1(),
    const Lab2(),
    const Lab3(),
  ];

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final bool isSmallScreen = width < 600;
    final bool isLargeScreen = width > 800;

    return Scaffold(
      bottomNavigationBar: isSmallScreen
          ? BottomNavigationBar(
          items: _navBarItems,
          currentIndex: _selectedIndex,
          onTap: (int index) {
            setState(() {
              _selectedIndex = index;
            });
          })
          : null,
      body: Row(
        children: <Widget>[
          if (!isSmallScreen)
            NavigationRail(
              selectedIndex: _selectedIndex,
              onDestinationSelected: (int index) {
                setState(() {
                  _selectedIndex = index;
                });
              },
              extended: isLargeScreen,
              destinations: _navBarItems
                  .map((item) => NavigationRailDestination(
                  icon: item.icon,
                  selectedIcon: item.activeIcon,
                  label: Text(
                    item.label!,
                  )))
                  .toList(),
            ),
          const VerticalDivider(thickness: 1, width: 1),
          // This is the main content.
          Expanded(
            child: _pages[_selectedIndex],
          )
        ],
      ),
    );
  }
}