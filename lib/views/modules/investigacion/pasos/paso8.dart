// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:trabajo/widgets/contenido.dart';
import 'package:trabajo/widgets/header.dart';

class Paso8 extends StatelessWidget {
  const Paso8({super.key});

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenwidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Column(
        children: [
//contenedor del header
          HeaderContainer3(txt: '8'),
//contenedor de conetido
          Container(
            width: screenwidth*0.9,
            height: screenHeight*0.86,
            child: ListView(
              children: [
                Widget_titulo('PAUTAS PARA ELABORAR UN TRABAJO DE GRADO'),
                SizedBox(height: 10,),
                Widget_url('https://drive.google.com/file/d/14XRoNmv0YtFH1Lgnmhp2zbQ7PbBf5umZ/view?usp=sharing', 'pdf.png', 100),
                SizedBox(height: 30,),
                Widget_titulo('NORMAS APA'),
                SizedBox(height: 10,),
                Widget_url('https://drive.google.com/file/d/1sinDQ7d96FLyUaO0qIXD6qst97hyeT7N/view?usp=sharing', 'pdf.png', 100),
                SizedBox(height: 30,),
                Widget_titulo('FORMATO PARA INFORME DE TRABAJO FINAL'),
                SizedBox(height: 10,),
                Widget_url('https://docs.google.com/document/d/1gPrISuqljHBCf8ODVuBzOhwjlJemViRN/edit?usp=sharing&ouid=115717897741373098050&rtpof=true&sd=true', 'palabra.png', 100),
                SizedBox(height: 30,)
              ],
            ),
          )
        ],
      ),
    );
  }
}