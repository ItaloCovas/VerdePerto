import 'package:flutter/material.dart';
import 'package:verde_perto/pages/home_page.dart';
import 'package:verde_perto/theme/theme.dart';

class Navigation extends StatefulWidget {
  const Navigation({Key? key}) : super(key: key);

  @override
  State<Navigation> createState() => _NavigationState();
}

class _NavigationState extends State<Navigation> {
  int selectedIndex = 0;

  final List<Widget> pages = [HomePage()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[selectedIndex],
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add_a_photo_outlined, color: textColor),
        elevation: 4.0,
        backgroundColor: primaryGreen,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        clipBehavior: Clip.antiAlias,
        notchMargin: 5,
        child: BottomNavigationBar(
            selectedIconTheme:
                const IconThemeData(color: Colors.white, size: 30),
            selectedItemColor: Colors.black,
            unselectedItemColor: Colors.grey.shade400,
            onTap: (int index) {
              setState(() {
                selectedIndex = index;
              });
            },
            currentIndex: selectedIndex,
            backgroundColor: textColor,
            items: const [
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.home_outlined,
                    color: Colors.grey,
                  ),
                  label: ""),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.warning_amber,
                    color: Colors.grey,
                  ),
                  label: "")
            ]),
      ),
    );
  }
}
