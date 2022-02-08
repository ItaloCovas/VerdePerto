import 'package:flutter/material.dart';
import 'package:verde_perto/pages/home_page.dart';
import 'package:verde_perto/pages/reports_page.dart';
import 'package:verde_perto/theme/theme.dart';

class NavigationHome extends StatefulWidget {
  NavigationHome({Key? key}) : super(key: key);

  @override
  State<NavigationHome> createState() => _NavigationHomeState();
}

class _NavigationHomeState extends State<NavigationHome> {
  int selectedIndex = 0;

  final List<Widget> pages = [HomePage(), ReportsPage()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[selectedIndex],
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(
          Icons.add_a_photo_outlined,
          color: Colors.white,
          size: 25,
        ),
        elevation: 7.0,
        backgroundColor: primaryGreen,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        clipBehavior: Clip.hardEdge,
        notchMargin: 7,
        child: BottomNavigationBar(
            showSelectedLabels: true,
            showUnselectedLabels: true,
            selectedFontSize: 15,
            selectedIconTheme:
                const IconThemeData(color: primaryGreen, size: 28),
            selectedItemColor: primaryGreen,
            unselectedItemColor: Colors.grey.shade400,
            onTap: (int index) {
              setState(() {
                selectedIndex = index;
              });
            },
            currentIndex: selectedIndex,
            backgroundColor: Colors.white,
            items: const [
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.home_outlined,
                    size: 28,
                  ),
                  label: 'Home'),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.warning_amber,
                    size: 25,
                  ),
                  label: 'Ocorrências')
            ]),
      ),
    );
  }
}
