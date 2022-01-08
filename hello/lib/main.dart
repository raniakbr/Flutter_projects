import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Material(
        child: Center(
            child: Text(
          'Hello World!',
          style: TextStyle(fontSize: 32, color: Colors.white),
        )),
        color: Colors.green),
  ));
}
