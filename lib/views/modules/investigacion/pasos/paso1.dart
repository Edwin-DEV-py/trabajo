// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, camel_case_types, avoid_unnecessary_containers, sized_box_for_whitespace
import 'package:flutter/material.dart';
import 'package:trabajo/widgets/contenido.dart';
import 'package:trabajo/widgets/header.dart';

class cap1_Paso1 extends StatelessWidget {
  const cap1_Paso1({super.key});

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenwidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Column(
        children: [
          HeaderContainer3(txt: '1'),
          Container(
            child: Container(
                width: screenwidth*0.90,
                height: screenHeight*0.86,
                child: ListView(
                  children: [
                    SizedBox(height: 10,),
                    Widget_titulo('SELECCION DE TEMA'),
                    SizedBox(height: 10,),
                    Widget_texto('Para esta actividad se hace necesario ver el video y buscar temas de su interés para dar ejemplo de temáticas, elijan un tema de su interés para investigar debe ser sencillo, que conozcas, de tu gusto, que creas que puede llevar a cabo y que esté a tu disponibilidad. Con base en el video, realiza un mapa conceptual sobre los pasos para hacer una investigación, selecciona un tema relacionado con tus futuros estudios universitarios o con tus intereses. Posteriormente, se te facilitará un tema como propuesta y con él, trabajarás entre todas las siguientes etapas de una investigación. A esta temática se le debe reducir, especificar, delimitar en tiempo y lugar.',),
                    SizedBox(height: 10,),
                    video_show('Wx5UhVHthVw'),
                    SizedBox(height: 30,),
                    Widget_titulo('BUSQUEDA DE FUENTES'),
                    SizedBox(height: 10,),
                    Widget_texto('Utiliza las bases de datos académicas, bibliotecas digitales y otras fuentes confiables.'),
                    Widget_texto('Proporciónales una lista de palabras clave relacionadas con su tema para facilitar la búsqueda.'),
                    SizedBox(height: 10,),
                    Widget_Subtitulo('Fuentes de Información:'),
                    Widget_texto('Consulta cuales son las fuentes de información primarias, segundarias y terciarias con ellas realiza una infografía en las planillas de Canva.'),
                    Widget_texto('Reglas básicas de citación y referencia en un estilo específico (APA, MLA, etc.).'),
                    Widget_texto('Solicita que practiquen la correcta citación de sus fuentes.'),
                    SizedBox(height: 10,),
                    video_show('nQh7zBSA_2A'),
                    SizedBox(height: 20,),
                    Divider(thickness: 2,),
                    Widget_url_activities('https://forms.gle/HiicyZ2VqG715t6B8'),
                    SizedBox(height: 20,),
                    Divider(thickness: 2,),
                    Widget_herramienta_ayuda(),
                    SizedBox(height: 30,),
                  ],
                ),
              ),
            ),
        ],
      ),
    );
  }
}

