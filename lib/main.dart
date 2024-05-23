import 'package:flutter/material.dart';
import 'Principal.dart';
import 'map1.dart';
import 'map2.dart';
import 'map3.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Rotas nomeadas',
        initialRoute: '/',
        routes: {
          '/': (context) => Principal(),
          '/segunda': (context) => const map1(),
          '/terceira': (context) => const map2(),
          '/quarta': (context) => const map3(),
        }
    );
  }
}