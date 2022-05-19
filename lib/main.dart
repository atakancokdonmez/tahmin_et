import 'package:flutter/material.dart';
import 'package:tahmin_et/giris.dart';
import 'package:tahmin_et/tahmin_baslangici.dart';
import 'package:tahmin_et/tahmin_ekrani.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tahmin Et',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Giris(),
    );
  }
}




