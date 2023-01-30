import 'package:cnam/Widgets/app_colors.dart';
import 'package:flutter/material.dart';

import '../Widgets/informationsBox.dart';

class ProfilePage extends StatelessWidget {
  /*Widget textfield({@required hintText}) {
    return Material(
      elevation: 6,
      // shadowColor: Color.fromARGB(255, 3, 3, 3),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      // les textes des informations
      child: TextField(
        decoration: InputDecoration(
            hintText: hintText,
            hintStyle: TextStyle(
              letterSpacing: 2,
              color: AppColors.Blue,
              fontWeight: FontWeight.bold,
            ),
            fillColor: Colors.white30,
            filled: true,
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
                borderSide: BorderSide.none)),
      ),
    );
  }*/

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Color(0xff2c6596),
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
          onPressed: () {},
        ),
        title: Text(
          'Mes Infomations Personnelles',
          style: TextStyle(fontSize: 18, color: Colors.white),
        ),
      ),
      body: Stack(
        alignment: Alignment.center,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Container(
                height: 520,
                width: double.infinity,
                margin: EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    //SizedBox(height: 20),
                    InformationsBox(
                        obscure: false,
                        Sicon: Icons.edit,
                        Picon: Icons.person_sharp,
                        text: "Nom && Prénom ",
                        value: "Abdelbaki Hamza"),
                    InformationsBox(
                        obscure: false,
                        Sicon: Icons.edit,
                        Picon: Icons.mail,
                        text: "Mail ",
                        value: "hamza.abdelbaki@ensi-uma.tn"),
                    InformationsBox(
                        obscure: false,
                        Sicon: Icons.edit,
                        Picon: Icons.password,
                        text: "Password ",
                        value: "123456789"),
                    InformationsBox(
                        obscure: true,
                        Sicon: Icons.visibility,
                        Picon: Icons.lock,
                        text: "Date de naissance ",
                        value: "11/05/1999"),
                    InformationsBox(
                        obscure: true,
                        Sicon: Icons.search,
                        Picon: Icons.medical_services,
                        text: "Service ",
                        value: "Nom de service"),

                    // button
                    Container(
                      height: 55,
                      width: double.infinity,
                      child: RaisedButton(
                        onPressed: () {},
                        color: AppColors.Blue,
                        child: Center(
                          child: Text(
                            "Enregistrer les modifications",
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
          // arrire plan
          CustomPaint(
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
            ),
            painter: HeaderCurvedContainer(),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              //image
              Container(
                margin: EdgeInsets.only(top: 20),
                //padding: EdgeInsets.all(10.0),
                width: MediaQuery.of(context).size.width / 3,
                height: MediaQuery.of(context).size.width / 3,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.white, width: 5),
                  shape: BoxShape.circle,
                  color: Colors.white,
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage('assets/hamza.jpg'),
                  ),
                ),
              ),
            ],
          ),
          //icon
          Padding(
            padding: EdgeInsets.only(bottom: 470, left: 124),
            child: CircleAvatar(
              backgroundColor: Colors.black54,
              child: IconButton(
                icon: Icon(
                  Icons.camera_alt,
                  color: Colors.white,
                ),
                onPressed: () {},
              ),
            ),
          )
        ],
      ),
    );
  }
}

class HeaderCurvedContainer extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()..color = AppColors.Blue;
    Path path = Path()
      ..relativeLineTo(0, 150)
      ..quadraticBezierTo(size.width / 2, 225, size.width, 150)
      ..relativeLineTo(0, -150)
      ..close();
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
