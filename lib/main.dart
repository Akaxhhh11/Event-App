import 'package:event_manage/screens/homepage.dart';
import 'package:event_manage/screens/loginpage.dart';
import 'package:event_manage/screens/signup.dart';
import 'package:event_manage/screens/welcome.dart';

import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(EventManagementApp());
}

class EventManagementApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => WelcomePage(),
        '/login': (context) => LogInPage(),
        '/signup': (context) => SignupPage(),
        '/homepage': (context) => HomePage(),
      },
      theme: ThemeData(fontFamily: 'FontMain'),
    );
  }
}
