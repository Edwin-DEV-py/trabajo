// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:trabajo/widgets/contenido.dart';
import 'package:trabajo/widgets/header.dart';

class Paso3 extends StatelessWidget {
  const Paso3({super.key});

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenwidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Column(
        children: [
//contenedor del header
          HeaderContainer3(txt: '3'),
//contenedor de conetido
          Container(
            width: screenwidth*0.90,
            height: screenHeight*0.86,
            child: ListView(
              children: [
                Widget_texto('Para las fases del paso numero 3 favor apoyarse en los videos, la imagen y el material que se les facilitó, así como el uso de chat gpt, Google Bing, Komo, you.com, Waldo, Perplejidad, Andi, Sí. Conocidos como motores de búsqueda de inteligencia artificial. Para realizar el planteamiento del problema, la pregunta problema, Justificación, el objetivo general y los objetivos específicos. Para la problemática específica que estamos trabajando. Envió documento Word'),
                SizedBox(height: 10,),
                Widget_url('https://www.dropbox.com/scl/fi/3jv13wdmzjmdaeb5wnwqp/Formato-informe-paso-3.docx?rlkey=7nmlg6vcteq0xnj6nf126fxb5&dl=0', 'palabra.png', 100),
                SizedBox(height: 10,),
                Widget_titulo('PLANTEAMIENTO DEL PROBLEMA'),
                SizedBox(height: 10,),
                Widget_texto('Con base en el titulo propuesto por la docente (Factores de deserción escolar que enfrentan los estudiantes de educación segundaria en la zona rural de la institución educativa colegio marta durante el año 2023). Debemos intentar realizar un planteamiento del problema, favor revisar videos.'),
                SizedBox(height: 10,),
                video_show('Doku25B_d0U'),
                SizedBox(height: 10,),
                Widget_url_text('https://www.questionpro.com/blog/es/planteamiento-del-problema/'),
                SizedBox(height: 30,),
                Widget_titulo('PREGUNTA PROBLEMA'),
                SizedBox(height: 10,),
                Widget_Subtitulo('Justificacion:'),
                Widget_texto('Observa el video y la imagen y con la temática propuesta intenta realizar una pregunta problema la cual debe iniciar con un verbo, y responder a las preguntas de la imagen'),
                SizedBox(height: 10,),
                Widget_url_text('https://www.questionpro.com/blog/es/pregunta-de-investigacion'),
                SizedBox(height: 10,),
                Image(image: AssetImage('assets/pasos/paso3/img1.png'), height: 250,),
                SizedBox(height: 10,),
                Widget_texto('Utilizar lista de verbos compartida por la docente en documento de Word:'),
                SizedBox(height: 10,),
                Widget_url('https://www.dropbox.com/scl/fi/dzjkesuhu1wyl3i9mtyze/LISTADO-DE-VERBOS.doc?rlkey=ljke4z06zimtbkew1hei0rxpl&dl=0', 'palabra.png', 100),
                SizedBox(height: 10,),
                Widget_titulo('OBJETIVO GENERAL'),
                SizedBox(height: 10,),
                Widget_Subtitulo('Objetivos Específicos (3-4):'),
                Widget_texto('deben llevar una secuencia para cumplir con el objetivo general.'),
                SizedBox(height: 10,),
                Widget_url_text('https://concepto.de/objetivos-generales-y-especificos/'),
                SizedBox(height: 20,),
                Divider(thickness: 2,),
                Widget_url_activities('https://forms.gle/Z7wtiVxzwTXo5U9b9'),
                SizedBox(height: 20,),
                Divider(thickness: 2,),
                Widget_herramienta_ayuda(),
                SizedBox(height: 10,),
                Divider(thickness: 2,),
                SizedBox(height: 10,),
                Widget_quiz('https://forms.gle/pqYxqcZxBfCRv7LW7'),
                SizedBox(height: 30,),
              ],
            ),
          )
        ],
      ),
    );
  }
}