// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:trabajo/widgets/contenido.dart';
import 'package:trabajo/widgets/header.dart';

class Paso7 extends StatelessWidget {
  const Paso7({super.key});

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Column(
        children: [
//contenedor del header
          HeaderContainer3(txt: '7'),
//contenedor de conetido
          Container(
            width: 360,
            height: screenHeight*0.86,
            child: ListView(
              children: [
                Widget_titulo('IDEAS FINALES Y CONCLUSIONES'),
                SizedBox(height: 10,),
                Image(image: AssetImage('assets/pasos/paso7/img1.png'), height: 200,),
                SizedBox(height: 30,),
                Widget_titulo('¿Qué es la conclusión en un trabajo de investigación?'),
                SizedBox(height: 10,),
                Widget_texto('La conclusión es un elemento vital en cualquier trabajo de investigación, ya que permite al autor resumir los principales hallazgos y resultados obtenidos a lo largo del estudio. Además, la conclusión también permite al autor presentar sus propias reflexiones y opiniones sobre el tema tratado.'),
                SizedBox(height: 10,),
                Widget_texto('En este artículo, exploraremos en detalle qué es la conclusión en un trabajo de investigación y cómo se debe redactar de manera efectiva.'),
                SizedBox(height: 10,),
                Widget_texto('Si eres estudiante o investigador, este artículo te será de gran utilidad'),
                SizedBox(height: 10,),
                Widget_url_text('https://educacionactiva.org/que-es-la-conclusion-en-un-trabajo-de-investigacion/'),
                SizedBox(height: 30,),
                Widget_titulo('ACTIVIDAD 1'),
                SizedBox(height: 10,),
                Widget_texto('A continuación, se presenta ejemplos de conclusiones bien redactadas de textos académicos identifiquen elementos clave, como la recapitulación de los puntos principales y la conexión con la hipótesis o la tesis.'),
                SizedBox(height: 10,),
                Widget_url('https://drive.google.com/file/d/1TvDDhF1vHfMVSlXeVKtXLfqa0qLg7IXW/view?usp=sharing', 'pdf.png', 100),
                SizedBox(height: 30,),
                Widget_titulo('ACTIVIDAD 2'),
                SizedBox(height: 10,),
                Widget_texto('Pon en práctica lo aprendido selección un artículo y utiliza la platilla de ejemplo para redactar tu primera conclusión.'),
                SizedBox(height: 30,),
                Widget_titulo('PLATILLA DE EJEMPLO PARA REDATAR CONCLUSIONES'),
                SizedBox(height: 10,),
                Image(image: AssetImage('assets/pasos/paso7/img2.png'), height: 300,),
                SizedBox(height: 30,),
                Widget_titulo('ACTIVIDAD 3'),
                SizedBox(height: 10,),
                Widget_texto('Con bases en el proyecto simulado redactar una conclusión concisa que refleje los puntos principales del trabajo'),
                SizedBox(height: 20,),
                Divider(thickness: 2,),
                Widget_url_activities('https://forms.gle/3qEDN749Szhb42gv8'),
                SizedBox(height: 30,),
                Divider(thickness: 2,),
                Widget_herramienta_ayuda(),
                SizedBox(height: 10,),
                Divider(thickness: 2,),
                SizedBox(height: 10,),
                Widget_quiz('https://forms.gle/7A4o47ZaniPC314f7'),
                SizedBox(height: 30,),
              ],
            ),
          )
        ],
      ),
    );
  }
}