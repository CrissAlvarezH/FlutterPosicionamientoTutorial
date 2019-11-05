import 'package:flutter/material.dart';
import 'caja.dart';

class EjemploRow extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Row"),
        ),
        body: Container(
          height: double.infinity,
          color: Colors.black,

          child: Row(

            mainAxisAlignment: MainAxisAlignment.spaceAround,
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.end,
            verticalDirection: VerticalDirection.down,

            children: <Widget>[
              Caja( Colors.amber, 1, 100.0 ),

              Align(
                alignment: Alignment.center,
                child: Caja( Colors.deepPurple, 2, 100.0 ),
              ),

              Caja( Colors.amber, 3, 100.0 ),
            ],
          ),

        ),
      ),
    );
  }

}

