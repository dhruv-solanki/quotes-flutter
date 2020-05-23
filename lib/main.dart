import 'package:flutter/material.dart';
import 'package:quoteflutter/screens/QuoteScreen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Quotes',
      home: QuoteScreen(),
    );
  }
}


