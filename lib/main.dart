import 'package:app_todo/segunda_tela.dart';
import 'package:flutter/material.dart';
import 'package:app_todo/primeira_tela.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      
      initialRoute: '/',
      routes: {'/':(context) => PrimeiraTela(),
      '/segunda':(context) => SegundaTela(),
      },
    );
  }
}

