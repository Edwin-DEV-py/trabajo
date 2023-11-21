import 'package:flutter/material.dart';
import 'package:trabajo/widgets/contenido.dart';
import 'package:trabajo/widgets/header.dart';

class Paso2 extends StatelessWidget {
  const Paso2({super.key});

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Column(
        children: [
//contenedor del header
          HeaderContainer3(txt: '2'),
//contenedor de conetido
          Container(
            width: 360,
            height: screenHeight*0.86,
            child: ListView(
              children: [
                Widget_titulo('REVISION BIBLIOGRAFICA'),
                SizedBox(height: 10,),
                Widget_url_text('https://gea.lat/guia-completa-revision-bibliografica-y-ejemplos/#Paso_1:_Definir_el_tema_de_investigaci%C3%B3n'),
                SizedBox(height: 10,),
                Widget_texto('Se deben presentar resultados de investigaciones realizadas a nivel nacional como internacional en la misma área de interés publicados en revistas especializadas durante los últimos 5 a 7 años. Para esta búsqueda se realizará en bases de datos abiertas como: Google Scholar, Scopus, ERIC, Science direct, Redalyc, Scielo, de los ultimo 5-7 años resaltando el tema de interés escriban un resumen de cada fuente y destaquen los hallazgos clave.'),
                Widget_texto('Tener presente, el autor, tema, pagina citas.'),
                SizedBox(height: 10,),
                Widget_Subtitulo('Redacción de la Revisión Bibliográfica:'),
                Widget_texto('Posteriormente redacten un documento que incluya una introducción, la revisión bibliográfica propiamente dicha y una conclusión.Anima a que incorporen su análisis y reflexiones personales.'),
                SizedBox(height: 10,),
                Widget_Subtitulo('Presentación Oral:'),
                Widget_texto('Organiza sesiones de presentación donde los estudiantes compartan sus hallazgos con la clase.Fomenta el debate y las preguntas entre los compañeros.'),
                Widget_texto('Retroalimentación y Revisión'),
                SizedBox(height: 10,),
                Widget_Subtitulo('Planteamiento del problema:'),
                Widget_texto('Realizar el planteamiento del problema con bases en el siguiente video'),
                SizedBox(height: 10,),
                video_show('-C-YpcVkvc8'),
                SizedBox(height: 10,),
                Widget_url_text('https://miasesordetesis.com/como-redactar-el-planteamiento-del-problema-paso-a-paso/'),
                SizedBox(height: 10,),
                Widget_texto('Paso a paso para redactar el planteamiento del problema'),
                SizedBox(height: 20,),
                Divider(thickness: 2,),
                Widget_url_activities('https://forms.gle/z5LtYeJsdwk2JXkv9'),
                SizedBox(height: 20,),
                Divider(thickness: 2,),
                Widget_herramienta_ayuda(),
                SizedBox(height: 30,),
              ],
            )
          )
        ],
      ),
    );
  }
}