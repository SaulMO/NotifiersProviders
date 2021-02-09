import 'package:flutter/material.dart';
import 'package:flutter_practica3/providers/heroes.dart';
import 'package:flutter_practica3/providers/villain.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //Instanciar una instancia hacia la clase Heroes que es un provider
    final hero = Provider.of<Heroes>(context);
    final villain = Provider.of<Villain>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text('Test Provider'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(hero.getHeroe,
              style: TextStyle(color: hero.color, fontSize: 20.0)),
          Text(villain.getVillain,
              style: TextStyle(color: villain.color, fontSize: 20.0)),
        ],
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          FloatingActionButton(
            child: Icon(Icons.add_box),
            backgroundColor: Colors.grey,
            onPressed: () {
              hero.setHeroe = 'Batman';
              villain.setVillain = 'Pingüino';
            },
          ),
          FloatingActionButton(
            child: Icon(Icons.account_box_outlined),
            backgroundColor: Colors.black,
            onPressed: () {
              hero.setHeroe = 'Thor';
              villain.setVillain = 'Loki';
            },
          )
        ],
      ),
    );
  }
}
