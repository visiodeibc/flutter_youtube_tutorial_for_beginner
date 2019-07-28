import 'package:flutter/material.dart';

// tutorial link: www.youtube.comwatchv=GLSG_Wh_YWc&t=8440s
import 'product_manager.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('EasyList'),
        ),
        body:ProductManager(),
      ),
    );
  }
}
