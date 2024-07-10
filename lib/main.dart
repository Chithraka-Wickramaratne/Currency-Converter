import 'package:flutter/material.dart';
import 'package:currency_converter/Index.dart'; // Assuming this is a valid import

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Currency Converter',
      home: Index(),
      debugShowCheckedModeBanner: false,
    );
  }
}

 
