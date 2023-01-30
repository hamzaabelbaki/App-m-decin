import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'app_colors.dart';

class ServiceBox extends StatelessWidget {
  String Name;
  String Icon;
  ServiceBox({Key? key, required this.Icon, required this.Name})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      height: 150,
      width: 150,
      decoration: BoxDecoration(
        border: Border.all(
          width: 3,
          color: AppColors.LightGrey,
        ),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.only(top: 10),
            height: 67,
            width: 67,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: AppColors.LightGrey,
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(
                      'assets/' + Icon + '.png',
                    ))),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            child: Text(
              Name,
              textAlign: TextAlign.center,
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
          )
        ],
      ),
    );
  }
}
