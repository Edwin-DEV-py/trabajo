// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:trabajo/widgets/contenido.dart';
import 'package:trabajo/widgets/header.dart';

class Paso6 extends StatelessWidget {
  const Paso6({super.key});

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenwidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Column(
        children: [
//contenedor del header
          HeaderContainer3(txt: '6'),
//contenedor de conetido
          Container(
            width: screenwidth*0.9,
            height: screenHeight*0.86,
            child: ListView(
              children: [
                Widget_titulo('RECOLECCION Y ANALISIS DE DATOS'),
                SizedBox(height: 10,),
                Image(image: AssetImage('assets/pasos/pasos6/img1.png'), height: 220,),
                SizedBox(height: 30,),
                Widget_titulo('ACTIVIDAD 1'),
                SizedBox(height: 10,),
                Widget_texto('Con bases en otras fuentes y el material dispuesto, analizó en que cosiste cada una de las técnicas para recolectar datos y su forma de elaboración. Ejemplo en que cosiste la encuesta.'),
                SizedBox(height: 10,),
                Image(image: AssetImage('assets/pasos/pasos6/img2.png'), height: 250,),
                SizedBox(height: 10,),
                Image(image: AssetImage('assets/pasos/pasos6/img3.png'), height: 250,),
                SizedBox(height: 30,),
                Widget_titulo('Técnicas de recolección de datos Investigación Cualitativa'),
                SizedBox(height: 10,),
                video_show('XCc8vdw3924'),
                SizedBox(height: 30,),
                Widget_titulo('Técnicas de recolección de datos Investigación Cuantitativa'),
                SizedBox(height: 10,),
                video_show('6_eoeaWVkGY'),
                SizedBox(height: 30,),
                Widget_titulo('Plan de recolección de datos: Qué es y pasos para crearlo'),
                SizedBox(height: 10,),
                Widget_url_text('https://www.questionpro.com/blog/es/plan-de-recoleccion-de-datos/'),
                SizedBox(height: 30,),
                Widget_titulo('ACTIVIDAD 2'),
                SizedBox(height: 10,),
                Widget_texto('ANALISIS DE DATOS observó el material dispuesto para realizar un análisis de datos'),
                SizedBox(height: 10,),
                Widget_url_text('https://www.questionpro.com/blog/es/analisis-cuantitativo/'),
                SizedBox(height: 10,),
                Image(image: AssetImage('assets/pasos/pasos6/img4.png'), height: 200,),
                SizedBox(height: 10,),
                Image(image: AssetImage('assets/pasos/pasos6/img5.png'), height: 200,),
                SizedBox(height: 30,),
                Widget_titulo('Tabular encuestas en Excel'),
                SizedBox(height: 10,),
                video_show('jFL585q3_Ao'),
                SizedBox(height: 20,),
                Divider(thickness: 2,),
                Widget_url_activities('https://forms.gle/nc9EQ37xziJcwWkJ8'),
                SizedBox(height: 30,),
                Divider(thickness: 2,),
                Widget_herramienta_ayuda(),
                SizedBox(height: 10,),
                Divider(thickness: 2,),
                SizedBox(height: 10,),
                Widget_quiz('https://forms.gle/MMoySoW9F8U7PCbb6'),
                SizedBox(height: 30,),
              ],
            ),
          )
        ],
      ),
    );
  }
}