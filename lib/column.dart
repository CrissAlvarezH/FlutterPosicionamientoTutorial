import 'package:flutter/material.dart';
import 'caja.dart';

class EjemploColumn extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Column"),
        ),
        body: Container(
          width: double.infinity,
          color: Colors.black,

          child: Column(

            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            verticalDirection: VerticalDirection.down,

            children: <Widget>[

                Caja( Colors.amber, 1, 100.0 ),

                Flexible(
                  fit: FlexFit.loose,
                  flex: 50,
                  child: Caja( Colors.deepPurple, 2, 100.0 ),
                ),

                Expanded(
                  flex: 25,
                  child: Caja( Colors.amber, 3, 100.0 ),
                ),

                Expanded(
                  flex: 25,
                  child: Caja( Colors.deepPurple, 4, 100.0 ),
                ),
            ],
          ),

        ),
      ),
    );
  }

}


