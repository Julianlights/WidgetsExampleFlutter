import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'dashboardview.dart';

void main() => runApp(MyApp());

/// This Widget is the main application widget.
class MyApp extends StatelessWidget {
  static const String _title = 'Homework Widget!';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(primarySwatch: Colors.amber),
        title: _title,
        home: Scaffold(
          appBar: AppBar(title: const Text(_title)),
          body: MyStatelessWidget(),
        ),
        initialRoute: "/",
        routes: {
          '/dashboardview': (context) => DashboardMenu(),
        }
    );
  }
}

/// This is the stateless widget that the main application instantiates.
class MyStatelessWidget extends StatelessWidget {
  MyStatelessWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Card(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Image.asset("assets/images/fondo1.jpg"),
            const ListTile(
              title: Text('Animacion ', style: TextStyle(color: Colors.brown),),
              subtitle: Text('Descripcion Descripcion Descripcion Descripcion Descripcion Descripcion'),
            ),
            ButtonBar(
              children: <Widget>[
                FlatButton(
                  child: const Text('Ver mas..->', style: TextStyle(color: Colors.cyan),),
                  onPressed: () {
                    Navigator.pushNamed(context, "/dashboardview");
                  },
                ),
              ],
            ),
          ],
        ),
        //clipBehavior: Clip.antiAliasWithSaveLayer,
      ),
       );
  }
}