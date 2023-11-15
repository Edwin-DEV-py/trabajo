// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:trabajo/views/modules/investigacion/capitulos/capitulo1/pasos/paso1.dart';
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
                    btnpasos(context, 'PASO #1', 'Selección de Tema','problema.png',() => Get.to(()=> cap1_Paso1(),transition: Transition.rightToLeft,duration: Duration(milliseconds: 300))),
                    SizedBox(height: 20,),
                    btnpasos(context, 'PASO #2', 'Revisión Bibliográfica','revision.png',() { }),
                    SizedBox(height: 20,),
                    btnpasos(context, 'PASO #3', 'Planteamiento del Problema','plantear.png',() { }),
                    SizedBox(height: 20,),
                    btnQuiz(context, () { }),
                    SizedBox(height: 20,),
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