import 'package:flutter/material.dart';

import '../Widgets/app_colors.dart';
import 'calendar.dart';
import 'calendarMed.dart';
import 'information_box.dart';

class InformationsPage extends StatefulWidget {
  const InformationsPage({Key? key}) : super(key: key);

  @override
  State<InformationsPage> createState() => _InformationsPageState();
}

class _InformationsPageState extends State<InformationsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
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
          'Mes informations',
          style: TextStyle(
              fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
        ),
      ),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Center(
              child: Container(
                margin: EdgeInsets.only(top: 20),
                //padding: EdgeInsets.all(10.0),
                width: MediaQuery.of(context).size.width / 3,
                height: MediaQuery.of(context).size.width / 3,
                decoration: BoxDecoration(
                  border: Border.all(color: AppColors.Blue, width: 3),
                  shape: BoxShape.circle,
                  color: Colors.white,
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage('assets/hamza.jpg'),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 120, left: 235),
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
            ),
            Container(
              decoration: BoxDecoration(),
              padding: EdgeInsets.all(10),
              child: Center(
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 200),
                      child: InformationBox(
                          obscure: false,
                          Sicon: Icons.edit,
                          Picon: Icons.person_sharp,
                          text: "Nom Complet ",
                          value: "Hamza Abelbaki"),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 10),
                      child: InformationBox(
                          obscure: false,
                          Sicon: Icons.edit,
                          Picon: Icons.mail,
                          text: "Mail ",
                          value: "hamzaabdelbaki@gmail.com"),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 10),
                      child: InformationBox(
                          obscure: true,
                          Sicon: Icons.visibility,
                          Picon: Icons.lock,
                          text: "Mot de Passe : ",
                          value: "123456"),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 10),
                      child: InformationBox(
                          obscure: false,
                          Sicon: Icons.edit,
                          Picon: Icons.key_off_outlined,
                          text: "Identifiant unique ",
                          value: "ABck******"),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Container(
                      // padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                      height: 55,
                      width: 370,

                      child: RaisedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => CalendarMed()),
                          );
                        },
                        color: AppColors.green,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        child: Center(
                          child: Text(
                            "Consulter mon agenda",
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
            )
          ],
        ),
      ),
    );
  }
}
