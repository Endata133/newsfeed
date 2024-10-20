import 'package:flutter/material.dart';
import 'package:newsfeed_web/bars/leftbar.dart';
import 'package:newsfeed_web/bars/mainbar.dart';
import 'package:newsfeed_web/bars/rightbar.dart';
import 'package:newsfeed_web/bars/topbar.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: PeerNetwork(),
    );
  }
}

class PeerNetwork extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TopBar(), // Topbar widget
      body: Row(
        children: [
          Expanded(
            flex: 1,
            child: SidebarLeft(), // Left sidebar widget
          ),
          Expanded(
            flex: 2,
            child: MainBar(), // Main content widget
          ),
          Expanded(
            flex: 1,
            child: SidebarRight(), // Right sidebar widget
          ),
        ],
      ),
    );
  }
}







