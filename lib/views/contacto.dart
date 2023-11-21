// ignore_for_file: sized_box_for_whitespace, prefer_const_constructors

import 'package:flutter/material.dart';


class Contatco extends StatelessWidget {
  const Contatco({super.key});

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
                          Navigator.pop(context);
                        }, 
                        icon: Icon(
                          Icons.home_outlined,
                          size: 35,
                        )
                      ),
                      Text('CONTACTO', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
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
            child: Scrollbar(
              child: ListView(
                children: [
                  Image.asset('assets/profesor.png', height: 150,),
                  SizedBox(height: 10,),
                  Text('MYRIAM GALÁN MUÑOZ', textAlign: TextAlign.center,),
                  SizedBox(height: 30,),
                  Image.asset('assets/gmail.png', height: 120,),
                  SizedBox(height: 10,),
                  Text('mginvestigaaprende@gmail.com', textAlign: TextAlign.center,),
                  Text('myriamsociales19@gmail.com', textAlign: TextAlign.center,),
                  SizedBox(height: 30,),
                  Image(
                    image: AssetImage('assets/what.webp'),
                    height: 150,
                  ),
                  Text('3143200660', textAlign: TextAlign.center,)
                ],
              ),
            ),
          )
        ],
      )
    );
  }
}