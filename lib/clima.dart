import 'dart:math';

import 'package:examen/clima.dart';
import 'package:flutter/material.dart';
// TextStyle widget constant
const TextStyle kstyle = TextStyle(fontSize: 60);
class WeatherApp extends StatelessWidget {
  final String texto;
  late var Temperatura = random();
  WeatherApp(this.texto,BuildContext context);
  String text="";
 final bool isSwitched = false;
  @override
  Widget build(BuildContext context) {
    if(Temperatura > 29 || Temperatura ==30){

      text ="images/sun.jpg";
    }
    else if(Temperatura > 18 && Temperatura <= 29){
      text ="images/cloud.jpg";
    }
    else if(Temperatura <= 10|| Temperatura < 18){
      text="images/frio.jpg";
    }
    String selectedValue = "USA";
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Clima"),
          backgroundColor: Color.fromRGBO(15, 157, 88, 1),
        ),
        body:

        // to center the child widget
        Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
        Text(texto, style: kstyle),
              new Image.asset(
                text,
                width: 200.0,
                height: 240.0,
                fit: BoxFit.cover,
              ),
              Text("${Temperatura}°C",
                style: kstyle,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

int random() {
  int MAX = 100;
  return new Random().nextInt(MAX);
}
List<DropdownMenuItem<String>> get dropdownItems{
  List<DropdownMenuItem<String>> menuItems = [
    DropdownMenuItem(child: Text("USA"),value: "USA"),
    DropdownMenuItem(child: Text("Canada"),value: "Canada"),
    DropdownMenuItem(child: Text("Brazil"),value: "Brazil"),
    DropdownMenuItem(child: Text("England"),value: "England"),
  ];
  return menuItems;
}
