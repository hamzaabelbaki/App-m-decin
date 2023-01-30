import 'package:flutter/material.dart';

import '../Widgets/app_colors.dart';
import 'doctor1.dart';
import 'loginAssuré.dart';

class FindDoc extends StatefulWidget {
  const FindDoc({Key? key}) : super(key: key);

  @override
  _FindDocState createState() => _FindDocState();
}

class _FindDocState extends State<FindDoc> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          "Doctors",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Navigator.pushReplacement(
                context, MaterialPageRoute(builder: (context) => LogIn()));
          },
        ),
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
        elevation: 0.0,
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Row(
              children: [
                SizedBox(
                  width: 15,
                ),
                Container(
                  width: 345,
                  child: TextField(
                    style: TextStyle(
                      fontSize: 15.0,
                      color: Colors.blueAccent,
                    ),
                    decoration: InputDecoration(
                      hintText: "Search Doctors",
                      fillColor: Colors.white,
                      filled: true,
                      contentPadding:
                          EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50),
                        borderSide:
                            BorderSide(color: Colors.blueAccent, width: 50.0),
                      ),
                      suffixIcon: CircleAvatar(
                        radius: 20,
                        backgroundColor: AppColors.Blue,
                        child: IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.search),
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 40,
            ),
            Row(
              children: [
                SizedBox(
                  width: 50,
                ),
                GestureDetector(
                  /* changer code  */
                  onTap: () => {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => doctor1()))
                  },
                  child: Column(
                    children: [
                      Container(
                        height: 120,
                        width: 130,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                              color: AppColors.Blue.withOpacity(0.5),
                              spreadRadius: 0.5,
                              blurRadius: 0.5,
                              offset: Offset(
                                0,
                                22,
                              ),
                              // changes position of shadow
                            ),
                          ],
                          image: DecorationImage(
                            image: AssetImage(
                              "assets/hamza.jpg",
                            ),
                            //fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Row(
                        children: [
                          Text("Hamza Abdelbaki"),
                          SizedBox(
                            width: 2,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                //coul
                SizedBox(
                  width: 40,
                ),
                Column(
                  children: [
                    Container(
                      height: 120,
                      width: 130,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                            color: AppColors.Blue.withOpacity(0.5),
                            spreadRadius: 0.5,
                            blurRadius: 0.5,
                            offset: Offset(
                              0,
                              22,
                            ), // changes position of shadow
                          ),
                        ],
                        image: DecorationImage(
                          image: AssetImage(
                            "assets/doct1.jpg",
                          ),
                          //fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        Text("Aziz Aziz"),
                        SizedBox(
                          width: 2,
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 40,
            ),
            Row(
              children: [
                SizedBox(
                  width: 50,
                ),
                Column(
                  children: [
                    Container(
                      height: 120,
                      width: 130,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                            color: AppColors.Blue.withOpacity(0.5),
                            spreadRadius: 0.5,
                            blurRadius: 0.5,
                            offset: Offset(
                              0,
                              22,
                            ), // changes position of shadow
                          ),
                        ],
                        image: DecorationImage(
                          image: AssetImage(
                            "assets/doct2.jpg",
                          ),
                          //fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        Text("Farah Hachicha"),
                        SizedBox(
                          width: 2,
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  width: 40,
                ),
                Column(
                  children: [
                    Container(
                      height: 120,
                      width: 130,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                            color: AppColors.Blue.withOpacity(0.5),
                            spreadRadius: 0.5,
                            blurRadius: 0.5,
                            offset: Offset(
                              0,
                              22,
                            ), // changes position of shadow
                          ),
                        ],
                        image: DecorationImage(
                          image: AssetImage(
                            "assets/doct3.jpg",
                          ),
                          //fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        Text("Aymen Maskhi"),
                        SizedBox(
                          width: 2,
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 40,
            ),
            Row(
              children: [
                SizedBox(
                  width: 50,
                ),
                Column(
                  children: [
                    Container(
                      height: 120,
                      width: 130,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                            color: AppColors.Blue.withOpacity(0.5),
                            spreadRadius: 0.5,
                            blurRadius: 0.5,
                            offset: Offset(
                              0,
                              22,
                            ), // changes position of shadow
                          ),
                        ],
                        image: DecorationImage(
                          image: AssetImage(
                            "assets/Hamza1.jpg",
                          ),
                          //fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        Text("Hamzus Essaghir"),
                        SizedBox(
                          width: 2,
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  width: 40,
                ),
                GestureDetector(
                  /* changer code  */
                  onTap: () => {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => doctor1()))
                  },
                  child: Column(
                    children: [
                      Container(
                        height: 120,
                        width: 130,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                              color: AppColors.Blue.withOpacity(0.5),
                              spreadRadius: 0.5,
                              blurRadius: 0.5,
                              offset: Offset(
                                0,
                                22,
                              ), // changes position of shadow
                            ),
                          ],
                          image: DecorationImage(
                            image: AssetImage(
                              "assets/Samia.png",
                            ),
                            //fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Row(
                        children: [
                          Text("Sara Oualha"),
                          SizedBox(
                            width: 2,
                          ),
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
            SizedBox(
              height: 40,
            ),
            Row(
              children: [
                SizedBox(
                  width: 50,
                ),
                Column(
                  children: [
                    Container(
                      height: 120,
                      width: 130,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                            color: AppColors.Blue.withOpacity(0.5),
                            spreadRadius: 0.5,
                            blurRadius: 0.5,
                            offset: Offset(
                              0,
                              22,
                            ), // changes position of shadow
                          ),
                        ],
                        image: DecorationImage(
                          image: AssetImage(
                            "assets/Samia.png",
                          ),
                          //fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        Text("Samia Samia"),
                        SizedBox(
                          width: 2,
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  width: 40,
                ),
                Column(
                  children: [
                    Container(
                      height: 120,
                      width: 130,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                            color: AppColors.Blue.withOpacity(0.5),
                            spreadRadius: 0.5,
                            blurRadius: 0.5,
                            offset: Offset(
                              0,
                              22,
                            ), // changes position of shadow
                          ),
                        ],
                        image: DecorationImage(
                          image: AssetImage(
                            "assets/hamza.jpg",
                          ),
                          //fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        Text("Achref Achref"),
                        SizedBox(
                          width: 2,
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
