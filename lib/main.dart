import 'package:flutter/material.dart';
import 'package:thannidabba/appscreens/welcome.dart';

void main()
{
  runApp(MyApp());
}

class MyApp extends StatelessWidget

{
  @override
  Widget build(BuildContext context) {
  
    return MaterialApp(
      debugShowCheckedModeBanner: true,
      home: welcome(),
    );
  }
}