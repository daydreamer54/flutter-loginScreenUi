import "package:flutter/material.dart";
import './screens/exampleui.dart';

void main(){
  runApp(MaterialApp(
    title: 'UI',
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      primarySwatch: Colors.orange
    ),
    home: Index(),
  ));
}