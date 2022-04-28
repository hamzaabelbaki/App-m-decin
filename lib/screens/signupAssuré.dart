import 'dart:ui';

import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final services = [
    'Assurance Maladie',
    'Assurance sociales',
    'Accidents de Travail et Maladies pro'
  ];

  String? value = 'Assurance Maladie';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: Column(
        children: [
          Container(
            height: 250,
            decoration: BoxDecoration(
                borderRadius:
                    BorderRadius.only(bottomLeft: Radius.circular(90)),
                gradient: LinearGradient(colors: [
                  new Color(0xff123456),
                  Color.fromARGB(255, 148, 186, 230)
                ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
            child: Center(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.only(top: 50),
                  child: Image.asset('assets/cnam_logo.png'),
                  height: 150,
                  width: 190,
                ),
                Container(
                  margin: EdgeInsets.only(right: 20),
                  alignment: Alignment.bottomRight,
                  child: Text(
                    "S'inscrire",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                )
              ],
            )),
          ),
          Container(
            alignment: Alignment.center,
            margin: EdgeInsets.only(left: 20, right: 20, top: 70),
            padding: EdgeInsets.only(left: 20, right: 20),
            height: 54,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              color: Colors.grey[200],
              boxShadow: [
                BoxShadow(
                    offset: Offset(0, 10),
                    blurRadius: 50,
                    color: Color(0xffEEEEEE)),
              ],
            ),
            child: TextField(
              cursorColor: Color(0xff123456),
              decoration: InputDecoration(
                icon: Icon(
                  Icons.email,
                  color: Color(0xff123456),
                ),
                hintText: "Enter Email",
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
              color: Colors.grey[200],
              boxShadow: [
                BoxShadow(
                    offset: Offset(0, 10),
                    blurRadius: 50,
                    color: Color(0xffEEEEEE)),
              ],
            ),
            child: TextField(
              cursorColor: Color(0xff123456),
              decoration: InputDecoration(
                icon: Icon(
                  Icons.person,
                  color: Color(0xff123456),
                ),
                hintText: "Nom Complet",
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
              color: Colors.grey[200],
              boxShadow: [
                BoxShadow(
                    offset: Offset(0, 10),
                    blurRadius: 50,
                    color: Color(0xffEEEEEE)),
              ],
            ),
            child: TextField(
              cursorColor: Color(0xff123456),
              decoration: InputDecoration(
                icon: Icon(
                  Icons.vpn_key,
                  color: Color(0xff123456),
                ),
                hintText: "CIN",
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
              color: Colors.grey[200],
              boxShadow: [
                BoxShadow(
                    offset: Offset(0, 10),
                    blurRadius: 50,
                    color: Color(0xffEEEEEE)),
              ],
            ),
            child: TextField(
              cursorColor: Color(0xff123456),
              decoration: InputDecoration(
                icon: Icon(
                  Icons.phone,
                  color: Color(0xff123456),
                ),
                hintText: "Numéro Téléphone",
                enabledBorder: InputBorder.none,
                focusedBorder: InputBorder.none,
              ),
            ),
          ),
          //date
          Container(
              alignment: Alignment.center,
              margin: EdgeInsets.only(left: 20, right: 20, top: 20),
              padding: EdgeInsets.only(left: 20, right: 20),
              height: 54,
              child: TextField(
                cursorColor: Color(0xff123456),
                readOnly: true,
                onTap: () {
                  setState(() {
                    _selectDate(context);
                  });
                },
                // cursorColor: Color(0xff123456),
                decoration: InputDecoration(
                  icon: Icon(
                    Icons.calendar_month,
                    color: Color(0xff123456),
                  ),
                  labelText: 'select date',
                  labelStyle: TextStyle(fontSize: 15),
                  hintText: (_date.toString().substring(0, 10)),
                  hintStyle: TextStyle(fontSize: 16, color: Colors.black),
                  enabledBorder: InputBorder.none,
                  focusedBorder: InputBorder.none,
                ),
              )
              /*alignment: Alignment.center,
            margin: EdgeInsets.only(left: 20, right: 20, top: 20),
            padding: EdgeInsets.only(left: 20, right: 20),
            child: Column(
              children: [
                RaisedButton(
                  onPressed: () {
                    setState(() {
                      _selectDate(context);
                      print(_date.toString());
                    });
                  },
                  color: new Color(0xff123456),
                  child: Text(
                    'Date picker',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                Text(
                  _date.toString(),
                  style: TextStyle(fontSize: 20),
                )
              ],
            ),*/
              ),
          Container(
              alignment: Alignment.center,
              margin: EdgeInsets.only(left: 20, right: 20, top: 20),
              padding: EdgeInsets.only(left: 20, right: 20),
              height: 54,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                border: Border.all(color: Color(0xff123456), width: 1),
                color: Colors.grey[200],
                boxShadow: [
                  BoxShadow(
                      offset: Offset(0, 10),
                      blurRadius: 50,
                      color: Color(0xffEEEEEE)),
                ],
              ),
              child: DropdownButton<String>(
                value: value = value,
                iconSize: 36,
                icon: Icon(Icons.arrow_drop_down, color: Color(0xff123456)),
                isExpanded: true,
                items: services.map(BuildMenuItem).toList(),
                onChanged: (value) => setState(() => this.value = value),
              )),
          GestureDetector(
            onTap: () {
              // Write Click Listener Code Here.
            },
            child: Container(
              alignment: Alignment.center,
              margin: EdgeInsets.only(left: 20, right: 20, top: 70),
              padding: EdgeInsets.only(left: 20, right: 20),
              height: 54,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: [(new Color(0xff123456)), new Color(0xff123456)],
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight),
                borderRadius: BorderRadius.circular(50),
                color: Colors.grey[200],
                boxShadow: [
                  BoxShadow(
                      offset: Offset(0, 10),
                      blurRadius: 50,
                      color: Color(0xffEEEEEE)),
                ],
              ),
              child: Text(
                "S'INSCRIRE",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 10),
            child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Text("Déja Inscrit?  "),
              GestureDetector(
                onTap: () => {Navigator.pop(context)},
                child: Text(
                  "S'authentifier maintenant",
                  style: TextStyle(color: new Color(0xff123456)),
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
