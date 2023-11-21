// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last, sized_box_for_whitespace, file_names

import 'package:flutter/material.dart';
import 'package:trabajo/widgets/colores.dart';

Widget btnpasos(BuildContext context,String txt,String txt2, String img, VoidCallback onPressed){
  return Container(
    width: 250,
    height: 180,
    child: Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/$img', width: 100,)
          ],
        ),
        SizedBox(height: 5),
        ElevatedButton(
          onPressed: onPressed,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(txt, style: TextStyle(
                fontSize: 18,
                color: Colors.white
              ),),
              Text(txt2,style: TextStyle(
                fontSize: 15,
                color: Colors.white
              ), textAlign: TextAlign.center,),
            ],
          ),
          style: ElevatedButton.styleFrom(backgroundColor: AppColors.primaryColor, fixedSize: Size(250,70)),
        ),
      ],
    )
  );
}


Widget btnQuiz(BuildContext context, VoidCallback onPressed){
  
  return Container(
    width: 250,
    height: 160,
    child: Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/quizas.png', width: 100,)
          ],
        ),
        SizedBox(height: 10),
        ElevatedButton(
          onPressed: onPressed,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Evalúa tus Conocimientos', style: TextStyle(
                fontSize: 18
              ),)
            ],
          ),
          style: ElevatedButton.styleFrom(backgroundColor: AppColors.primaryColor, fixedSize: Size(250,50)),
        ),
      ],
    )
  );
}