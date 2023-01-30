import 'package:cnam/screens/achatMateriel.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Widgets/app_colors.dart';
import '../Widgets/service_box.dart';

import 'loginAssuré.dart';

class ProfilPrestataire extends StatefulWidget {
  const ProfilPrestataire({Key? key}) : super(key: key);

  @override
  State<ProfilPrestataire> createState() => _AssureProfilePageState();
}

class _AssureProfilePageState extends State<ProfilPrestataire> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
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
          'Mon Profil',
          style: TextStyle(fontSize: 18, color: AppColors.white),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 40),
                    height: 150,
                    width: 160,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: AppColors.LightGrey,
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage(
                              'assets/hamza.jpg',
                            ))),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 10, bottom: 20, left: 125),
                    child: Row(
                      //mainAxisAlignment: MainAxisAlignment.center,
                      //crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text('Abdelbaki Hamza',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: AppColors.Blue,
                            )),
                        IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.edit,
                              color: AppColors.Blue,
                              size: 30,
                            ))
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(12),
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: AppColors.Blue,
                borderRadius: new BorderRadius.only(
                    topLeft: const Radius.circular(30.0),
                    topRight: const Radius.circular(30.0)),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    height: 40,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      //  ServiceBox(Icon: "AchatMateriel", Name: "Pédiatrie"),
                      FlatButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const FindDoc()),
                          );
                        },
                        child: ServiceBox(
                            Icon: "Bordereaux", Name: "Psychiatrie "),
                      ),
                      ServiceBox(Icon: "AchatMateriel", Name: "Pédiatrie"),
                    ],
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      FlatButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const FindDoc()),
                          );
                        },
                        child: ServiceBox(
                            Icon: "Consultation",
                            Name: "Médecine cardiovasculaire"),
                      ),
                      ServiceBox(Icon: "Remboursement", Name: "Neurologie"),
                    ],
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      /* ServiceBox(
                          Icon: "Radiologue",
                          Name: "Radiologie et imagerie médicale"),*/
                      FlatButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const FindDoc()),
                          );
                        },
                        child: ServiceBox(
                            Icon: "Radiologue",
                            Name: "Radiologie et imagerie médicale"),
                      ),
                      ServiceBox(Icon: "Dentiste", Name: "Dentiste"),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
