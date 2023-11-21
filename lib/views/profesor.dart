// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sized_box_for_whitespace, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:trabajo/views/home.dart';
import 'package:trabajo/widgets/colores.dart';

class ProfesorPage extends StatefulWidget {
  const ProfesorPage({super.key});

  @override
  State<ProfesorPage> createState() => _ProfesorPageState();
}

class _ProfesorPageState extends State<ProfesorPage> {
//controladores de formulario
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.all(0.0),
        child: SingleChildScrollView(
          child: Column(
          children: [
            ClipPath(
              clipper: CurveContainer(),
              child: Container(
                width: double.infinity,
                height: screenHeight*0.4,
                decoration: BoxDecoration(
                color: AppColors.primaryColor
              ),
              child: Center(
                child: Text('BIENVENIDA PROFE', 
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold
                  ),
                ),
              ),
              ),
            ),
            Container(
              width: double.infinity,
              height: screenHeight*0.6,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(height: 80,),
                  Padding(
                    padding: EdgeInsets.all(20.0),
                    child: Column(
                      children: [
                        TextField(
                          controller: _usernameController,
                          decoration: InputDecoration(
                            labelText: 'USUARIO',
                            border: UnderlineInputBorder()
                          ),
                        ),
                        SizedBox(height: 30,),
                        TextField(
                          controller: _passwordController,
                          decoration: InputDecoration(
                            labelText: 'CONTRASEÑA',
                            border: UnderlineInputBorder()
                          ),
                          obscureText: true,
                        ),
                        SizedBox(height: 50,),
                        ElevatedButton(
                          onPressed: (){

                          }, 
                          child: Text('INICIAR SESION', style: TextStyle(fontSize: 20),),
                          style: ElevatedButton.styleFrom(
                            fixedSize: Size(250, 50),
                            backgroundColor: AppColors.primaryColor,
                            shape:  RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0)
                            )
                          ),
                        )
                      ],
                    )
                  )
                ],
              ),
            ),
          ],
        ),
        ),
      )
    );
  }
}