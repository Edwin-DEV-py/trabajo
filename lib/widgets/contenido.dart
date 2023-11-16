// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:trabajo/widgets/video_view.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

Widget Widget_titulo(String txt){
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Title(color: Colors.black, child: Text(txt, style: TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.bold
      ),)),
    ],
  );
}

Widget Widget_Subtitulo(String txt){
  return Row(
    mainAxisAlignment: MainAxisAlignment.start,
    children: [
      Title(color: Colors.black, child: Text(txt, style: TextStyle(
        fontSize: 15,
        fontWeight: FontWeight.bold
      ),)),
    ],
  );
}

Widget Widget_texto(String txt){
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Expanded(
        child: Text(
          txt,
          textAlign: TextAlign.justify,
        ),
      )
    ],
  );
}

Widget Widget_url(String txt, String img){

  _launchURL(String url) async {
  if (!await launchUrl(Uri.parse(url))) {
    throw 'No se pudo abrir la URL: $url';
  }else{
      await launchUrl(Uri.parse(url));
    }
  }

  return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        GestureDetector(
          onTap: () {
            _launchURL(txt);
          },
          child: Image(
            image: AssetImage('assets/miniaturas/$img'),
            fit: BoxFit.cover,
            width: 350,
            height: 200,
          ),
        ),
      ],
    );
}

Widget video_show(String url){
  return GestureDetector(
    onTap: (){
      Get.to(Video_View(url: url), transition: Transition.fade, duration: Duration(seconds: 1));
    },
    child: YoutubePlayer(
      controller: YoutubePlayerController(
        initialVideoId: url,
        flags: const YoutubePlayerFlags(
          autoPlay: false,
          hideControls: true
        )
      )
    ),
  );
}

Widget Widget_herramienta_ayuda(){
  return Column(
    children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Title(color: Colors.black, child: Text('HERRAMIENTAS DE AYUDA', style: TextStyle(
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
            child: Text(
              'Con estas herramientas, tienes la capacidad de formular preguntas específicas sobre los temas que te resulten más desafiantes, y recibir respuestas generadas por un motor de inteligencia artificial.',
              textAlign: TextAlign.justify,
            ),
          )
        ],
      ),
      SizedBox(height: 10,),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image(
            image: AssetImage('assets/gt.png'),
            width: 100,
          ),
          Image(
            image: AssetImage('assets/bing.png'),
            width: 100,
          )
        ],
      ),
      SizedBox(height: 10,),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Text(
              'Con esta herramienta, podrás plantearle preguntas a tu docente acerca de cualquier tema que hayas abordado.',
              textAlign: TextAlign.justify,
            ),
          )
        ],
      ),
      SizedBox(height: 10,),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image(
            image: AssetImage('assets/what.webp'),
            width: 120,
          ),
        ],
      ),
      SizedBox(height: 10,),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Text(
              'Con esta herramienta, podrás realizar búsquedas en internet para consultar información adicional sobre diversos temas o resolver cualquier inquietud que puedas tener.',
              textAlign: TextAlign.justify,
            ),
          )
        ],
      ),
      SizedBox(height: 10,),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image(
            image: AssetImage('assets/gg.png'),
            width: 100,
          ),
        ],
      ),
    ]
    
  );
}


