import 'package:cnam/screens/loginAssur%C3%A9.dart';
import 'package:cnam/screens/signupAssur%C3%A9.dart';
import 'package:cnam/screens/splashScreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'Poppins'),
      home: SignUp(),
    );
  }
}
