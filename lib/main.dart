import 'package:auth_screens_challenge/ui/sign_up.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Auth Screen Challenge',
      home: SignUpScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
