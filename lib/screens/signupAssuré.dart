import 'dart:ui';

import 'package:flutter/material.dart';

import '../Widgets/app_colors.dart';
import 'loginAssuré.dart';

class SignUp extends StatefulWidget {
  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final services = [
    'La filière privée',
    'Le système de remboursement',
    'La filière publique'
  ];

  String? value = 'La filière privée';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.Blue,
      body: SingleChildScrollView(
          child: Column(
        children: [
          Container(
            height: 250,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(90)),
              color: AppColors.white, //background d'iamge
            ),
            child: Center(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.only(top: 50),
                  child: Image.asset('assets/cnam_logo.png'),
                  height: 150,
                  width: 240,
                ),
                Container(
                  margin: EdgeInsets.only(right: 20),
                  alignment: Alignment.bottomRight,
                  child: Text(
                    "S'inscrire",
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
            alignment: Alignment.center,
            margin: EdgeInsets.only(left: 20, right: 20, top: 47),
            padding: EdgeInsets.only(left: 20, right: 20),
            height: 54,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              color: AppColors.white,
              /*   boxShadow: [
                BoxShadow(
                    offset: Offset(0, 10),
                    blurRadius: 50,
                    color: Color(0xffEEEEEE)),
              ],*/
            ),
            child: TextField(
              cursorColor: Color(0xff123456),
              decoration: InputDecoration(
                icon: Icon(
                  Icons.email,
                  color: AppColors.Blue,
                ),
                hintText: "Enter Email",
                hintStyle: TextStyle(fontSize: 18),
                enabledBorder: InputBorder.none,
                focusedBorder: InputBorder.none,
              ),
            ),
          ),
          Container(
            alignment: Alignment.center,
            margin: EdgeInsets.only(left: 20, right: 20, top: 20),
            padding: EdgeInsets.only(left: 20, right: 20),
            height: 54,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              color: AppColors.white,
              /*  boxShadow: [
                BoxShadow(
                    offset: Offset(0, 10),
                    blurRadius: 50,
                    color: Color(0xffEEEEEE)),
              ],*/
            ),
            child: TextField(
              cursorColor: Color(0xff123456),
              decoration: InputDecoration(
                icon: Icon(
                  Icons.person,
                  color: AppColors.Blue,
                ),
                hintText: "Nom Complet",
                hintStyle: TextStyle(fontSize: 18),
                enabledBorder: InputBorder.none,
                focusedBorder: InputBorder.none,
              ),
            ),
          ),
          Container(
            alignment: Alignment.center,
            margin: EdgeInsets.only(left: 20, right: 20, top: 20),
            padding: EdgeInsets.only(left: 20, right: 20),
            height: 54,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              color: AppColors.white,
              /*  boxShadow: [
                BoxShadow(
                    offset: Offset(0, 10),
                    blurRadius: 50,
                    color: Color(0xffEEEEEE)),
              ],*/
            ),
            /*child: TextField(
              cursorColor: Color(0xff123456),
              decoration: InputDecoration(
                icon: Icon(
                  Icons.vpn_key,
                  color: AppColors.Blue,
                ),
                hintText: "CIN",
                hintStyle: TextStyle(fontSize: 18),
                enabledBorder: InputBorder.none,
                focusedBorder: InputBorder.none,
              ),
            ),
          ),
          Container(
            alignment: Alignment.center,
            margin: EdgeInsets.only(left: 20, right: 20, top: 20),
            padding: EdgeInsets.only(left: 20, right: 20),
            height: 54,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              color: AppColors.white,
              /* boxShadow: [
                BoxShadow(
                    offset: Offset(0, 10),
                    blurRadius: 50,
                    color: Color(0xffEEEEEE)),
              ],*/
            ),*/

            child: TextField(
              cursorColor: Color(0xff123456),
              decoration: InputDecoration(
                icon: Icon(
                  Icons.phone,
                  color: AppColors.Blue,
                ),
                hintText: "Numéro Téléphone",
                hintStyle: TextStyle(fontSize: 18),
                enabledBorder: InputBorder.none,
                focusedBorder: InputBorder.none,
              ),
            ),
          ),
          Container(
            alignment: Alignment.center,
            margin: EdgeInsets.only(left: 20, right: 20, top: 20),
            padding: EdgeInsets.only(left: 20, right: 20),
            height: 54,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              color: AppColors.white,
            ),
            child: TextField(
              cursorColor: Color(0xff123456),
              decoration: InputDecoration(
                icon: Icon(
                  Icons.password,
                  color: AppColors.Blue,
                ),
                hintText: "Mot de passe",
                hintStyle: TextStyle(fontSize: 18),
                enabledBorder: InputBorder.none,
                focusedBorder: InputBorder.none,
              ),
            ),
          ),
          Container(
            alignment: Alignment.center,
            margin: EdgeInsets.only(left: 20, right: 20, top: 20),
            padding: EdgeInsets.only(left: 20, right: 20),
            height: 54,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              color: AppColors.white,
            ),
            child: TextField(
              cursorColor: Color(0xff123456),
              decoration: InputDecoration(
                icon: Icon(
                  Icons.password,
                  color: AppColors.Blue,
                ),
                hintText: "Confirmer mot de passe",
                hintStyle: TextStyle(fontSize: 18),
                enabledBorder: InputBorder.none,
                focusedBorder: InputBorder.none,
              ),
            ),
          ),
          /* Container(
              alignment: Alignment.center,
              margin: EdgeInsets.only(left: 20, right: 20, top: 20),
              padding: EdgeInsets.only(left: 20, right: 20),
              height: 54,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: AppColors.white,
              ),
             

              child: DropdownButton<String>(
                value: value = value,
                iconSize: 36,
                icon: Icon(Icons.arrow_drop_down, color: AppColors.Blue),
                isExpanded: true,
                items: services.map(BuildMenuItem).toList(),
                onChanged: (value) => setState(() => this.value = value),
              )),*/

          GestureDetector(
            onTap: () {
              // Write Click Listener Code Here.
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => LogIn()));
            },
            child: Container(
              alignment: Alignment.center,
              margin: EdgeInsets.only(left: 20, right: 20, top: 20),
              padding: EdgeInsets.only(left: 20, right: 20),
              height: 54,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: AppColors.green,
              ),
              child: Text(
                "S'INSCRIRE",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 18),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 10),
            child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Text(
                "Déja Inscrit?  ",
                style: TextStyle(color: AppColors.LightGrey, fontSize: 14),
              ),
              GestureDetector(
                onTap: () => {Navigator.pop(context)},
                child: Text(
                  "S'authentifier maintenant",
                  style: TextStyle(color: AppColors.black, fontSize: 14),
                ),
              )
            ]),
          )
        ],
      )),
    );
  }

  DropdownMenuItem<String> BuildMenuItem(String item) => DropdownMenuItem(
        value: item,
        child: Text(
          item,
          style: TextStyle(fontSize: 20),
        ),
      );

  Future<Null> _selectDate(BuildContext context) async {
    DateTime? _datePicker = await showDatePicker(
      context: context,
      initialDate: _date,
      firstDate: DateTime(1974),
      lastDate: DateTime(2030),
      textDirection: TextDirection.ltr,
      initialDatePickerMode: DatePickerMode.day, //dayyearmode
      selectableDayPredicate: (DateTime val) =>
          val.weekday == 6 || val.weekday == 7 ? false : true, //weedayoff
    );
    if (_datePicker != null && _datePicker != _date) {
      setState(() {
        _date = _datePicker;
        //_date = DateFormat('yyyy-MM-dd – kk:mm').format(now);
      });
    }
  }

  DateTime _date = DateTime.now();
}
