import 'package:flutter/material.dart';

class DashboardMenu extends StatefulWidget{
  @override
  DashboardVista createState () => new DashboardVista();
}

class DashboardVista extends State<DashboardMenu> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(title: Text("Detalles"),),
      body: Center(
        child: Card(
          child: Column(
           // mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Image.asset("assets/images/fondo1.jpg"),
            ],
          ),
        ),
      ),
    );
  }
}