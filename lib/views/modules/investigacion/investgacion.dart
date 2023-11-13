// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:trabajo/widgets/header.dart';

class InvestigacionModulo extends StatelessWidget {
  const InvestigacionModulo({super.key});

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
//contenedor de header
          HeaderContainer(),
//contenedor de los modulos
          Container(
            width: 250,
            height: screenHeight * 0.88,
            child: Scrollbar(
              child: ListView(
                  children: [
                  ],
                ),
            )
          )
        ],
      ),
    );
  }
}