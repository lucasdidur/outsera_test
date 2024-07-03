import 'package:flutter/material.dart';

import 'home.dart';
import 'pages/dashboard.dart';
import 'pages/list_view.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Razzie Awards App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomeScreen(),
      routes: {
        '/dashboard': (context) => Dashboard(),
        '/list': (context) => ListViewPage(),
      },
    );
  }
}
