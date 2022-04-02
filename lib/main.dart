import 'package:flutter/material.dart';
import 'package:neww/ekranlar/cal%C4%B1sma/cal%C4%B1sma.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Leziz Yemek',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const KayitOl());
  }
}
