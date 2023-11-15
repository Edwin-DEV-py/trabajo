// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:trabajo/widgets/header.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class cap1_Paso1 extends StatelessWidget {
  const cap1_Paso1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
//contenedor del header
        children: [
          HeaderContainer3(txt: '1'),
//contenedor de contenido
          Container(
            child: SingleChildScrollView(
              child: Container(
                width: 360,
                child: Column(
                    children: [
                    SizedBox(height: 10,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Title(color: Colors.black, child: Text('SELECCION DE TEMA', style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold
                        ),)),
                      ],
                    ),
                    SizedBox(height: 10,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Text('Para esta actividad se hace necesario ver el video y buscar temas de su interés para dar ejemplo de temáticas, elijan un tema de su interés para investigar debe ser sencillos que conozcas de su gusto que creas que puede llevar a cabo y que este a su disponibilidad. Con base en el video realiza un mapa conceptual sobre los pasos para hacer una investigación, selecciona un tema relacionado con sus futuros estudios universitarios o con sus intereses, posteriormente se les facilita un tema como propuesta y con él, se trabajará entre todas las siguientes etapas de una investigación. A esta temática se le debe reducir, especificar, delimitar en tiempo, lugar.', 
                            textAlign: TextAlign.justify,
                          )
                        )
                      ],
                    ),
                    SizedBox(height: 10,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        YoutubePlayer(
                          controller: YoutubePlayerController(
                            initialVideoId: 'https://www.youtube.com/watch?v=Wx5UhVHthVw',
                            flags: YoutubePlayerFlags(
                              autoPlay: false,
                            )
                          ),
                          showVideoProgressIndicator: true,
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}