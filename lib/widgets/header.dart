// ignore_for_file: sized_box_for_whitespace, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class HeaderContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;

    return Container(
      width: double.infinity,
      height: screenHeight * 0.12,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Padding(
            padding: EdgeInsets.all(0.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  onPressed: (){
                    Navigator.pop(context);
                  }, 
                  icon: Icon(
                    Icons.turn_left_outlined,
                    size: 35,
                  ),
                ),
                Text(
                  'Capitulos',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
                Icon(
                  Icons.exit_to_app_outlined,
                  size: 35,
                ),
              ],
            ),
          ),
          Divider(
            color: Colors.black,
            thickness: 2,
          )
        ],
      ),
    );
  }
}