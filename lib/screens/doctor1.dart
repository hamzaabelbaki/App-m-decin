import 'package:cnam/screens/calendar.dart';
import 'package:flutter/material.dart';

import '../Widgets/app_colors.dart';
import '../Widgets/materielBox.dart';

class doctor1 extends StatefulWidget {
  const doctor1({Key? key}) : super(key: key);

  @override
  State<doctor1> createState() => _doctor1State();
}

class _doctor1State extends State<doctor1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: AppColors.Blue,
        elevation: 0,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            size: 24,
            color: Colors.white,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text(
          'Dr. Sara Oualha',
          style: TextStyle(
              fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(top: 0),
          child: Column(
            children: <Widget>[
              Container(
                alignment: Alignment.center,
                child: Image.asset('assets/Samia.png'),
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  RaisedButton(
                    color: Colors.green,
                    child: Text(
                      'Appel vocal',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 18),
                    ),
                    onPressed: () {
                      // Handle button press
                    },
                  ),
                  RaisedButton(
                    color: AppColors.red,
                    child: Text(
                      'Appel vidéo',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 18),
                    ),
                    onPressed: () {
                      // Handle button press
                    },
                  ),
                  RaisedButton(
                    color: AppColors.mauve,
                    child: Text(
                      'Message',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 18),
                    ),
                    onPressed: () {
                      // Handle button press
                    },
                  ),
                ],
              ),
              SizedBox(height: 20),
              Column(
                  /*  margin: EdgeInsets.only(
                  left: 5,
                ),
                padding: EdgeInsets.only(left: 10, right: 20),
                alignment: Alignment.center,*/
                  children: <Widget>[
                    Text(
                      " Médecine & specialiste psychiatre  ",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 15,
                          color: AppColors.black,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 2,
                    ),
                    Center(
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                          Icon(
                            Icons.star,
                            color: Colors.yellow,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.yellow,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.yellow,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.yellow,
                          ),
                        ]))
                  ]
                  //********* */
                  ),
              SizedBox(height: 9),

/*Container(
                // margin: EdgeInsets.all(15),
                padding: EdgeInsets.only(left: 20, right: 20),
                alignment: Alignment.center,
                child: Text(
                  "A props de Hamza\n\nPour bénéficier des prestations fournies par l'assurance maladie obligatoire de base,l'assuré présente un dossier d'adhésion complet au bureau d'accueil de la CNAM.\nIl suffit d'importer ses fichiers indiqués ci-dessous pour terminer la composition du dossier d'adhésion.",
                  style: TextStyle(
                    fontSize: 14,
                    color: AppColors.Blue,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),*/

              Column(
                children: <Widget>[
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    'Qua procella, illo eternus semel cui propello. Arma iniquus tribuo legentis victum tergo victor repeto, multus. Qui volup amita porro perseverantia. Positus lacunar qui praecepio St. Incertus surgo vires nolo.',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.grey,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                ],
              ),
              Container(
                // padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                height: 55,
                width: 370,

                child: RaisedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Calendar()),
                    );
                  },
                  color: AppColors.green,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  child: Center(
                    child: Text(
                      "Prendre un rendez-vous",
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
        ),
      ),
    );
  }
}
