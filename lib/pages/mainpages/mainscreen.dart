import 'package:flutter/material.dart';
import 'package:nasa_space_apps/pages/mainpages/articles.dart';
import 'package:nasa_space_apps/pages/mainpages/home.dart';

class mainScreen extends StatefulWidget {
  const mainScreen({super.key});
  static final route = '/mainscreen';

  @override
  State<mainScreen> createState() => _mainScreenState();
}

class _mainScreenState extends State<mainScreen> {
  int _selectedIndex = 0;
  late PageController _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: _selectedIndex);
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  List<Widget> pages = [
    const Home(),
    const Articles(),
  ];

  void _onPageChanged(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(255, 255, 255, 1),
      bottomNavigationBar: Container(
        margin: EdgeInsets.all(30),
        child: Container(
          decoration: BoxDecoration(),
          child: ClipRRect(
            borderRadius: BorderRadius.all(Radius.elliptical(30, 30)),
            child: BottomNavigationBar(
              backgroundColor: Color.fromARGB(246, 0, 140, 255),
              iconSize: 40,
              elevation: 0,
              selectedItemColor: Colors.white,
              unselectedItemColor: Colors.white,
              selectedIconTheme: IconThemeData(color: Colors.white, size: 52),
              currentIndex: _selectedIndex,
              showSelectedLabels: false,
              showUnselectedLabels: false,
              onTap: (int index) {
                setState(() {
                  _selectedIndex = index;
                });

                _pageController.animateToPage(
                  index,
                  duration: const Duration(milliseconds: 300),
                  curve: Curves.easeInOut,
                );
              },
              items: const [
                BottomNavigationBarItem(
                  icon: Icon(
                    Icons.public,
                  ),
                  label: "Map",
                ),
                BottomNavigationBarItem(
                    icon: Icon(Icons.feed_rounded), label: 'Articles')
              ],
            ),
          ),
        ),
      ),
      body: PageView(
        controller: _pageController,
        onPageChanged: _onPageChanged,
        children: pages,
      ),
    );
  }
}
