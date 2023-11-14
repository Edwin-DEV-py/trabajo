// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:trabajo/widgets/btn-pasos.dart';
import 'package:trabajo/widgets/header.dart';

class Cap1 extends StatelessWidget {
  const Cap1({super.key});

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
//contenedor del header
          HeaderContainer2(txt: '1', txt2: 'Presetación de Trabajo de Grado',),
//contenedor de los pasos
          Container(
            height: screenHeight*0.86,
            width: double.infinity,
            child:ListView(
              children: [
                Column(
                  children: [
                    btnpasos(context, 'PASO #1', 'Selección de Tema',() { }),
                    SizedBox(height: 20,),
                    btnpasos(context, 'PASO #2', 'Revisión Bibliográfica',() { }),
                    SizedBox(height: 20,),
                    btnpasos(context, 'PASO #3', 'Planteamiento del Problema',() { }),
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