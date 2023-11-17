// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:trabajo/widgets/contenido.dart';
import 'package:trabajo/widgets/header.dart';

class Paso5 extends StatelessWidget {

  Paso5({super.key});

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Column(
        children: [
//contenedor del header
          HeaderContainer3(txt: '5'),
//contenedor de conetido
          Container(
            width: 360,
            height: screenHeight*0.86,
            child: ListView(
              children: [
                Widget_titulo('LIBROS RECOMENDADOS'),
                SizedBox(height: 10,),
                Widget_texto('Con ayuda de tu docente realizamos un análisis del contendido de libros, para determinar diferencias temáticas y contenido. Se recomienda adquirir el libro para mayor compresión'),
                SizedBox(height: 10,),
                //img
                SizedBox(height: 10,),
                //img
                SizedBox(height: 30,),
                Widget_titulo('ACTIVIDAD 1'),
                SizedBox(height: 10,),
                Widget_texto('Consulto, Leo, analizo y realizo un cuadro comparativo de diferencias entre los siguientes conceptos: '),
                Widget_Subtitulo('    -Investigación'),
                Widget_Subtitulo('    -Metodología'),
                Widget_Subtitulo('    -Método'),
                Widget_Subtitulo('    -Enfoque'),
                SizedBox(height: 30,),
                Widget_titulo('ACTIVIDAD 2'),
                SizedBox(height: 10,),
                Widget_texto('Con base en el libro y el siguiente video, analizó cuales son los enfoques en una metodología de investigación cualitativa, cuantitativa, mixta, en que cosite cada una y en que se diferencian.Con base en el libro y el siguiente video, analizó cuales son los enfoques en una metodología de investigación cualitativa, cuantitativa, mixta, en que cosite cada una y en que se diferencian.'),
                SizedBox(height: 10,),
                //video
                SizedBox(height: 30,),
                Widget_titulo('METODOLOGIA CUANTITATIVA'),
                //video
                SizedBox(height: 30,),
                Widget_titulo('METODOLOGIA CUALITITATIVA'),
                //video
                SizedBox(height: 10,),
                //img
                SizedBox(height: 30,),
                Widget_titulo('ACTIVIDAD 3'),
                SizedBox(height: 10,),
                Widget_texto('Para comprender mejor el siguiente tema buscaremos en las fuentes recomendadas de inteligencia artificial y otras fuentes de navegación gratuita en internet:'),
                SizedBox(height: 10,),
                Widget_texto('-Alcance'),
                Widget_texto('-Hipótesis'),
                Widget_texto('-Variables'),
                Widget_texto('-Variable Independiente'),
                Widget_texto('-Variable Interviniente'),
                Widget_texto('-Operacionalización de Variables o Descripción de Categorías'),
                Widget_texto('-Población y Muestra'),
                Widget_texto('-Población'),
                Widget_texto('-Muestra'),
                Widget_texto('-Procedimiento'),
                SizedBox(height: 20,),
                Divider(thickness: 2,),
                Widget_herramienta_ayuda(),
                SizedBox(height: 10,),
                Divider(thickness: 2,),
                SizedBox(height: 10,),
                Widget_quiz(''),
                SizedBox(height: 30,),
              ],
            ),
          )
        ],
      ),
    );
  }
}