import 'package:citadel/screens/community_screen.dart';
import 'package:citadel/screens/home_screen.dart';
import 'package:citadel/screens/library_screen.dart';
import 'package:citadel/screens/search_screen.dart';
import 'package:citadel/widgets/bottom_navigation_bar.dart';
import 'package:flutter/material.dart';

class NavigationContainer extends StatefulWidget {
  const NavigationContainer({super.key});

  @override
  State<NavigationContainer> createState() => _NavigationContainerState();
}

class _NavigationContainerState extends State<NavigationContainer> {
  int _selectedIndex = 0;

  void _onIconTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> pages = [
      const HomeScreen(),
      const SearchScreen(),
      
      const CommunityScreen(),
      const LibraryScreen(),
    ];

    return Scaffold(
      body: Center(
        child: pages[_selectedIndex],
      ),
      bottomNavigationBar: CustomBottomNavigationBar(
        selectedPageIndex: _selectedIndex,
        onIconTap: _onIconTapped,
      ),
    );
  }
}
