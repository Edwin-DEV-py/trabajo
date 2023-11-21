// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:trabajo/views/home.dart';
import 'package:trabajo/views/modulos.dart';
import 'package:trabajo/views/profesor.dart';
import 'package:trabajo/widgets/colores.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
//contenedor del color
          ClipPath(
            clipper: CurveContainer(),
            child: Container(
              width: double.infinity,
              height: screenHeight*0.2,
              decoration: BoxDecoration(
              color: AppColors.primaryColor
            ),
            child: Center(
              child: Text('INICIAR SESION', 
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold
                ),
              ),
            ),
            ),
          ),
//contenedor de botones
          Container(
            width: double.infinity,
            height: screenHeight*0.8,
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: (){
                      Get.to(()=> ModulosPage(),
                        transition: Transition.zoom,
                        duration: Duration(milliseconds:300)
                      );
                    }, 
                    child: Image.asset('assets/graduado.png', height: 180,),
                    style: ElevatedButton.styleFrom(
                      shape: CircleBorder(),
                      fixedSize: Size(250, 250),
                      backgroundColor: AppColors.primaryColor
                    ),
                  ),
                  SizedBox(height: 30,),
                  ElevatedButton(
                    onPressed: (){
                      Get.to(()=> ProfesorPage(),
                        transition: Transition.zoom,
                        duration: Duration(milliseconds:300)
                      );
                    }, 
                    child: Image.asset('assets/profesor.png', height: 180,),
                    style: ElevatedButton.styleFrom(
                      shape: CircleBorder(),
                      fixedSize: Size(250, 250),
                      backgroundColor: AppColors.primaryColor
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}