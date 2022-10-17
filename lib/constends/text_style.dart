import 'package:flutter/material.dart';

Widget refractedText(text,Color color,{double size=20,FontWeight weight = FontWeight.normal}) {
  return Text(
    text,
    style:  TextStyle(
        fontSize: size, fontWeight: weight, color: color),
  );
}

