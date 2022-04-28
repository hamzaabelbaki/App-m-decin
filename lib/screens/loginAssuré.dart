import 'package:cnam/screens/signupAssur%C3%A9.dart';
import 'package:flutter/material.dart';

class LogIn extends StatefulWidget {
  const LogIn({Key? key}) : super(key: key);

  @override
  State<LogIn> createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: Column(
        children: [
          Container(
            height: 300,
            decoration: BoxDecoration(
                borderRadius:
                    BorderRadius.only(bottomLeft: Radius.circular(90)),
                color: Color(0xff123456),
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
                  width: 250,
                ),
                Container(
                  margin: EdgeInsets.only(right: 20, top: 20),
                  alignment: Alignment.bottomRight,
                  child: Text(
                    "Se Connecter",
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                )
              ],
            )),
          ),
          Container(
            margin: EdgeInsets.only(left: 20, right: 20, top: 70),
            padding: EdgeInsets.only(left: 20, right: 20),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: Colors.grey[200],
                boxShadow: [
                  BoxShadow(
                      offset: Offset(0, 10),
                      blurRadius: 50,
                      color: Color(0xffEEEEEE))
                ]),
            alignment: Alignment.center,
            child: TextField(
              cursorColor: Color(0xff123456),
              decoration: InputDecoration(
                  icon: Icon(
                    Icons.password_rounded,
                    color: Color(0xff123456),
                  ),
                  hintText: "Entrer Matricule",
                  enabledBorder: InputBorder.none,
                  focusedBorder: InputBorder.none),
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 20, right: 20, top: 20),
            padding: EdgeInsets.only(left: 20, right: 20),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: Colors.grey[200],
                boxShadow: [
                  BoxShadow(
                      offset: Offset(0, 10),
                      blurRadius: 50,
                      color: Color(0xffEEEEEE))
                ]),
            alignment: Alignment.center,
            child: TextField(
              obscureText: true,
              cursorColor: Color(0xff123456),
              decoration: InputDecoration(
                  icon: Icon(
                    Icons.vpn_key,
                    color: Color(0xff123456),
                  ),
                  hintText: "Entrer mot de passe ",
                  enabledBorder: InputBorder.none,
                  focusedBorder: InputBorder.none),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 20, right: 20),
            alignment: Alignment.centerRight,
            child: GestureDetector(
              child: Text("Mot de passe oublié?"),
              onTap: () => {},
            ),
          ),
          GestureDetector(
            /* changer code  */
            onTap: () => {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => SignUp()))
            },
            child: Container(
              margin: EdgeInsets.only(left: 20, right: 20, top: 70),
              padding: EdgeInsets.only(left: 20, right: 20),
              alignment: Alignment.center,
              height: 54,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [new Color(0xff123456), new Color(0xff123456)],
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                  ),
                  borderRadius: BorderRadius.circular(50),
                  boxShadow: [
                    BoxShadow(
                        offset: Offset(0, 10),
                        blurRadius: 50,
                        color: Color(0xffEEEEEE))
                  ]),
              child: Text(
                "Se Connecter",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          )
        ],
      )),
    );
  }
}
