import 'package:flutter/material.dart';
import 'screen.dart';

void main() {
  runApp(PrimeNumbersApp());
}

class PrimeNumbersApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Prime Numbers',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: BilanganPrima(),
    );
  }
}
