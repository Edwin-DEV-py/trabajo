// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:trabajo/widgets/btn-pasos.dart';
import 'package:trabajo/widgets/header.dart';

class Cap7 extends StatelessWidget {
  const Cap7({super.key});

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
//contenedor del header
          HeaderContainer2(txt: '7', txt2: 'Análisis e Interpretación de Datos',),
//contenedor de los pasos
          Container(
            height: screenHeight*0.86,
            width: double.infinity,
            child:ListView(
              children: [
                Column(
                  children: [
                    btnpasos(context, 'PASO #10', 'Análisis e Interpretación de Datos','investigacion.png',() { }),
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