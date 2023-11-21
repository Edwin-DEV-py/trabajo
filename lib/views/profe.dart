// ignore_for_file: prefer_const_constructors, sort_child_properties_last, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:trabajo/views/modulos.dart';
import 'package:trabajo/widgets/colores.dart';
import 'package:trabajo/widgets/contenido.dart';

class ProfeView extends StatelessWidget {
  const ProfeView({super.key});

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenwidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Column(
        children: [
          Container(
            width: screenwidth,
            height: screenHeight,
            child: ListView(
              children: [
                Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Column(
                    children: [
                      Image(image: AssetImage('assets/advertencia.png'), height: 200,),
                      SizedBox(height: 10,),
                      Widget_titulo('AVISO IMPORTANTE'),
                      SizedBox(height: 30,),
                      Widget_texto('1.Esta aplicación está diseñada para estudiantes y profesores que abordan temas de investigación en proyectos.'),
                      SizedBox(height: 10,),
                      Widget_texto('2.Los cuestionarios y actividades deben ser personalizados por el docente de acuerdo a su preferencia; se recomienda emplear Google Forms para la creación de cuestionarios y el envío de actividades, utilizando un correo propio del profesor, ya que esto facilita la estructuración. De lo contrario, si no se sigue esta sugerencia, los cuestionarios y actividades se enviarán al correo de la docente creadora de la aplicación.'),
                      SizedBox(height: 10,),
                      Widget_texto('3.Los cuestionarios y el envío de actividades incluidos en esta aplicación están vinculados a un correo electrónico único, lo que significa que solo el propietario de ese correo puede visualizar el envío de actividades y la puntuación de los cuestionarios.'),
                      SizedBox(height: 10,),
                      Widget_texto('4.Para aclarar cualquier duda o inquietud, se puede utilizar los canales de contacto con el propietario de la aplicación.'),
                      SizedBox(height: 30,),
                      Widget_titulo('MGINVESTIGAAPRENDE'),
                      ElevatedButton(
                        onPressed:(){
                          Get.to(()=> ModulosPage(),
                          transition: Transition.zoom,
                          duration: Duration(milliseconds:300)
                        );
                        },
                        child: Text('CONTINUAR', style: TextStyle(color: Colors.white),),
                        style: ElevatedButton.styleFrom(
                          fixedSize: Size(250, 60),
                          backgroundColor: AppColors.primaryColor,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0)
                          )
                        ),
                      ),
                      SizedBox(height: 30,),
                    ],
                  )
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}