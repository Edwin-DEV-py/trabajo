// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, non_constant_identifier_names, no_leading_underscores_for_local_identifiers, unused_element, sized_box_for_whitespace, sort_child_properties_last, use_build_context_synchronously, avoid_print


import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:trabajo/widgets/colores.dart';
import 'package:trabajo/widgets/video_view.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';



Widget Widget_titulo(String txt){
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Expanded(
        child: Title(color: Colors.black, child: Text(txt, style: TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.bold
        ), textAlign: TextAlign.center,)),
      )
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

Widget Widget_url(String txt, String img, double tamano){

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
            image: AssetImage('assets/$img'),
            fit: BoxFit.cover,
            width: tamano,
          ),
        ),
      ],
    );
}


Widget Widget_url_activities(String txt){

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
          child: Column(
            children: [
              Text('ENVIO DE ACTIVIDADES', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
              SizedBox(height: 10,),
              Image(
              image: AssetImage('assets/lista.png'),
              fit: BoxFit.cover,
              height: 150,
            ),
            ],
          )
        ),
      ],
    );
}

Widget Widget_url_text(String url){

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
        Expanded(
          child: GestureDetector(
          onTap: () {
            _launchURL(url);
          },
          child:Text(url, textAlign: TextAlign.center, style: TextStyle(color: Colors.blue),)
          ),
        )
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
  _launchURL(String url) async {
  if (!await launchUrl(Uri.parse(url))) {
    throw 'No se pudo abrir la URL: $url';
  }else{
      await launchUrl(Uri.parse(url));
    }
  }

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
          Widget_url('https://chat.openai.com/', 'gt.png', 100),
          Widget_url('https://www.bing.com/new?cc=es', 'bing.png', 100),
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
          Widget_url('https://www.google.com/', 'gg.png', 100)
        ],
      ),
    ]
    
  );
}

Widget Widget_quiz(String url){

  _launchURL(String url) async {
  if (!await launchUrl(Uri.parse(url))) {
    throw 'No se pudo abrir la URL: $url';
  }else{
      await launchUrl(Uri.parse(url));
    }
  }

  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Container(
        width: 250,
        height: 180,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset('assets/quizas.png', width: 100,)
              ],
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: (){
                _launchURL(url);
              },
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Evalúa tus Conocimientos', style: TextStyle(
                    fontSize: 17,
                    color: Colors.white
                  ), textAlign: TextAlign.center,)
                ],
              ),
              style: ElevatedButton.styleFrom(backgroundColor: AppColors.primaryColor, fixedSize: Size(250,60)),
            ),
          ],
        )
      )
    ],
  );
}


