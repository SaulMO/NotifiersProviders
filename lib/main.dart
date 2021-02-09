import 'package:flutter/material.dart';
import 'package:flutter_practica3/home_page.dart';
import 'package:flutter_practica3/providers/heroes.dart';
import 'package:flutter_practica3/providers/villain.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => Heroes()),
        ChangeNotifierProvider(create: (context) => Villain())
      ],
      child: MaterialApp(
        initialRoute: '/home',
        routes: {'/home': (context) => HomePage()},
      ),
    );
  }
}
