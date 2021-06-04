import 'package:ArijePhyto/screens/welcome/signup.dart';
import 'package:flutter/material.dart';

import 'screens/welcome/welcome_screen.dart';
import 'theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: lightThemeData(context),
      home: signup(),
    );
  }
}
