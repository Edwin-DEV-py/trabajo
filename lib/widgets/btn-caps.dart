// ignore_for_file: sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:trabajo/widgets/colores.dart';

Widget btncaps(BuildContext context,String txt,String txt2, VoidCallback onPressed){
  return ElevatedButton(
    onPressed:onPressed, 
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(txt, style: TextStyle(
          fontSize: 20
        ),),
        Text(txt2,style: TextStyle(
          fontSize: 16
        ), textAlign: TextAlign.center,),
      ],
    ),
    style: ElevatedButton.styleFrom(
      backgroundColor: AppColors.primaryColor,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0)
      ),
      fixedSize: Size(250,70)
    ),
  );
}
