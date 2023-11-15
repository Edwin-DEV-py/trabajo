// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:trabajo/views/modules/investigacion/capitulos/capitulo1/cap1.dart';
import 'package:trabajo/views/modules/investigacion/capitulos/capitulo10/cap10.dart';
import 'package:trabajo/views/modules/investigacion/capitulos/capitulo11/cap11.dart';
import 'package:trabajo/views/modules/investigacion/capitulos/capitulo2/cap2.dart';
import 'package:trabajo/views/modules/investigacion/capitulos/capitulo3/cap3.dart';
import 'package:trabajo/views/modules/investigacion/capitulos/capitulo4/cap4.dart';
import 'package:trabajo/views/modules/investigacion/capitulos/capitulo5/cap5.dart';
import 'package:trabajo/views/modules/investigacion/capitulos/capitulo6/cap6.dart';
import 'package:trabajo/views/modules/investigacion/capitulos/capitulo7/cap7.dart';
import 'package:trabajo/views/modules/investigacion/capitulos/capitulo8/cap8.dart';
import 'package:trabajo/views/modules/investigacion/capitulos/capitulo9/cap9.dart';
import 'package:trabajo/widgets/btn-caps.dart';
import 'package:trabajo/widgets/header.dart';

class InvestigacionModulo extends StatelessWidget {
  const InvestigacionModulo({super.key});

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
        children: [
//contenedor de header
          HeaderContainer(),
//contenedor de los modulos
          Container(
            width: 250,
            height: screenHeight * 0.88,
              child: ListView(
                  children: [
                    btncaps(context, 'CAPITULO #1', 'Presetación de Trabajo de Grado',() => Get.to(()=> Cap1(),transition: Transition.rightToLeft,duration: Duration(milliseconds: 300))),
                    SizedBox(height: 20,),
                    btncaps(context, 'CAPITULO #2', 'Bases Teóricas',() => Get.to(()=> Cap2(),transition: Transition.rightToLeft,duration: Duration(milliseconds: 300))),
                    SizedBox(height: 20,),
                    btncaps(context, 'CAPITULO #3', 'Diseño Metodológico',() => Get.to(()=> Cap3(),transition: Transition.rightToLeft,duration: Duration(milliseconds: 300))),
                    SizedBox(height: 20,),
                    btncaps(context, 'CAPITULO #4', 'Consideraciones Éticas',() => Get.to(()=> Cap4(),transition: Transition.rightToLeft,duration: Duration(milliseconds: 300))),
                    SizedBox(height: 20,),
                    btncaps(context, 'CAPITULO #5', 'Díagnostico',() => Get.to(()=> Cap5(),transition: Transition.rightToLeft,duration: Duration(milliseconds: 300))),
                    SizedBox(height: 20,),
                    btncaps(context, 'CAPITULO #6', 'Estructura de la Propuesta de Investigación',() => Get.to(()=> Cap6(),transition: Transition.rightToLeft,duration: Duration(milliseconds: 300))),
                    SizedBox(height: 20,),
                    btncaps(context, 'CAPITULO #7', 'Análisis e Interpretación de Datos',() => Get.to(()=> Cap7(),transition: Transition.rightToLeft,duration: Duration(milliseconds: 300))),
                    SizedBox(height: 20,),
                    btncaps(context, 'CAPITULO #8', 'Conclusiones',() => Get.to(()=> Cap8(),transition: Transition.rightToLeft,duration: Duration(milliseconds: 300))),
                    SizedBox(height: 20,),
                    btncaps(context, 'CAPITULO #9', 'Limitaciones',() => Get.to(()=> Cap9(),transition: Transition.rightToLeft,duration: Duration(milliseconds: 300))),
                    SizedBox(height: 20,),
                    btncaps(context, 'CAPITULO #10', 'Impacto, Recomendaciones y Trabajos Futuros',() => Get.to(()=> Cap10(),transition: Transition.rightToLeft,duration: Duration(milliseconds: 300))),
                    SizedBox(height: 20,),
                    btncaps(context, 'CAPITULO #11', 'Referencias Bibliógraficas',() => Get.to(()=> Cap11(),transition: Transition.rightToLeft,duration: Duration(milliseconds: 300))),
                    SizedBox(height: 20,),
                  ],
                ),
            )
        ],
      ),
      )
    );
  }
}