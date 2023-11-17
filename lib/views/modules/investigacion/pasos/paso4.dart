// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:trabajo/widgets/contenido.dart';
import 'package:trabajo/widgets/header.dart';

class Paso4 extends StatelessWidget {
  const Paso4({super.key});

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Column(
        children: [
//contenedor del header
          HeaderContainer3(txt: '4'),
//contenedor de conetido
          Container(
            width: 360,
            height: screenHeight*0.86,
            child: ListView(
              children: [
                Widget_titulo('ACTIVIDAD 1'),
                SizedBox(height: 20,),
                Widget_Subtitulo('Aportes al Estado del Arte:'),
                Widget_texto('Observa el video y sigue el paso a paso para hacer tu propio estado del arte basado en la temática de tu investigación.Escribe un borrador del Estado del Arte, asegurándote de incluir una introducción, una revisión de la literatura organizada y una conclusión que destaque las lagunas identificadas.Solicita retroalimentación de tus colegas o mentores y realiza revisiones según sea necesario'),
                SizedBox(height: 10,),
                //video
                SizedBox(height: 10,),
                Widget_url('https://www.redalyc.org/pdf/3459/345945922011.pdf', 'pdf.png', 100),
                SizedBox(height: 10,),
                //imagen
                SizedBox(height: 30,),
                Widget_titulo('ACTIVIDAD 2'),
                SizedBox(height: 10,),
                Widget_texto('Observa el video y las imágenes, luego avanza en la realización de tu marco teórico'),
                SizedBox(height: 10,),
                //video2
                SizedBox(height: 10,),
                //img
                SizedBox(height: 10,),
                //img
                SizedBox(height: 10,),
                //img
                SizedBox(height: 30,),
                Widget_titulo('PDF COMO REDATAR EL MARCO TEORICO'),
                SizedBox(height: 10,),
                Widget_url('https://redacwords.com/como-redactar-un-marco-teorico/', 'pdf.png', 100),
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