import 'package:flutter/material.dart';
import 'package:app/screens/dashboard.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) { 

    const Map<String, Color> ColorPallete = {
    'primary': const Color.fromRGBO(255, 143, 0, 1),
    'secondary': const Color.fromRGBO(98, 60, 234, 1),
    'terciary': const Color.fromRGBO(201, 100, 128, 1),
    'text': const Color.fromRGBO(35, 36, 37, 1),
    'background' : const Color.fromRGBO(200, 200, 200, 1)
  };

    return MaterialApp(
      title: 'Meu App Ola Mundo',
      home: dashboard(colorPallete: ColorPallete,),
    );
  }
}