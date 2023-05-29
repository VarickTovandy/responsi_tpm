import 'package:flutter/material.dart';
import 'package:responsi/pages/home.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'CNN App',
    theme: ThemeData(
      primarySwatch: Colors.red,
    ),
    home: MyHomePage(),
  ));
}

