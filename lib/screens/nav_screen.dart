import 'package:dark_instagram_clone/screens/home_screen.dart';
import 'package:flutter/material.dart';

class NavScreen extends StatefulWidget {
  const NavScreen({Key? key}) : super(key: key);

  @override
  State<NavScreen> createState() => _NavScreenState();
}

class _NavScreenState extends State<NavScreen> {
  final List<Widget> _screens = [
    const HomeScreen(
      key: PageStorageKey('homeScreen'),
    ),
    const Scaffold(
      body: Center(
        child: Text(
          'Search',
          style: TextStyle(color: Colors.white, fontSize: 50),
        ),
      ),
    ),
    const Scaffold(
      body: Center(
        child: Text(
          'Add photo',
          style: TextStyle(color: Colors.white, fontSize: 50),
        ),
      ),
    ),
    const Scaffold(
      body: Center(
        child: Text(
          'Activities',
          style: TextStyle(color: Colors.white, fontSize: 50),
        ),
      ),
    ),
    const Scaffold(
      body: Center(
        child: Text(
          'Profile',
          style: TextStyle(color: Colors.white, fontSize: 50),
        ),
      ),
    ),
  ];

  final Map<String, IconData> _icons = {
    'Home': Icons.home,
    'Search': Icons.search,
    'Add': Icons.add_a_photo,
    'Favorite': Icons.favorite_outline,
    'Profile': Icons.supervised_user_circle,
  };

  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.black.withOpacity(0.5),
        items: _icons
            .map((title, icon) => MapEntry(
                title,
                BottomNavigationBarItem(
                  icon: Icon(icon, size: 30.0),
                  label: title,
                )))
            .values
            .toList(),
        currentIndex: _currentIndex,
        selectedItemColor: Colors.white,
        selectedFontSize: 0.0,
        unselectedItemColor: Colors.grey,
        unselectedFontSize: 0.0,
        onTap: (index) => setState(() {
          _currentIndex = index;
        }),
      ),
    );
  }
}
