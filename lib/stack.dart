import 'package:flutter/material.dart';
import 'caja.dart';

class EjemploStack extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Stack"),
        ),
        body: Container(
          width: double.infinity,
          height: 400.0,
          color: Colors.black,

          child: Stack(

            alignment: AlignmentDirectional.topStart,
            fit: StackFit.loose,

            children: <Widget>[

              Align(
                alignment: Alignment.bottomLeft,
                child: Caja(Colors.amber, 1, 260.0),
              ),

              Positioned(
                top: -10.0,
                right: 30.0,
                bottom: 30.0,
                left: 50.0,
                child: Caja(Colors.deepPurple, 2, 180.0),
              ),

              Align(
                child: Caja(Colors.teal, 3, 150.0),
              ),

              Caja(Colors.green, 4, 110.0),

            ],
          ),
        ),
      ),
    );
  }
}
