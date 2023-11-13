// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:trabajo/views/home.dart';
import 'package:trabajo/views/login.dart';
import 'package:trabajo/views/modules/investigacion/investgacion.dart';
import 'package:trabajo/views/modulos.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/':(context) => HomePage(),
        '/login':(context) => LoginPage(),
        '/modulos':(context) => ModulosPage(),
        '/investigacion':(context) => InvestigacionModulo()
      },
    );
  }
}
