// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:trabajo/views/modules/investigacion/pasos/paso1.dart';
import 'package:trabajo/views/modules/investigacion/pasos/paso2.dart';
import 'package:trabajo/views/modules/investigacion/pasos/paso3.dart';
import 'package:trabajo/views/modules/investigacion/pasos/paso4.dart';
import 'package:trabajo/views/modules/investigacion/pasos/paso5.dart';
import 'package:trabajo/views/modules/investigacion/pasos/paso6.dart';
import 'package:trabajo/widgets/btn-pasos.dart';
import 'package:trabajo/widgets/colores.dart';
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
                    ElevatedButton(onPressed: (){

                    }, child: Text('Como realizar un Trabajo de Grado?', textAlign: TextAlign.center, style: TextStyle(fontSize: 18),),
                      style: ElevatedButton.styleFrom(
                        fixedSize: Size(250, 80),
                        backgroundColor: AppColors.primaryColor,
                      ),
                    ),
                    SizedBox(height: 20,),
                    Title(color: Colors.black, child: Text('PASOS PARA REALIZAR UNA INVESTIGACION', textAlign: TextAlign.center, style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),)),
                    SizedBox(height: 20,),
                    btnpasos(context, 'PASO #1', 'Selección de Tema','problema.png',() => Get.to(()=> cap1_Paso1(),transition: Transition.rightToLeft,duration: Duration(milliseconds: 300))),
                    SizedBox(height: 20,),
                    btnpasos(context, 'PASO #2', 'Revisión Bibliográfica','revision.png',() => Get.to(()=> Paso2(),transition: Transition.rightToLeft,duration: Duration(milliseconds: 300))),
                    SizedBox(height: 20,),
                    btnpasos(context, 'PASO #3', 'Planteamiento del Problema','plantear.png',() => Get.to(()=> Paso3(),transition: Transition.rightToLeft,duration: Duration(milliseconds: 300))),
                    SizedBox(height: 20,),
                    btnpasos(context, 'PASO #4', 'Marco Teórico','marco.png',() => Get.to(()=> Paso4(),transition: Transition.rightToLeft,duration: Duration(milliseconds: 300))),
                    SizedBox(height: 20,),
                    btnpasos(context, 'PASO #5', 'Metodología','meto.png',() => Get.to(()=> Paso5(),transition: Transition.rightToLeft,duration: Duration(milliseconds: 300))),
                    SizedBox(height: 20,),
                    btnpasos(context, 'PASO #6', 'Análisis y Recolección de Datos','reco.png',() => Get.to(()=> Paso6(),transition: Transition.rightToLeft,duration: Duration(milliseconds: 300))),
                    SizedBox(height: 20,),
                    btnpasos(context, 'PASO #7', 'Conclusiones','reco.png',() { }),
                    SizedBox(height: 20,),
                    btnpasos(context, 'PASO #8', 'Díagnostico','diagnostico.png',() { }),
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