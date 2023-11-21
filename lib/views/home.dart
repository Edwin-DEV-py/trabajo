// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:trabajo/views/login.dart';
import 'package:trabajo/widgets/colores.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
//contenedor de la imagen
          ClipPath(
            clipper: CurveContainer(),
            child: Container(
            width: double.infinity,
            height: screenHeight*0.6,
            decoration: BoxDecoration(
              color:Colors.black
            ),
            child: Image(
              image: AssetImage('assets/home.jpg'),
              fit: BoxFit.cover,
            ),
          )
          ),
//contenedor del boton
          Container(
            width: double.infinity,
            height: screenHeight*0.4,
            decoration: BoxDecoration(
              color:Colors.white
            ),
            child: Center(
              child: Wrap(
                alignment: WrapAlignment.center,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'BIENVENIDO A MGINVESTIGAAPRENDE',
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold
                        ),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(height: 15,),
                      Text(
                        'MYRIAM GALÁN MUÑOZ',
                        style: TextStyle(
                          fontSize: 18,
                          color: Color.fromARGB(255, 172, 172, 172)
                        ),
                      ),
                      SizedBox(height: 25,),
                      ElevatedButton(
                        onPressed: (){
                          Get.to(()=> LoginPage(),
                            transition: Transition.circularReveal,
                            duration: Duration(seconds: 1)
                          );
                        }, 
                        child: Text(
                          'INICIAR',
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.white
                          ),
                        ),
                        style: ElevatedButton.styleFrom(
                          fixedSize: Size(220,50),
                          backgroundColor: AppColors.primaryColor,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0)
                          )
                        ),
                      )
                    ],
                  ),
                ],
              ),
            )
          ),
        ],
      ),
    );
  }
}

//darle curva al contenedor
class CurveContainer extends CustomClipper<Path>{
  @override
  Path getClip(Size size){
    double w = size.width;
    double h = size.height;
    final path=Path();
    path.lineTo(0, h);
    path.quadraticBezierTo(
      w*0.5, 
      h-60, 
      w, 
      h
    );
    path.lineTo(w, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper){
    return false;
  }
}