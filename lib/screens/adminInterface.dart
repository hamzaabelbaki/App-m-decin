import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Widgets/app_colors.dart';
import '../Widgets/service_box.dart';

class AdminInterface extends StatefulWidget {
  const AdminInterface({Key? key}) : super(key: key);

  @override
  State<AdminInterface> createState() => _AssureProfilePageState();
}

class _AssureProfilePageState extends State<AdminInterface> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Color(0xff2c6596),
        leading: IconButton(
          icon: Icon(
            Icons.menu,
            color: Colors.white,
          ),
          onPressed: () {},
        ),
        title: Text(
          'Interface Administrateur',
          style: TextStyle(fontSize: 18, color: Colors.white),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 30),
                    height: 150,
                    width: 160,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: AppColors.LightGrey,
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage(
                              'assets/1.png',
                            ))),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Container(
              padding: EdgeInsets.all(15),
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
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ServiceBox(Icon: "email", Name: "Mes e-mails"),
                      ServiceBox(Icon: "notif", Name: "Mes notifications"),
                    ],
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ServiceBox(
                          Icon: "add_user", Name: "Ajouter un utilisateur"),
                      ServiceBox(
                          Icon: "delete_user",
                          Name: "Supprimer un utilisateur"),
                    ],
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ServiceBox(
                          Icon: "update_user", Name: "Modifier un utilisateur"),
                      ServiceBox(
                          Icon: "BD", Name: "Consulter la base de donnée"),
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
