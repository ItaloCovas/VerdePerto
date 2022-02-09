import 'dart:io' show File;

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:verde_perto/pages/home_page.dart';
import 'package:verde_perto/pages/reports_page.dart';
import 'package:verde_perto/theme/theme.dart';

final picker = ImagePicker();

class NavigationHome extends StatefulWidget {
  const NavigationHome({Key? key}) : super(key: key);

  @override
  State<NavigationHome> createState() => _NavigationHomeState();
}

class _NavigationHomeState extends State<NavigationHome> {
  int selectedIndex = 0;

  final List<Widget> pages = [const HomePage(), ReportsPage()];

  @override
  Widget build(BuildContext context) {
    File? _image;
    Future getImagefromcamera() async {
      final XFile? photo = await _picker.pickImage(source: ImageSource.camera);
      final pickedFile = await picker.pickImage(
          source: ImageSource.camera, maxWidth: 800, imageQuality: 50);
      setState(() {
        _image = _image;
      });
    }

    return Scaffold(
      body: pages[selectedIndex],
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          getImagefromcamera();
        },
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
        shape: const CircularNotchedRectangle(),
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

class _picker {
  static pickImage({required ImageSource source}) {}
}
