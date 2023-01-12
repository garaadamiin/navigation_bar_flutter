import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:navigation_bar_flutter/screens/home_screen.dart';

class GoogleScreen extends StatefulWidget {
  const GoogleScreen({super.key});

  @override
  State<GoogleScreen> createState() => _GoogleScreenState();
}

class _GoogleScreenState extends State<GoogleScreen> {
  int selectedIndex = 0;
  final List<String> _titles = const [
    'Home',
  ];
  final List<Widget> _tabs = const [
    HomeScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: GNav(
        backgroundColor: Colors.deepPurple,
        color: Colors.deepPurple.shade200,
        activeColor: Colors.deepPurple,
        tabBackgroundColor: Colors.white,
        tabBorderRadius: 100,
        tabActiveBorder: Border.all(color: Colors.white),
        tabs: const [
          GButton(
            icon: Icons.home,
            text: 'Home',
          ),
          GButton(
            icon: Icons.favorite,
            text: 'Favorite',
          ),
          GButton(
            icon: Icons.search,
            text: 'Search',
          ),
          GButton(
            icon: Icons.settings,
            text: 'Settings',
          ),
        ],
      ),
    );
  }
}
