import 'package:flutter/material.dart';
import 'column.dart';
import 'row.dart';
import 'stack.dart';
import 'container.dart';

void main() {
  runApp(
      EjemploContainer()
  );
}

class MiApp extends StatefulWidget {

  String nuevaTarea;

  MiApp( this.nuevaTarea );

  @override
  State<MiApp> createState() {
    return StateMiApp();
  }

}

class StateMiApp extends State<MiApp> {

  List<String> tareas;

  @override
  void initState() {
    super.initState();
    print('initState MiApp');

    tareas = [
      'Hacer el desayuno',
      'Salir a trotar',
      'Ver una pelicula',
    ];
  }

  @override
  Widget build(BuildContext context) {
    print('build MiApp');

    return MaterialApp(
      title: 'MiApp',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Hola'),
        ),
        body: Container(
          height: 50.0,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, position) {
              return Tarea( position.toString() );
            },
          )
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: (){

            setState( () {

              tareas.add(widget.nuevaTarea);

              print(tareas.length);
            });

          },
        ),
      ),
    );
  }

}

class Tarea extends StatelessWidget {
  String tarea;

  Tarea( this.tarea ) {}

  @override
  Widget build(BuildContext context) {

    return GestureDetector(
      child: Card(
        child: Center(
          child: Padding(
            padding: EdgeInsets.all(5.0),
            child: Text(tarea)
          ),
        ),
      ),
      onTap: () {
        print('Click en la tarea $tarea');
      },
      onDoubleTap: () {
        print('Doble click en la tarea $tarea');
      },
      onLongPress: () {
        print('Long click en la tarea $tarea');
      },
    );
  }

}
