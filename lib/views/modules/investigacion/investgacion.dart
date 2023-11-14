// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
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
                    btncaps(context, 'CAPITULO #1', 'Presetación de Trabajo de Grado',() { }),
                    SizedBox(height: 20,),
                    btncaps(context, 'CAPITULO #2', 'Bases Teóricas',() { }),
                    SizedBox(height: 20,),
                    btncaps(context, 'CAPITULO #3', 'Diseño Metodológico',() { }),
                    SizedBox(height: 20,),
                    btncaps(context, 'CAPITULO #4', 'Consideraciones Éticas',() { }),
                    SizedBox(height: 20,),
                    btncaps(context, 'CAPITULO #5', 'Díagnostico',() { }),
                    SizedBox(height: 20,),
                    btncaps(context, 'CAPITULO #6', 'Estructura de la Propuesta de Investigación',() { }),
                    SizedBox(height: 20,),
                    btncaps(context, 'CAPITULO #7', 'Análisis e Interpretación de Datos',() { }),
                    SizedBox(height: 20,),
                    btncaps(context, 'CAPITULO #8', 'Conclusiones',() { }),
                    SizedBox(height: 20,),
                    btncaps(context, 'CAPITULO #9', 'Limitaciones',() { }),
                    SizedBox(height: 20,),
                    btncaps(context, 'CAPITULO #10', 'Impacto, Recomendaciones y Trabajos Futuros',() { }),
                    SizedBox(height: 20,),
                    btncaps(context, 'CAPITULO #11', 'Referencias Bibliógraficas',() { }),
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