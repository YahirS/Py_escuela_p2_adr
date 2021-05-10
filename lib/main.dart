import 'package:flutter/material.dart';

void main() => runApp(MiEscuelaApp());

class MiEscuelaApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Mi Escuela',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        //ruta de ventanas
        routes: <String, WidgetBuilder>{
          "/inicio": (BuildContext context) => Inicio(),
          "/empresa": (BuildContext context) => Empresa(),
          "/productos": (BuildContext context) => Productos(),
          "/contacto": (BuildContext context) => Contacto(),
        }, //fin de router
        home: Inicio()); //fin de material
  } // fin de widget
} //fin de class MiEscuela

class Empresa extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: new Text("Empresa"),
      ),
      body: Center(
        child: Text("Seccion Empresa"),
      ),
    ); // fin de scaffold
  } // fin de wigdet empresa
} //fin de empresa

class Productos extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: new Text("Productos"),
      ),
      body: Center(
        child: Text("Seccion Productos"),
      ),
    ); // fin de scaffold
  } // fin de wigdet productos
} //fin de productos

class Contacto extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: new Text("Contacto"),
      ),
      body: Center(
        child: Text("Seccion Contacto"),
      ),
    ); // fin de scaffold
  } // fin de wigdet Contacto
} //fin de Contacto

class Inicio extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: Container(
        padding: EdgeInsets.only(top: 130, bottom: 10, right: 10, left: 10),
        decoration: BoxDecoration(
          color: Colors.indigo,
          image: DecorationImage(image: NetworkImage("https://raw.githubusercontent.com/YahirS/Mis_imagenes/main/vacunas-consejos-peru.jpg"), alignment: Alignment.topCenter),
          child: Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Paddig(
                        padding: EdgeInsets.all(10),
                        child: RaisedButton(
                          color: Colors.blue,
                          shape: new RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
                          onPressed: () {
                            Navigator.pushNamed(context, "/inicio");
                          },
                          child: SizedBox(
                            width: 100,
                            height: 100,
                            child: Center(
                              child: Text("INICIO", textAlign: TextAlign.center, style: TextStyle(color: Colors.indigo, fontWeight: FontWeight.w900)),
                            ), //center
                          ), //fin de SIZED
                        ), //primer boton
                      ) // padding
                    ], //fin de widget colum
                  ), // fin de colum
                ],
              ), //fin de row
            ], //fin de widget
          ),
        ), //fin caja
      ), //fin de container
    ); // fin de scaffold
  } //fin del widget inicio
} // fin de inicio
