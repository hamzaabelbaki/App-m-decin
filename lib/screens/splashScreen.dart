import 'dart:async';

import 'package:cnam/Widgets/app_colors.dart';
import 'package:cnam/screens/home.dart';
import 'package:cnam/screens/signupAssur%C3%A9.dart';
import 'package:flutter/material.dart';

import 'loginAssuré.dart';

class Start extends StatefulWidget {
  const Start({Key? key}) : super(key: key);

  @override
  State<Start> createState() => _StartState();
}

class _StartState extends State<Start> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    startTime();
  }

  startTime() async {
    var duration = Duration(seconds: 4);
    return new Timer(duration, route);
  }

  route() {
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => home()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            // margin: EdgeInsets.only(top: 20),
            decoration: BoxDecoration(
              color: AppColors.white,
              /*gradient: LinearGradient(
                  colors: [new Color(0xff123456), new Color(0xff2E4A6F)],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                )*/
            ),
          ),
          Center(
            child: Container(
              child: Image.asset(
                'assets/cnam_logo.png',
                width: 500,
              ),
            ),
          )
        ],
      ),
    );
  }
}
