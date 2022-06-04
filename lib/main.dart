import 'package:examen/clima.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Botones',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: PantallaInicio(),
    );
  }
}
class PantallaInicio extends StatefulWidget {

  @override
  _PantallaInicioState createState() => _PantallaInicioState();
}
class _PantallaInicioState extends State<PantallaInicio> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _boton("MX",context),
                _boton("USA",context)
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _boton("GER",context),
                _boton("CAN",context)
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _boton("FRAN",context),
              ],
            )
          ],
        ),
      ),
    );
  }

}
Widget _boton(String texto,BuildContext context) {
  return RaisedButton(
    child:Text(texto, style: TextStyle(color: Colors.white),),
    color: Colors.red,
    elevation: 20,
    padding: EdgeInsets.all(50),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10.0),
      side: BorderSide(color: Colors.deepOrange),
    ), // Dentro del widget `FirstRoute`
      onPressed: () {
        Navigator.push(
          context,
           MaterialPageRoute(builder: (context) =>  WeatherApp(texto,context)),
        );
      }
  );
}