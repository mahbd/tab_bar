import 'package:flutter/material.dart';
import 'package:tab_bar/right_page.dart';

import 'center.dart';
import 'left_side.dart';

void main() {
  runApp(const TabBarApp());
}

class TabBarApp extends StatefulWidget {
  const TabBarApp({Key? key}) : super(key: key);

  @override
  _TabBarAppState createState() => _TabBarAppState();
}

class _TabBarAppState extends State<TabBarApp> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: DefaultTabController(
        length: 3,
        child: TabOpener(),
      ),
    );
  }
}

class TabOpener extends StatefulWidget {
  const TabOpener({Key? key}) : super(key: key);

  @override
  _TabOpenerState createState() => _TabOpenerState();
}

class _TabOpenerState extends State<TabOpener> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        bottom: const TabBar(
          tabs: <Widget>[
            Tab(text: 'LEFT', icon: Icon(Icons.alarm)),
            Tab(text: 'CENTER', icon: Icon(Icons.ac_unit)),
            Tab(
              child: Text(
                'RIGHT',
              ),
              icon: Icon(Icons.four_k_outlined),
            ),
          ],
        ),
      ),
      body: const TabBarView(
        children: [
          LeftTab(),
          CenterTab(),
          RightTab(),
        ],
      ),
    );
  }
}
