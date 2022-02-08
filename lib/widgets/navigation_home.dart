import 'package:flutter/material.dart';
import 'package:verde_perto/pages/home_page.dart';
import 'package:verde_perto/theme/theme.dart';

@override
State<NavigationHome> createState() => _NavigationHomeState();

class _NavigationHomeState extends State<NavigationHome> {
  int selectedIndex = 0;

  final List<Widget> pages = [HomePage()];

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
        child: const Icon(Icons.add_a_photo_outlined, color: textColor),
        elevation: 4.0,
        backgroundColor: primaryGreen,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        clipBehavior: Clip.hardEdge,
        notchMargin: 7,
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
            backgroundColor: Colors.white,
            backgroundColor: textColor,
            items: const [
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.home_outlined,
                    color: Colors.grey,
                    size: 28,
                  ),
                  title: Text(
                    "Home",
                    style: TextStyle(fontFamily: "Poppins"),
                  )),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.warning_amber,
                    color: Colors.grey,
                    size: 25,
                  ),
                  title: Text(
                    "Ocorrências",
                    style: TextStyle(fontFamily: "Poppins"),
                  ))
            ]),
      ),
    );
  }
}
