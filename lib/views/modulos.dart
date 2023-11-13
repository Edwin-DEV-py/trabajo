// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:trabajo/views/modules/investigacion/investgacion.dart';
import 'package:trabajo/widgets/colores.dart';

class ModulosPage extends StatelessWidget {
  
  const ModulosPage({super.key});

//widget de boton de modulo

  Widget btnModulo(String txt, Color color, VoidCallback onPressed){
    return ElevatedButton(
      onPressed:onPressed, 
      child: Text(txt),
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
                      Icon(Icons.exit_to_app_outlined,
                        size: 35,
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
            child: Scrollbar(
              child: ListView(
                  children: [
                    btnModulo('INVESTIGACION', AppColors.primaryColor, () => Get.to(()=>InvestigacionModulo(), transition: Transition.rightToLeft, duration: Duration(milliseconds: 300)))
                  ],
                ),
            )
          )
        ],
      ),
    );
  }
}