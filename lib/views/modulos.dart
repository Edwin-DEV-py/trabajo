// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last, sized_box_for_whitespace, non_constant_identifier_names, use_build_context_synchronously, unrelated_type_equality_checks
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:trabajo/views/contacto.dart';
import 'package:trabajo/views/modules/investigacion/investgacion.dart';
import 'package:trabajo/widgets/colores.dart';
import 'package:trabajo/widgets/contenido.dart';

class ModulosPage extends StatelessWidget {
  
  const ModulosPage({super.key});

//widget de boton de modulo

  Widget btnModulo(String txt, Color color, VoidCallback onPressed){
    return ElevatedButton(
      onPressed:onPressed, 
      child: Text(txt, style: TextStyle(color: Colors.white),),
      style: ElevatedButton.styleFrom(
        fixedSize: Size(250, 60),
        backgroundColor: color,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0)
        )
      ),
    );
  }

  Widget btnModulo_shared(String txt, Color color, VoidCallback onPressed, BuildContext context){
    return ElevatedButton(
      onPressed:() async{
        final prefs = await SharedPreferences.getInstance();
        final acpt = prefs.getBool('pretest');
        if(acpt==true){
          Get.to(()=>InvestigacionModulo(), transition: Transition.rightToLeft, duration: Duration(milliseconds: 300));
        }else{
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text('No has hecho el pretest'),
              duration: Duration(seconds: 2),
            ),
          );
        }
      }, 
      child: Text(txt, style: TextStyle(color: Colors.white),),
      style: ElevatedButton.styleFrom(
        fixedSize: Size(250, 60),
        backgroundColor: color,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0)
        )
      ),
    );
  }


  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
//contenedor de header
          Container(
            width: double.infinity,
            height: screenHeight*0.12,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: EdgeInsets.all(0.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        onPressed: (){
                          Navigator.pushNamed(context, '/login');
                        }, 
                        icon: Icon(
                          Icons.home_outlined,
                          size: 35,
                        )
                      ),
                      Text('MODULOS', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
                      IconButton(
                        onPressed: (){
                          Navigator.pushNamed(context, '/login');
                        }, 
                        icon: Icon(
                          Icons.exit_to_app_outlined,
                          size: 35,
                        ),
                      ),
                    ],
                  ),
                ),
                Divider(
                  color: Colors.black,
                  thickness: 2,
                )
              ],
            )
          ),
//contenedor de los modulos
          Container(
            width: 250,
            height: screenHeight * 0.88,
            child: ListView(
                  children: [
                    Text('No podrás acceder al contenido del módulo de investigación sin haber completado previamente la prueba pretest.', textAlign: TextAlign.center,),
                    SizedBox(height: 10,),
                    btnModulo2_url_shared_preferences('PRUEBA PRETEST', AppColors.primaryColor,'assets/prueba.png', 'https://forms.gle/WKC6fXDuBJqY68EA7'),
                    SizedBox(height: 30,),
                    Text('PRESIONA ESTE BOTON PARA ACCEDER A LOS PASOS DE INVESTIGACION', textAlign: TextAlign.center,),
                    SizedBox(height: 10,),
                    btnModulo_shared('INVESTIGACION', AppColors.primaryColor, () => Get.to(()=>InvestigacionModulo(), transition: Transition.rightToLeft, duration: Duration(milliseconds: 300)),context),
                    SizedBox(height: 30,),
                    video_show('Wx5UhVHthVw'),
                    SizedBox(height: 30,),
                    Image(image: AssetImage('assets/imgcompe.jpg'),height: 150,),
                    SizedBox(height: 30,),
                    btnModulo2_url('JUEGO DE PREGUNTAS', AppColors.primaryColor,'assets/rompecabezas.png', 'https://www.cerebriti.com/juegos-de-ciencias/preguntas-de-investigacion'),
                    SizedBox(height: 30,),
                    btnModulo2('CONTACTO', AppColors.primaryColor, () => Get.to(()=>Contatco(), transition: Transition.leftToRight, duration: Duration(milliseconds: 300)),'assets/comunicar.png'),
                    SizedBox(height: 30,),
                  ],
                ),
            )
        ],
      ),
    );
  }
}