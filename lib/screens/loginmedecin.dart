import 'package:cnam/screens/profilPrestataire.dart';
import 'package:cnam/screens/signupAssur%C3%A9.dart';
import 'package:flutter/material.dart';

import '../Widgets/app_colors.dart';
import 'informationsAssure.dart';
import 'informations_page.dart';

class LoginMed extends StatefulWidget {
  const LoginMed({Key? key}) : super(key: key);

  @override
  State<LoginMed> createState() => _LoginMedState();
}

class _LoginMedState extends State<LoginMed> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.Blue,
      body: SingleChildScrollView(
          child: Column(
        children: [
          Container(
            height: 300,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(90)),
              color: AppColors.white,
              /*  gradient: LinearGradient(colors: [
                  new Color(0xff123456),
                  Color.fromARGB(255, 148, 186, 230)
                ],
                 begin: Alignment.topCenter, end: Alignment.bottomCenter)*/
            ),
            child: Center(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.only(top: 50),
                  child: Image.asset('assets/cnam_logo.png'),
                  height: 170,
                  width: 300,
                ),
                Container(
                  margin: EdgeInsets.only(right: 20, top: 20),
                  alignment: Alignment.bottomRight,
                  child: Text(
                    "Authentification Médecin",
                    style: TextStyle(
                        fontSize: 20,
                        color: AppColors.Blue,
                        fontWeight: FontWeight.bold),
                  ),
                )
              ],
            )),
          ),
          Container(
            margin: EdgeInsets.only(left: 20, right: 20, top: 120),
            padding: EdgeInsets.only(left: 20, right: 20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: AppColors.white,
              /*  boxShadow: [
                  BoxShadow(
                      offset: Offset(0, 10),
                      blurRadius: 50,
                      color: Color(0xffEEEEEE))
                ]*/
            ),
            alignment: Alignment.center,
            child: TextField(
              cursorColor: Color(0xff123456),
              decoration: InputDecoration(
                  icon: Icon(
                    Icons.mail,
                    color: AppColors.Blue,
                  ),
                  hintText: "Email",
                  hintStyle: TextStyle(fontSize: 18),
                  enabledBorder: InputBorder.none,
                  focusedBorder: InputBorder.none),
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 20, right: 20, top: 30),
            padding: EdgeInsets.only(left: 20, right: 20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: AppColors.white,
              /*  boxShadow: [
                  BoxShadow(
                      offset: Offset(0, 10),
                      blurRadius: 50,
                      color: Color(0xffEEEEEE))
                ]*/
            ),
            alignment: Alignment.center,
            child: TextField(
              obscureText: true,
              cursorColor: Color(0xff123456),
              decoration: InputDecoration(
                  icon: Icon(
                    Icons.vpn_key,
                    color: AppColors.Blue,
                  ),
                  hintText: "Identifiant unique",
                  hintStyle: TextStyle(fontSize: 18),
                  enabledBorder: InputBorder.none,
                  focusedBorder: InputBorder.none),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 20, right: 20),
            alignment: Alignment.centerRight,
            child: GestureDetector(
              child: Text(
                "Mot de passe oublié?",
                style: TextStyle(color: AppColors.black, fontSize: 14),
              ),
              onTap: () => {},
            ),
          ),
          GestureDetector(
            /* changer code  */
            onTap: () => {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => InformationsPage()))
            },
            child: Container(
              margin: EdgeInsets.only(left: 20, right: 20, top: 40),
              padding: EdgeInsets.only(left: 20, right: 20),
              alignment: Alignment.center,
              height: 54,
              decoration: BoxDecoration(
                color: AppColors.green,
                /* gradient: LinearGradient(
                    colors: [new Color(0xff123456), new Color(0xff123456)],
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                  ),*/
                borderRadius: BorderRadius.circular(20),
                /*  boxShadow: [
                    BoxShadow(
                        offset: Offset(0, 10),
                        blurRadius: 50,
                        color: Color(0xffEEEEEE))
                  ]*/
              ),
              child: Text(
                "Se Connecter",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 18),
              ),
            ),
          )
        ],
      )),
    );
  }
}
