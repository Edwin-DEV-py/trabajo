// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:trabajo/widgets/colores.dart';
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
                Widget_url('https://www.dropbox.com/scl/fi/dqtikyhixekccbimw6jce/1.-Pautas_Elaboraci-n_Trabajos_de_Grado..pdf?rlkey=hmz3whwucwe5oz168yz0duh9h&dl=0', 'pdf.png', 100),
                SizedBox(height: 30,),
                Widget_titulo('NORMAS APA'),
                SizedBox(height: 10,),
                Widget_url('https://www.dropbox.com/scl/fi/j4v97gfzfsauvn7s20yqs/Norma-APA-07-abreviada-DHFI-USTA.pdf?rlkey=rtdcokgvuky88ejlh2pkz6w72&dl=0', 'pdf.png', 100),
                SizedBox(height: 30,),
                Widget_titulo('FORMATO PARA INFORME DE TRABAJO FINAL'),
                SizedBox(height: 10,),
                Widget_url('https://www.dropbox.com/scl/fi/b2murasyayug40ts40wcw/Formato_informe_final_trabajo_grado.docx?rlkey=1myjwh21g6g7ckh4nttcb1lq1&dl=0', 'palabra.png', 100),
                SizedBox(height: 30,),
                btnModulo2_url('PRUEBA POSTETST', AppColors.primaryColor, 'assets/prueba.png', 'https://forms.gle/djGH13t9bBFz44rj7'),
                SizedBox(height: 30,)
              ],
            ),
          )
        ],
      ),
    );
  }
}