import 'package:cnam/screens/profilPrestataire.dart';
import 'package:cnam/screens/signupAssur%C3%A9.dart';
import 'package:cnam/screens/signupmedecin.dart';
import 'package:flutter/material.dart';

import '../Widgets/app_colors.dart';
import 'informationsAssure.dart';

class home extends StatefulWidget {
  const home({Key? key}) : super(key: key);

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.Blue,
      appBar: AppBar(
        backgroundColor: AppColors.Blue,
        elevation: 0,
        leading: IconButton(
          icon: Icon(
            Icons.menu,
            size: 24,
            color: AppColors.white,
          ),
          onPressed: () {},
        ),
        title: Text(
          'TBIBI',
          style: TextStyle(fontSize: 18, color: AppColors.white),
        ),
      ),
      body: SingleChildScrollView(
          child: Column(
        children: [
          Container(
            height: 300,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(50),
                  bottomRight: Radius.circular(50)),
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
              ],
            )),
          ),
          Container(
            margin: EdgeInsets.only(right: 20, top: 20),
            alignment: Alignment.center,
            child: Text(
              "Bienvenu Chez TBIBI",
              style: TextStyle(
                  fontSize: 20,
                  color: AppColors.white,
                  fontWeight: FontWeight.normal),
            ),
          ),
          GestureDetector(
            /* changer code  */
            onTap: () => {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => SignubMed()))
            },
            child: Container(
              margin: EdgeInsets.only(left: 80, right: 80, top: 40),
              padding: EdgeInsets.all(5),
              alignment: Alignment.center,
              height: 50,
              child: Container(
                child: Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 10),
                      child: Icon(Icons.medical_services_outlined,
                          size: 45, color: AppColors.white),
                    ),
                    SizedBox(width: 20),
                    Text(
                      "Médecin",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 18),
                    )
                  ],
                ),
              ),
              decoration: BoxDecoration(
                color: AppColors.green,
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
          GestureDetector(
            /* changer code  */
            onTap: () => {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => SignUp()))
            },
            child: Container(
              margin: EdgeInsets.only(left: 80, right: 80, top: 20),
              padding: EdgeInsets.all(5),
              alignment: Alignment.center,
              height: 50,
              child: Container(
                child: Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 10),
                      child: Icon(
                        Icons.account_box_sharp,
                        color: AppColors.white,
                        size: 45,
                      ),
                    ),
                    SizedBox(width: 20),
                    Text(
                      "Patient",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 18),
                    )
                  ],
                ),
              ),
              decoration: BoxDecoration(
                color: AppColors.green,
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
          SizedBox(height: 20),
          Row(
            // mainAxisAlignment: MainAxisAlignment.spaceAround,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: 20,
              ),
              Text(
                "Vous n'avez pas un compte ?",
                style: TextStyle(color: Colors.white, fontSize: 15),
              ),
              FlatButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SignUp()),
                  );
                },
                child: Text(
                  "S'inscrire",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: AppColors.Yellow,
                      fontSize: 15,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
        ],
      )),
    );
  }
}
