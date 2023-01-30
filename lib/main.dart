import 'package:cnam/screens/achatMateriel.dart';
import 'package:cnam/screens/adminInterface.dart';
import 'package:cnam/screens/bordereauxPatient.dart';
import 'package:cnam/screens/calendar.dart';
import 'package:cnam/screens/confirmeIdentit%C3%A9.dart';
import 'package:cnam/screens/deleteUser.dart';

import 'package:cnam/screens/doctor1.dart';

import 'package:cnam/screens/home.dart';

import 'package:cnam/screens/informationsAssure.dart';
import 'package:cnam/screens/informations_page.dart';
import 'package:cnam/screens/loginAssur%C3%A9.dart';
import 'package:cnam/screens/loginmedecin.dart';

import 'package:cnam/screens/profilPrestataire.dart';
import 'package:cnam/screens/signupAssur%C3%A9.dart';
import 'package:cnam/screens/signupmedecin.dart';
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
      home: Start(),
    );
  }
}
