// Copyright 2018 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class ThemeColors {
  // ThemeColors._();
  static const Color white = Color(0xFFFFFFFF);
  static const Color charcoal = Color(0xFF264653);
  static const Color persianGreen = Color(0xFF2A9D8F);
  static const Color orangeYelloCrayola = Color(0xFFE9C46A);
  static const Color sandyBrown = Color(0xFFF4A261);
  static const Color burntSienna = Color(0xFFE76F51);
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DaysSince',
      theme: ThemeData(
        // Define the default brightness and colors.
        brightness: Brightness.dark,
        primaryColor: Colors.lightBlue[800],
        accentColor: Colors.cyan[600],

        // Define the default font family.
        fontFamily: 'Poppins',

        // Define the default TextTheme. Use this to specify the default
        // text styling for headlines, titles, bodies of text, and more.
        textTheme: TextTheme(
          // headline6: TextStyle(fontWeight: FontWeight.bold, color: ThemeColors.primary),
        ),
      ),
      home: MyHomePage(
        title: 'DaysSince.',
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final String title;

  MyHomePage({Key key, @required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ThemeColors.white,
      appBar: AppBar(
        title: Text(
          title,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: ThemeColors.white,
          ),
        ),
        backgroundColor: ThemeColors.burntSienna,
        centerTitle: true,
      ),
      body: Center(
        child: Container(
          child: Text(
            'Text with a background color',
          ),
        ),
      ),
    );
  }
}