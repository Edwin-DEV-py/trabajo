// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:trabajo/widgets/colores.dart';

Widget btnpasos(BuildContext context,String txt,String txt2, VoidCallback onPressed){
  return Container(
    width: 250,
    height: 160,
    child: Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/idea.png', width: 100,)
          ],
        ),
        SizedBox(height: 10),
        ElevatedButton(
          onPressed: onPressed,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(txt, style: TextStyle(
                fontSize: 18
              ),),
              Text(txt2,style: TextStyle(
                fontSize: 15
              ), textAlign: TextAlign.center,),
            ],
          ),
          style: ElevatedButton.styleFrom(backgroundColor: AppColors.primaryColor, fixedSize: Size(250,50)),
        ),
      ],
    )
  );
}
