import 'dart:math';
import 'package:flutter/material.dart';

// TextStyle widget constant
const TextStyle kstyle = TextStyle(fontSize: 60);
const TextStyle style = TextStyle(fontSize: 20);

class WeatherApp extends StatefulWidget {

  final String texto ;
  final BuildContext context;
  const WeatherApp(this.texto,this.context );

@override
  _WeatherApp createState() => _WeatherApp(texto,context);

}
class _WeatherApp extends State<WeatherApp>{
  final String texto ;
  late var Temperatura = random();
late var Faren ="";
late var grados ="C";
  _WeatherApp(this.texto, BuildContext context);

  String text = "";
  late bool _myValue = false;

  @override
  Widget build(BuildContext context) {
    if (Temperatura > 29 || Temperatura == 30 ) {
      text = "images/sun.jpg";
    }
    else if (Temperatura > 17 && Temperatura <= 29 ) {
      text = "images/cloud.jpg";
    }
    else if (Temperatura <= 10  || Temperatura < 18 ) {
      text = "images/frio.jpg";
    }
    if(Faren!="")
      {
        grados="F";
      }
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Clima"),
          backgroundColor: Color.fromRGBO(15, 157, 88, 1),
          leading: IconButton(
            icon: Icon(Icons.arrow_back, color: Colors.white),
            onPressed: () => Navigator.of(context).pop(),
          ),),
        body:
        // to center the child widget
        Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text("Cambiar a fahrenheit", style: style),
              _boton("Fahrenheit", context),
              Text(texto, style: kstyle),
              new Image.asset(
                text,
                width: 200.0,
                height: 240.0,
                fit: BoxFit.cover,
              ),
              Text("${Temperatura}°$grados",
                style: kstyle,
              ),
            ],
          ),
        ),
      ),
    );
  }
  Widget _boton(String texto,BuildContext context) {
    return TextButton(
        child:Text(texto, style: TextStyle(color: Colors.red)),
        onPressed: () {
            setState(() {calculadora(Temperatura);});
          }

    );
  }


  String calculadora(int a){
 var  b;
   b = (a * 9/5+32) .toString() ;
   Faren ="Si";
    return b;
}
  int random() {
    int MAX = 100;
    return new Random().nextInt(MAX);
  }
}
