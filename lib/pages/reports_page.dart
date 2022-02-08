import 'package:flutter/material.dart';

class ReportsPage extends StatefulWidget {
  ReportsPage({Key? key}) : super(key: key);

  @override
  State<ReportsPage> createState() => _ReportsPageState();
}

class _ReportsPageState extends State<ReportsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Row(
              children: [
                Image.asset(
                  'assets/images/logo.png',
                  height: 70,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
