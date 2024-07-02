import 'package:flutter/material.dart';
import 'package:furnitureapp/screens/home.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  late PageController _pageController;
  int _page = 0;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: _page);
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        physics: const NeverScrollableScrollPhysics(),
        controller: _pageController,
        onPageChanged: onPageChanged,
        children: List.generate(4, (index) => const Home()),
      ),
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
          canvasColor: Theme.of(context).primaryColor,
          primaryColor: Theme.of(context).colorScheme.secondary,
          textTheme: Theme.of(context).textTheme.copyWith(
                bodySmall: TextStyle(color: Colors.grey[500]),
              ),
        ),
        child: BottomNavigationBar(
          selectedFontSize: 8,
          type: BottomNavigationBarType.fixed,
          iconSize: 24,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                color: Colors.grey[500],
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.favorite_border,
                color: Colors.grey[500],
              ),
              label: 'Favorites',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.verified_user_outlined,
                color: Colors.grey[500],
              ),
              label: 'Profile',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.grid_3x3,
                color: Colors.grey[500],
              ),
              label: 'More',
            ),
          ],
          onTap: navigationTapped,
          currentIndex: _page,
        ),
      ),
    );
  }

  void navigationTapped(int page) {
    _pageController.jumpToPage(page);
  }

  void onPageChanged(int page) {
    setState(() {
      _page = page;
    });
  }
}
