import 'package:event_manage/screens/loginpage.dart';
import 'package:event_manage/screens/welcome.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(EventManagementApp());
}

class EventManagementApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => WelcomePage(),
        '/login': (context) => LoginPage(),
      },
    );
  }
}
