import 'package:flutter/material.dart';

class EjemploContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Column'),
        ),

        // Por defecto el ancho y el alto son double.infinity para ocupar todo
        body: Container(
          width: 250.0,
          height: 250.0,

//          color: Colors.yellow,

          margin: EdgeInsets.all(30.0),
//          padding: EdgeInsets.symmetric( horizontal: 40.0 ),

          // Las coordenadas x, y van de -1 a 1
          alignment: Alignment(-0.5, 0.0),
//          alignment: Alignment.bottomLeft,

          // Respeta las constraints aunque ya tengo el alto y ancho definido
//          constraints: BoxConstraints(
//            maxWidth: 100.0,
//            maxHeight: 200.0,
//            minHeight: 40.0,
//            minWidth: 40.0,
//          ),

          // Se exapande hasta el ancho y alto puesto, o sin ancho y alto pues todoo
//          constraints: BoxConstraints.expand(
//            height: 300.0,
//            width: 200.0
//          ),

          decoration: BoxDecoration(
            // Si el Container ya tiene un color lanzará error
            color: Colors.amber,

//            gradient: LinearGradient(
//              colors: <Color>[ Colors.red, Colors.green, Colors.deepPurple ],
//              begin: Alignment.center,
//              end: Alignment.centerRight,
//            ),
//            gradient: RadialGradient(
//              colors: <Color>[ Colors.green, Colors.red ],
//              center: Alignment(0.5, 0.5),
//              radius: 1.0,
//            ),

            // Es un degradado circular, como un compas dando la vuelta
//            gradient: SweepGradient(
//              colors: [ Colors.green, Colors.red ],
//            )

              // Bordes en todos los lados
            border: Border.all(
              color: Colors.green,
              width: 20.0,
              style: BorderStyle.solid
            ),
              // Bordes individuales
//            border: Border(
//              left: BorderSide(
//                color: Colors.green,
//                width: 10.0,
//                style: BorderStyle.solid // none hace que sea transparente pero ahí está el borde
//              ),
//              bottom: BorderSide(
//                color: Colors.red,
//                width: 20.0,
//              ),
//              right: BorderSide(
//                color: Colors.deepPurple,
//                width: 4.0,
//              ),
//              top: BorderSide(
//                color: Colors.teal,
//                width: 10.0,
//              )
//            ),
            
//            borderRadius: BorderRadius.circular( 25.0 ),
//            borderRadius: BorderRadius.horizontal(
////              left: Radius.circular( 25.0 ),
//              right: Radius.circular( 25.0 ),
//            ),
//            borderRadius: BorderRadius.vertical(
//              top: Radius.circular( 25.0 ),
//              bottom: Radius.circular( 10.0 ),
//            ),
            borderRadius: BorderRadius.only(
              topRight: Radius.circular( 25.0 ),
              bottomRight: Radius.circular( 30.0 ),
              topLeft: Radius.elliptical(20.0, 50.0),
            ),

            boxShadow: <BoxShadow>[
              // Podemos crear varias sobras sin ningun problema, se crea encima de la anterior
              BoxShadow(
                color: Colors.black,
                offset: Offset(40.0, 80.0),
                blurRadius: 20.0,
              ),
              BoxShadow(
                color: Colors.teal,
                offset: Offset(-20.0, -20.0),
                blurRadius: 20.0,
              ),
            ],

            shape: BoxShape.rectangle, // a un circulo no se le puede aplicar border radius

            // Esto es todoo lo que se hablará de imagenes, ya que ese tema merece un video aparte
            image: DecorationImage(
              image: NetworkImage('https://imagenes.canalrcn.com/lomaslike/scarlett-johansson-avengers-endgame-senos-escote-.jpg')
            )

          ),

          child: Text('4asdgSDGF ASDG'),

        ),
      ),
    );
  }

}