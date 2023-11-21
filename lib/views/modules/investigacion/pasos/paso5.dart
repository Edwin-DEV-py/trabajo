// ignore_for_file: prefer_const_constructors, prefer_const_constructors_in_immutables, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:trabajo/widgets/contenido.dart';
import 'package:trabajo/widgets/header.dart';

class Paso5 extends StatelessWidget {

  Paso5({super.key});

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenwidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Column(
        children: [
//contenedor del header
          HeaderContainer3(txt: '5'),
//contenedor de conetido
          Container(
            width: screenwidth*0.9,
            height: screenHeight*0.86,
            child: ListView(
              children: [
                Widget_titulo('LIBROS RECOMENDADOS'),
                SizedBox(height: 10,),
                Widget_texto('Con ayuda de tu docente realizamos un análisis del contendido de libros, para determinar diferencias temáticas y contenido. Se recomienda adquirir el libro para mayor compresión'),
                SizedBox(height: 10,),
                Image(image: AssetImage('assets/pasos/paso5/img1.png'), height: 220,),
                SizedBox(height: 10,),
                Image(image: AssetImage('assets/pasos/paso5/img2.png'), height: 200,),
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
                video_show('IDOkozXbra4'),
                SizedBox(height: 30,),
                Widget_titulo('METODOLOGIA CUANTITATIVA'),
                video_show('oAQfI3PigVI'),
                SizedBox(height: 30,),
                Widget_titulo('METODOLOGIA CUALITITATIVA'),
                video_show('w8UD6lRAF0E'),
                SizedBox(height: 20,),
                Image(image: AssetImage('assets/pasos/paso5/img3.png'), height: 400,),
                SizedBox(height: 30,),
                Widget_titulo('ACTIVIDAD 3'),
                SizedBox(height: 10,),
                Widget_texto('Para comprender mejor el siguiente tema buscaremos en las fuentes recomendadas de inteligencia artificial y otras fuentes de navegación gratuita en internet:'),
                SizedBox(height: 10,),
                video_show('YPl_54K6J-A'),
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
                Image(image: AssetImage('assets/pasos/paso5/img4.png'), height: 200,),
                SizedBox(height: 20,),
                Image(image: AssetImage('assets/pasos/paso5/img5.png'), height: 250,),
                SizedBox(height: 20,),
                Divider(thickness: 2,),
                Widget_url_activities('https://forms.gle/nc9EQ37xziJcwWkJ8'),
                SizedBox(height: 30,),
                Divider(thickness: 2,),
                Widget_herramienta_ayuda(),
                SizedBox(height: 10,),
                Divider(thickness: 2,),
                SizedBox(height: 10,),
                Widget_quiz('https://forms.gle/S9zotWGdaDPP6VQE8'),
                SizedBox(height: 30,),
              ],
            ),
          )
        ],
      ),
    );
  }
}