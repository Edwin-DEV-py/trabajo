// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:trabajo/widgets/btn-pasos.dart';
import 'package:trabajo/widgets/header.dart';

class Cap11 extends StatelessWidget {
  const Cap11({super.key});

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
//contenedor del header
          HeaderContainer2(txt: '11', txt2: 'Referencias Bibliógraficas',),
//contenedor de los pasos
          Container(
            height: screenHeight*0.86,
            width: double.infinity,
            child:ListView(
              children: [
                Column(
                  children: [
                    btnpasos(context, 'PASO #14', 'Referencias Bibliógraficas','t.png',() { }),
                    SizedBox(height: 20,),
                    btnQuiz(context, () { })
                  ],
                ),
              ],
            )
          )
        ],
      ),
    );
  }
}